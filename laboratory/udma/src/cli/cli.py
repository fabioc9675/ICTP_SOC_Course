#!/usr/bin/python
#
# Copyright (C) 2018 INTI
# Copyright (C) 2018 Bruno Valinoti
# Copyright (C) 2020 Werner Florian

import pathlib, sys, os, cmd2, argparse, tqdm, appdirs
from  udma.udma import UDMA_CLASS
from math import ceil
from cmd2.ansi import style
from time import sleep


intro_big = \
'''
__/\\\________/\\\__/\\\\\\\\\\\\_____/\\\\____________/\\\\_____/\\\\\\\\\____        
 _\/\\\_______\/\\\_\/\\\////////\\\__\/\\\\\\________/\\\\\\___/\\\\\\\\\\\\\__       
  _\/\\\_______\/\\\_\/\\\______\//\\\_\/\\\//\\\____/\\\//\\\__/\\\/////////\\\_      
   _\/\\\_______\/\\\_\/\\\_______\/\\\_\/\\\\///\\\/\\\/_\/\\\_\/\\\_______\/\\\_     
    _\/\\\_______\/\\\_\/\\\_______\/\\\_\/\\\__\///\\\/___\/\\\_\/\\\\\\\\\\\\\\\_    
     _\/\\\_______\/\\\_\/\\\_______\/\\\_\/\\\____\///_____\/\\\_\/\\\/////////\\\_   
      _\//\\\______/\\\__\/\\\_______/\\\__\/\\\_____________\/\\\_\/\\\_______\/\\\_  
       __\///\\\\\\\\\/___\/\\\\\\\\\\\\/___\/\\\_____________\/\\\_\/\\\_______\/\\\_ 
        ____\/////////_____\////////////_____\///______________\///__\///________\///__
'''

intro_small = \
'''
██╗   ██╗██████╗ ███╗   ███╗ █████╗ 
██║   ██║██╔══██╗████╗ ████║██╔══██╗
██║   ██║██║  ██║██╔████╔██║███████║
██║   ██║██║  ██║██║╚██╔╝██║██╔══██║
╚██████╔╝██████╔╝██║ ╚═╝ ██║██║  ██║
 ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝
'''

s_credits = "\n B. Valinoti, W. Florian, L. Garcia - MLAB/ICTP 2023\n"


'''
Error codes:
	0 -> Failure
	1 -> Success
	2 -> overflow
	3 -> underflow
	4 -> logging enabled
	5 -> logging disabled
'''

valid = 'abcdefxABDCEFX0123456789,'

###########################
# STATUS FLAGS
FAIL		= 0
SUCCESS		= 1
OVERFLOW	= 2
UNDERFLOW	= 3
LOG_ENABLE	= 4
LOG_DISABLE	= 5

BUFFER_SIZE = 4096

def tsocket(s):
	"""Defines a new type called socket for the argparse to process.

	Parameters
	----------
	s : str
		The data to parse into the new type socket

	Returns
	-------
	string
		The ip address that is sliced from the string
	int
		The port of the socket
	"""
	try:
		ip, port = s.split(':')
		return ip, int(port)
	except:
		raise argparse.ArgumentTypeError("Enter a valid socket.")

def pdata(s): 
	"""Defines a new type called pdata for the argparse to process

	Parameters
	----------
	s : str
		The data to parse into the new type socket

	Returns
	-------
	list
		The data formatted as a list of numbers or a single int depending on the length
	"""
	try:
		if all([c in valid for c in s]): # it is not a file
			return (1, s.split(','))
		else:
			file = pathlib.Path(s)
			if file.exists():
				return (0, file)
			else:
				del file
				raise argparse.ArgumentError("Invalid file.")
	except:
		raise argparse.ArgumentError("Invalid data format. Only comma separated data accepted 1,2,3 or single data 1.")

def getsize(filename):
	"""Get the size of a file

	Parameters
	----------
	filename : file
		The file from which we want to get the size in lines

	Returns
	-------
	int
		The number of lines in the file
	"""
	count = 0
	for line in open(filename).readlines(): count += 1
	return count

class UDMA_cli(cmd2.Cmd):
	"""Defines the cli class with the extra attributes and functions related to the UDMA app

	Parametersfrom .intro import * basic CLI functionality 

		Returns
		-------
		object
			UDMA_cli instance
	"""
	# Command categories
	CMD_CAT_COMMUNICATION = 'Board communication'
	CMD_CAT_CMB_READ = 'ComBlock Read'
	CMD_CAT_CMB_WRITE = 'ComBlock Write'

	app_name = 'udma'
	app_author = 'W. Florian, B. Valinoti'

	udma = 0

	def __init__(self):
		self.appdirs = appdirs.AppDirs(self.app_name, self.app_author)
		shortcuts = {'?': 'help', '!': 'shell', '$?': 'exit_code'}
		super().__init__(
						persistent_history_file= "cmd2_history.dat",
						shortcuts= shortcuts,
						include_ipy= True
						)
		self.self_in_py = True
		
		self.allow_cli_args = False
		self._set_prompt()
		
		self.intro =  style( intro_small + s_credits + 
			'This CLI application is the first edition of the UDMA on Cmd2. Use -h or --help for more information.', 
			fg=cmd2.Fg['CYAN'], bg=cmd2.Bg['BLACK'], bold=True) 
		self.allow_style = cmd2.ansi.AllowStyle.TERMINAL

	def _set_prompt(self):
		"""Set prompt so it displays the current working directory."""
		self.cwd = os.getcwd()
		self.prompt = cmd2.ansi.style(f'{self.cwd}>', fg= cmd2.Fg['MAGENTA'], bold=True)

	@property
	def history_file(self) -> str:
		if self.appdirs:
			return os.path.join(self.appdirs.user_config_dir, 'history.txt')
		return None

	def do_quit(self, args):
		"""The quit command which closes the app
		"""
		self.poutput ("Exiting.")
		rx_dat = []
		if self.udma:
			try:
				self.udma.close_server()
			except:
				pass
		else: 
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
		return True

	do_exit = do_quit

	socket_paser = argparse.ArgumentParser()
	socket_paser.add_argument('-s', '--socket', type = tsocket, default='192.168.1.10:7', 
	help = 'Specify the port and ip of the remote server.', metavar= 'xxx.xxx.xxx.xxx:port')
	@cmd2.with_category(CMD_CAT_COMMUNICATION)
	@cmd2.with_argparser(socket_paser)
	def do_connect(self, args):
		"""The connect command to allow communication with the board via Ethernet
		"""
		self.poutput("Address: %s" % (args.socket[0]))
		self.poutput("Port:    %s" % (args.socket[1]))
		try:
			self.udma = UDMA(args.socket[0], args.socket[1])
			self.last_result = self.udma.connect()
			return
		except:
			self.udma = 0
			self.last_result = None
			self.perror("Connection refused")
			return

	@cmd2.with_category(CMD_CAT_COMMUNICATION)
	def do_disconnect(self, args):
		"""The disconnect command to close the Ethernet socket.
		"""
		try:
			self.udma.disconnect()
			return
		except:
			self.last_result = None
			self.perror("First stablish a connection using the connect command")
			return

	@cmd2.with_category(CMD_CAT_COMMUNICATION)
	def do_close_server(self, args):
		"""Will close the tcp server on the board and closes the socket.
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		self.udma.close_server()
		return 

	def complete_x_write_mem(self, text, line, begidx, endidx):
		return self.path_complete(text, line, begidx, endidx, path_filter=os.path.isdir)

	complete_x_write_ram = complete_x_write_fifo = complete_x_write_mem

#\textbf{x$\_$read_reg} $<register> [-r <output format>]$
	read_reg_parser = argparse.ArgumentParser()
	read_reg_parser.add_argument('register', type= int, 
		help= 'Use this command to read an specific register from the ComBlock.')
	read_reg_parser.add_argument('-r', '--radix', type=str, metavar = 'd', 
	help='Indicate the radix to be used when showing the value read. d = dec, o = oct, b= bin h= hex ', default='d')
	@cmd2.with_category(CMD_CAT_CMB_READ)
	@cmd2.with_argparser(read_reg_parser)
	def do_x_read_reg(self,args):
		"""The x_read_reg command to allow reading registers from the ComBlock
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		outf= args.radix
		self.poutput("Address: %s" % (args.register))
		self.poutput("format   %s" % (outf))
		head, data = self.udma.read_reg(args.register)
		if head[0] == SUCCESS:
			if outf.lower() == 'b':
				data = bin(data[0])
			elif outf.lower() == 'o':
				data = oct(data[0])
			elif outf.lower() == 'd':
				data = data[0]
			elif outf.lower() == 'h':
				data = hex(data[0])
			else: 
				self.perror('Invalid radix type use b, o, d, h.')
			self.poutput(data)
		else:
			self.perror("Unavailable resource, check ComBlock configuration.")
		self.last_result = [head, data]
		return

#\textbf{x$\_$read_ram} $<addr> <N> <inc> [-r <output format>] [-f <filename>]$
	read_ram_parser = argparse.ArgumentParser()
	read_ram_parser.add_argument('addr', type= int, help= 'Address to read from.')
	read_ram_parser.add_argument('N', type= int, help= 'Number of words to read.')
	read_ram_parser.add_argument('inc', type= int, help= 'Incremet step to use when reading several words.')
	read_ram_parser.add_argument('-r', '--radix', type=str, metavar = 'd', 
		help='Indicate the radix to be used when showing the value read. d = dec, o = oct, b= bin h= hex ', default='d')
	read_ram_parser.add_argument('-f', '--file', type= str, default='',
		metavar='filename', help='Output filename.')
	@cmd2.with_category(CMD_CAT_CMB_READ)
	@cmd2.with_argparser(read_ram_parser)
	def do_x_read_ram(self, args):
		"""The x_read_ram command to allow reading the RAM of the ComBlock
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		outf = args.radix
		self.poutput("N: %s" % (args.N))
		head, data = self.udma.read_ram(args.addr, args.N, args.inc)
		if head[0] == SUCCESS and head[1] > 0:
			data_len = len(data)
			self.poutput(f'Received {data_len} bytes.')
			if outf.lower() == 'b':
				data = [bin(x) for x in data]
			elif outf.lower() == 'o':
				data = [oct(x) for x in data]
			elif outf.lower() == 'h':
				data = [hex(x) for x in data]
			elif outf.lower() == 'd':
				data = data
			else: 
				self.perror('Invalid radix type use b, o, d, h.')
				return
			if args.file.strip():
				with open(args.file, 'a') as output:
					output.write(str(data))
			else:
				self.poutput(data)
		elif head[0] == OVERFLOW:
			self.perror("Read operation exceeds memory bounds, check ComBlock configuration.")
		elif head[0] == FAIL:
			self.perror("Unavailable resource, check ComBlock configuration.")
		self.last_result = [head, data]
		return

#\textbf{x$\_$read_mem} $<addr> <N> <inc> [-r <output format>] [-f <filename>]$
	read_mem_parser = argparse.ArgumentParser()
	read_mem_parser.add_argument('addr', type= int, help= 'Address to read from.')
	read_mem_parser.add_argument('N', type= int, help= 'Number of words to read.')
	read_mem_parser.add_argument('inc', type= int, help= 'Incremet step to use when reading several words.')
	read_mem_parser.add_argument('-r', '--radix', type=str, metavar = 'd', 
		help='Indicate the radix to be used when showing the value read. d = dec, o = oct, b= bin h= hex ', default='d')
	read_mem_parser.add_argument('-f', '--file', type= str, default='',
		metavar='filename', help='Output filename.')
	@cmd2.with_category(CMD_CAT_CMB_READ)
	@cmd2.with_argparser(read_mem_parser)
	def do_x_read_mem(self, args):
		"""The x_read_mem command to allow reading the memory of the SoC
		Note: This is allows complete access to the memory 
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		outf = args.radix
		self.poutput("N: %s" % (args.N))
		head, data = self.udma.read_mem(args.addr, args.N, args.inc)
		if head[0] == SUCCESS and head[1] > 0:
			data_len = len(data)
			self.poutput(f'Received {data_len} bytes.')
			if outf.lower() == 'b':
				data = [bin(x) for x in data]
			elif outf.lower() == 'o':
				data = [oct(x) for x in data]
			elif outf.lower() == 'h':
				data = [hex(x) for x in data]
			elif outf.lower() == 'd':
				data = data
			else: 
				self.perror('Invalid radix type use b, o, d, h.')
				return
			if args.file.strip():
				with open(args.file, 'a') as output:
					output.write(str(data))
			else:
				self.poutput(data)
		elif head[0] == OVERFLOW:
			self.perror("Read operation exceeds memory bounds, check ComBlock configuration.")
		elif head[0] == FAIL:
			self.perror("Unavailable resource, check ComBlock configuration.")
		self.last_result = [head, data]
		return

#\textbf{x$\_$read_fifo} $<N> [-r <output format>] [-f filename]$
	read_fifo_parser = argparse.ArgumentParser()
	read_fifo_parser.add_argument('N', type= int, 
		help='Number of words to read until FIFO empty.')
	read_fifo_parser.add_argument('-r', '--radix', type= str, metavar = 'd', 
		help='Indicate the radix to be used when showing the value read. d = dec, o = oct, b= bin h= hex ', default='d')
	read_fifo_parser.add_argument('-f', '--file', type= str, default='',
		metavar='filename', help='Output filename.')
	@cmd2.with_category(CMD_CAT_CMB_READ)
	@cmd2.with_argparser(read_fifo_parser)
	def do_x_read_fifo(self,args):
		"""The x_read_fifo command to allow reading the FIFO of the ComBlock
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return 
		outf = args.radix.lower()
		self.poutput("N: %s" % (args.N))
		head, rx_dat = self.udma.read_fifo(args.N)
		if head[0] == SUCCESS and head[1] > 0:
			data_len = len(rx_dat)
			if data_len // 4 != args.N :
				self.pwarning(f"Unable to fetch all required values, got {data_len // 4 } before empty.")
			if outf == 'b':
				rx_dat = [bin(x) for x in rx_dat]
			elif outf == 'h':
				rx_dat = [hex(x) for x in rx_dat]
			elif outf == 'o':
				rx_dat = [oct(x) for x in rx_dat]
			elif outf == 'd':
				rx_dat = rx_dat
			else:
				self.perror('Invalid radix type use b, o, d, h.')
			if args.file.strip():
				with open(args.file, 'a') as output:
					output.write(str(rx_dat))
			else:
				self.poutput(rx_dat)
		elif head[0] == UNDERFLOW:
			self.perror("Read operation exceeds memory bounds, check ComBlock configuration.")
		elif head[0] == FAIL:
			self.perror("Unavailable resource, check ComBlock configuration.")
		self.last_result = [head, rx_dat]
		return

#\textbf{x$\_$write_reg} $<register>  <data> [-r <output format>]$
	write_reg_parser = argparse.ArgumentParser()
	write_reg_parser.add_argument('register', type= int, 
		metavar= 'register',
		help= 'Register to write to 0-15.')
	write_reg_parser.add_argument('data', type= str,
		metavar= 'data')
	write_reg_parser.add_argument('-r', '--radix', type=str, metavar = 'd', 
	help='Indicate the radix to be used when showing the value read. d = dec, o = oct, b= bin h= hex ', default='d')
	@cmd2.with_category(CMD_CAT_CMB_WRITE)
	@cmd2.with_argparser(write_reg_parser)
	def do_x_write_reg(self,args):
		"""The x_write_reg command to allow writing the registers of the ComBlock
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		outf = args.radix
		if outf.lower() == 'b':
			data = int(args.data, 2)
		elif outf.lower() == 'o':
			data = int(args.data, 8)
		elif outf.lower() == 'd':
			data = int(args.data, 10)
		elif outf.lower() == 'h':
			data = int(args.data, 16)
		else: 
			self.last_result = rx_dat
			self.perror('Invalid radix type use b, o, d, h.')
			return
		head, rx_dat = self.udma.write_reg(args.register, data)
		if head[0] == FAIL:
			self.perror("Unavailable resource, check ComBlock configuration.")
		self.last_result = [head, rx_dat]
		return 

#\textbf{x$\_$write_ram} $<addr> (<data> | -f) <N> <inc> [-r <output format>]$
	write_ram_parser = argparse.ArgumentParser()
	write_ram_parser.add_argument('addr', type= str, help= 'Address offset.')
	write_ram_parser.add_argument('data', type= pdata,
		help= 'Comma separeted data accepted 1,2,3 or single data 1 or filepath.')
	write_ram_parser.add_argument('N', type= int, help= 'Number of words to write. Ignored when reading from file.')
	write_ram_parser.add_argument('inc', type= int, help= 'Increment step to the address when writing. Ignored when reading from file.') 
	write_ram_parser.add_argument('-r', '--radix', type=str, metavar = 'd', 
		help='Indicate the radix to be used when interpreting the value.', default='d')
	write_ram_parser.add_argument('-s', '--sleep', type=float, metavar = '0', 
		help='Indicate the seconds to sleep after the command or between messages.', default='0')
	@cmd2.with_category(CMD_CAT_CMB_WRITE)
	@cmd2.with_argparser(write_ram_parser)
	def do_x_write_ram(self,args):
		"""The x_write_ram command to allow writing the RAM of the ComBlock
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		outf = args.radix
		if outf.lower() == 'b':
			base = 2
		elif outf.lower() == 'o':
			base = 8
		elif outf.lower() == 'd':
			base = 10
		elif outf.lower() == 'h':
			base = 16
		else:
			self.last_result = rx_dat
			self.perror('Invalid radix type use b, o, d, h.')
			return
		if not args.data[0]: #file
			filename = args.data[1]
			filesize = getsize(filename)
			if (filesize == 0):
				self.perror("Empty file, nothing to read.")
				self.last_result = rx_dat
				return
			else:
				progress = tqdm.tqdm(range(filesize), f"Sending {filename}")
				with open(filename, "r") as f:
					self.poutput(f"Sending {filename}")
					for _ in progress:
						line = f.readline().rstrip()
						if line[0] != '#': # ignore if comment or header
							try:
								addr, data = int(line.split(',')[0], base), int(line.split(',')[1], base)
								head, rx_dat = self.udma.write_ram(addr, 1, 1 , data)
								progress.update(1)
								self.last_result = [head, rx_dat]
								if head[0] == FAIL:
									self.perror("Unavailable resource, check ComBlock configuration.")
									self.last_result = [head, rx_dat]
									return
								elif head[0] == OVERFLOW:
									self.perror("Write operation exceeds memory bounds, check ComBlock configuration.")
									self.last_result = [head, rx_dat]
									return
							except Exception as error:
								self.perror(error)
								self.last_result = [head, rx_dat]
								return
							sleep(args.s)
					#first data is package type
		else:
			head, rx_dat = self.udma.write_ram(int(args.addr, base), args.N, args.inc, args.data)
			self.last_result = [head, rx_dat]
			if head[0] == FAIL:
				self.perror("Unavailable resource, check ComBlock configuration.")
				self.last_result = [head, rx_dat]
				return
			elif head[0] == OVERFLOW:
				self.perror("Write operation exceeds memory bounds, check ComBlock configuration.")
				self.last_result = [head, rx_dat]
				return
			if head[1] != args.N:
				self.last_result = [head, rx_dat]
				self.pwarning(f'Written successfully {head[1]} words.')
				return


#\textbf{x$\_$write_mem} $<addr> (<data> | -f) <N> <inc> [-r <output format>]$
	write_mem_parser = argparse.ArgumentParser()
	write_mem_parser.add_argument('addr', type= int, help= 'Absolute address to write to, ignored when reading from file.')
	write_mem_parser.add_argument('data', type= pdata,
		help= 'Comma separeted data accepted 1,2,3 or single data 1 or file.')
	write_mem_parser.add_argument('N', type= int, help= 'Number of words to write. Ignored when reading from file.')
	write_mem_parser.add_argument('inc', type= int, help= 'Increment step to the address when writing. Ignored when reading from file.') 
	write_mem_parser.add_argument('-r', '--radix', type=str, metavar = 'd', 
		help='Indicate the radix to be used when interpreting the value.', default='d')
	write_mem_parser.add_argument('-s', '--sleep', type=float, metavar = '0', 
		help='Indicate the seconds to sleep after the command or between messages.', default='0')
	@cmd2.with_category(CMD_CAT_CMB_WRITE)
	@cmd2.with_argparser(write_mem_parser)
	def do_x_write_mem(self,args):
		"""The x_write_mem command to allow writing the memory of the SoC
			Note: This function allows access to the whole addressable memory use with caution.
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		outf = args.radix
		if outf.lower() == 'b':
			base = 2
		elif outf.lower() == 'o':
			base = 8
		elif outf.lower() == 'd':
			base = 10
		elif outf.lower() == 'h':
			base = 16
		else: 
			self.perror('Invalid radix type use b, o, d, h.')
			self.last_result = rx_dat
			return
		if not args.data[0]: #file
			filename = args.data[1]
			filesize = getsize(filename)
			if (filesize == 0):
				self.perror("Empty file, nothing to read.")
				self.last_result = rx_dat
				return
			else:
				progress = tqdm.tqdm(range(filesize), f"Sending {filename}")
				with open(filename, "r") as f:
					self.poutput(f"Sending {filename}")
					for _ in progress:
						line = f.readline().rstrip()
						if line[0] != '#': # ignore if comment or header
							try:
								addr, data = int(line.split(',')[0], base), int(line.split(',')[1], base)
								head, rx_dat = self.udma.write_mem(addr, 1, 1, data)
								progress.update(1)
								self.last_result = [head, rx_dat]
								if head[0] != FAIL:
									self.pwarning(f'Written successfully {head[1]} words.')
							except Exception as error:
								self.perror(error)
								self.last_result = [head, rx_dat]
								return
							sleep(args.s)
					#first data is package type
		else:
			head, rx_dat = self.udma.write_mem(int(args.addr, base), args.N, args.inc, data)
			self.last_result = [head, rx_dat]
			if head[1] != args.N:
				self.pwarning(f'Written successfully {head[1]} words.')
			return
		
#\textbf{x$\_$write_fifo} $<data> <N> [-r <output format>]$
	write_fifo_parser = argparse.ArgumentParser()
	write_fifo_parser.add_argument('data', type= pdata,
		help= 'Comma separeted data accepted 1,2,3 or single data 1 or file.')
	write_fifo_parser.add_argument('N', type= int, metavar= 'N', help='Number of words to write')
	write_fifo_parser.add_argument('-r', '--radix', type=str, metavar = 'd', 
		help='Indicate the radix to be used when interpreting the value.', default='d')
	write_fifo_parser.add_argument('-s', '--sleep', type=float, metavar = '0', 
		help='Indicate the seconds to sleep after the command or between messages.', default='0')
	@cmd2.with_category(CMD_CAT_CMB_WRITE)
	@cmd2.with_argparser(write_fifo_parser)
	def do_x_write_fifo(self,args):
		"""The x_write_fifo command to allow writing the FIFO of the ComBlock
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		outf = args.radix
		if outf.lower() == 'b':
			base = 2
		elif outf.lower() == 'o':
			base = 8
		elif outf.lower() == 'd':
			base = 10
		elif outf.lower() == 'h':
			base = 16
		else: 
			self.perror('Invalid radix type use b, o, d, h.')
			self.last_result = rx_dat
			return
		if not args.data[0]: #file
			filename = args.data[1]
			filesize = getsize(filename)
			if (filesize == 0):
				self.perror("Empty file, nothing to read.")
				self.last_result = rx_dat
				return
			else:
				with open(filename, "r") as f:
					self.poutput(f"Sending {filename}")
					for i in tqdm.trange(ceil((filesize)/args.N)):
						try:
							address, data = list(zip(*[f.readline().split(',') for x in range((filesize%100) if (filesize-i*100) < 100 else 100)]))
							head, rx_dat = self.udma.write_fifo(len(data), [int(d, base) for d in data])
							self.last_result = [head, rx_dat]
							if head[0] == FAIL:
								self.perror("Unavailable resource, check ComBlock configuration.")
								self.last_result = [head, rx_dat]
								return
							elif head[0] == OVERFLOW:
								self.perror("Overflow condition active.")
								self.last_result = [head, rx_dat]
								return
							else:
								if head[1] != len(data):
									self.pwarning(f'Written successfully {head[1]} words.')
						except Exception as error:
							self.perror(error)
							self.last_result = [head, rx_dat]
							return
						sleep(args.s)
		else:
			head, rx_dat = self.udma.write_fifo(args.N, [int(d, base) for d in args.data[1]])
			self.last_result = [head, rx_dat]
			if head[0] == FAIL:
				self.perror("Unavailable resource, check ComBlock configuration.")
			elif head[0] == OVERFLOW:
				self.perror("Overflow condition active.")
			if head[1] != args.N:
				self.pwarning(f'Written successfully {head[1]} words.')
			return
	
	select_comblock_parser = argparse.ArgumentParser()
	select_comblock_parser.add_argument('ID', type= int, metavar= 'ID', help='Selected ComBlock ID')
	@cmd2.with_category(CMD_CAT_COMMUNICATION)
	@cmd2.with_argparser(select_comblock_parser)
	def do_select_comblock(self,args):
		"""Use this command to change the selected ComBlock.  """
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		if args.ID < 0:
			self.perror('ID must always be positive.')
			self.last_result = rx_dat
			return
		head, rx_dat = self.udma.select_comblock(args.ID)
		if head[0] == SUCCESS:
			self.last_result = [head, rx_dat]
		else:
			self.perror("ComBlock ID is not valid.")
			self.last_result = [head, rx_dat]
		return 
	
	log_parser = argparse.ArgumentParser()
	log_parser.add_argument('Flag', type= int, metavar= 'Flag', choices=[0, 1], help='Enable (1) or disable (0) serial logging.')
	@cmd2.with_argparser(log_parser)
	@cmd2.with_category(CMD_CAT_COMMUNICATION)
	def do_log(self,args):
		"""Starts serial logging to debug the transmission and processing of the messages
		"""
		rx_dat = []
		if not self.udma:
			self.perror("Missing board connection, open the socket with the <connect> command.")
			self.last_result = rx_dat
			return
		head, rx_dat = self.udma.log(args.Flag)
		self.last_result = [head, rx_dat]
		if head[0] == LOG_ENABLE:
			self.poutput("Logging enabled")
		else:
			self.poutput("Logging disabled")
		return

def main(argv=None) :
	"""Entry point for the application

	Parameters
	----------
	None
	Returns
	-------
	None
	"""
	parser = argparse.ArgumentParser()
	command_help = 'optional command to run, if no command given, enter an interactive shell'
	parser.add_argument('command', nargs= '?', help= command_help)
	arg_help = 'optional arguments for command'
	parser.add_argument('command_args', nargs=argparse.REMAINDER, help=arg_help)
	args = parser.parse_args(argv)
	c = UDMA_cli()
	sys_exit_code = 0
	if args.command:
		c.onecmd_plus_hooks('{} {}'.format(args.command, ' '.join(args.command_args)))
	else:
		sys_exit_code = c.cmdloop()
	return sys_exit_code

if __name__ == '__main__':
	sys.exit(main())
