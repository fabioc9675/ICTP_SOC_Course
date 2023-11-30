#!/usr/bin/python
# Defines the UDMA class that provides all the necessary 
# functions to interact with a UDMA server.
# Copyright (C) 2018 INTI
# Copyright (C) 2018 Bruno Valinoti
# Copyright (C) 2020 Werner Florian

from struct import *
import socket

'''
Error codes:
	0 -> Failure
	1 -> Success
	2 -> overflow
	3 -> underflow
	4 -> logging enabled
	5 -> logging disabled
'''

# COMAND CODES
READ_REG          = 0
READ_RAM          = 1
READ_MEM          = 2
READ_FIFO         = 3
###########################
WRITE_REG         = 4
WRITE_RAM         = 5
WRITE_MEM         = 6
WRITE_FIFO        =	7
###########################
UDMA              = 8
SELECT_COMBLOCK   = 9
###########################
LOG               = 255

###########################
# STATUS FLAGS
FAIL		= 0
SUCCESS		= 1
OVERFLOW	= 2
UNDERFLOW	= 3
LOG_ENABLE	= 4
LOG_DISABLE	= 5

BUFFER_SIZE = 4096

def recvall(sock, n):
    # Helper function to recv n bytes or return None if EOF is hit
    data = bytearray()
    while len(data) < n:
        packet = sock.recv(n - len(data))
        if not packet:
            return None
        data.extend(packet)
    return data

class UDMA_CLASS():
	"""A class that manages the communication with an UDMA server

		Attributes
		-------
		ip: str
			the ip of the server to connect to in 'XXX.XXX.XXX.XXX' format

		port: int
			the port of the server

		s: socket
			the tcp connection to the server

		Methods
		-------
		set_ip(ip)
			set the ip
		set_port(port)
			set the port
		disconnect()
			close the socket
		get_ip()
			return the ip
		get_port()
			return the port
		connect()
			connect to the server with the specified ip and port
		close_server()
			send 'quit' to stop the server
		read_reg(reg)
			send the read register command and return the value
		write_reg(reg, data)
			write data to the register
		read_fifo(N)
			return N values from the FIFO
		write_fifo(N, data)
			write N values to the FIFO
		read_ram(addr, length, inc)
			return length values from the RAM starting from addr with an increment of inc
		write_ram( addr, length, inc, data)
			write length values to the RAM starting from addr with an increment of inc
		read_mem(addr, length, inc)
			return length values from memory starting from addr with an increment of inc
		write_mem(addr, length, inc, data)
			write length values to memory starting from addr with an increment of inc
		select_comblock()
			change the selected comblock on the FPGA side
		log()
			disable or enable serial logging
	"""

	def __init__(self, ip, port): 
		'''Always initialize by providing the ip address and port of the UDMA server'''
		self.ip = ip
		self.port = port
	
	def set_ip(self, ip):
		self.ip = ip
	
	def set_port(self, port):
		self.port = port

	def get_ip(self):
		return self.ip
	
	def get_port(self):
		return self.port
	
	def split_pack(self, data, n=250):
		'''Splits a 'data' list into chunks of length <=n
		@param data: Data list to be split
		@param n: Lenght of the chunks
		@returns split: A list of the data chunks
		'''
		split=[data[i*n:(i+1)*n] for i in range((len(data)+n-1)//n)]
		return split

	def disconnect(self):
		"""The quit command which closes the socket
		"""
		try:
			self.s.close()
			return SUCCESS
		except:
			pass
			return FAIL
	
	def connect(self, nTxmax=250, nRxmax=4096):
		self.s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		#Defining maximum number of elements to send before ip fragmentation, default = 250
		self.nTxmax=nTxmax
		self.nRxmax=nRxmax
		try:
			self.s.connect((self.ip, self.port))
			return SUCCESS
		except:
			self.s = 0
			return FAIL

	def close_server(self):
		"""Will close the tcp server on the board and closes the socket.
		"""
		if not self.s:
			return FAIL
		tx_buf  = pack("4s", bytes("quit",'utf-8'))
		self.s.send(tx_buf)
		self.disconnect()

	def read_reg(self, reg):
		"""The x_read_reg command to allow reading registers from the ComBlock
		"""
		if not self.s:
			return FAIL
		tx_buf  = pack("<II",READ_REG, reg)
		self.s.send(tx_buf)
		rx_buf = self.s.recv(2 * 4)
		head = unpack('<II', rx_buf)
		if head[0] == SUCCESS:
			rx_buf = self.s.recv(4)
			rx_dat = unpack('<' + 'I', rx_buf)
			return [head, rx_dat]
		else:
			return [head, 0]

	def read_ram(self, addr, length, inc):
		"""The x_read_ram command to allow reading the RAM of the ComBlock
		"""
		if not self.s:
			return FAIL
		rx_dat = []
		tx_buf = pack("<IIII", READ_RAM, addr, length, inc)   #first data is package type
		self.s.send(tx_buf)
		rx_buf = self.s.recv(2 * 4)
		head = unpack('<II', rx_buf)
		if head[0] == SUCCESS and head[1] > 0:
			rx_buf = recvall(self.s, head[1] * 4)
			data_len = len(rx_buf) 
			rx_dat = unpack('<'+'I' * (data_len // 4), rx_buf)
			return [head, rx_dat]
		else:
			return [head, 0]

	def read_mem(self, addr, length, inc):
		"""The x_read_mem command to allow reading the memory of the SoC
		Note: This is allows complete access to the memory 
		"""
		if not self.s:
			return FAIL
		rx_dat = []
		tx_buf = pack("<IIII", READ_MEM, addr, length, inc)   #first data is package type
		self.s.send(tx_buf)
		rx_buf = self.s.recv(2 * 4)
		head = unpack('<II', rx_buf)
		if head[0] == SUCCESS and head[1] > 0:
			rx_buf = recvall(self.s, head[1] * 4)
			data_len = len(rx_buf) 
			rx_dat = unpack('<'+'I' * (data_len // 4), rx_buf)
			return [head, rx_dat]
		else:
			return [head, 0]

	def read_fifo(self, length):
		"""The x_read_fifo command to allow reading the FIFO of the ComBlock
		"""
		if not self.s:
			return FAIL
		rx_dat = []
		tx_buf = pack("<II", READ_FIFO, length)   #first data is package type
		self.s.send(tx_buf)
		rx_buf = self.s.recv(2 * 4)
		head = unpack('<II', rx_buf)
		if head[0] == SUCCESS and head[1] > 0:
			rx_buf = recvall(self.s, head[1] * 4)
			data_len = len(rx_buf)
			try:
				rx_dat = unpack('<'+'I' * (data_len // 4), rx_buf)
				return [head, rx_dat]
			except BaseException as error:
				head[0] = FAIL
				head[1] = data_len / 4
				return [head, rx_buf]
		else:
			return [head, 0]

	def write_reg(self, reg, data):
		"""The x_write_reg command to allow writing the registers of the ComBlock
		"""
		if not self.s:
			return FAIL
		rx_dat = []
		tx_buf  = pack("<III", WRITE_REG, reg, data)  #first data is package type
		self.s.send(tx_buf)
		head = unpack('<II', self.s.recv(2 * 4))
		return [head, 0]

	def write_ram(self, addr, offset, length, inc, TxData):
		"""The x_write_ram command to allow writing the RAM of the ComBlock
		"""
		if not self.s:
			return FAIL
		dsplit=self.split_pack(TxData, self.nTxmax)
		Errcode=1
		Dlength=0
		offset_val=offset
		for data in dsplit:		
			tx_buf  = pack("<IIII", WRITE_RAM, addr + offset_val, len(data), inc) \
				+ pack('I'*len(data), *data)
			self.s.send(tx_buf)
			EC,DL = unpack('<II', self.s.recv(2 * 4))
			offset_val=offset_val+len(data)
			Errcode=Errcode*EC
			Dlength=Dlength+DL
		return [(Errcode,Dlength), 0]

	def write_mem(self, addr, offset, length, inc, TxData):
		"""The x_write_ram command to allow writing the RAM of the ComBlock
		"""
		if not self.s:
			return FAIL
		dsplit=self.split_pack(TxData, self.nTxmax)
		Errcode=1
		Dlength=0
		offset_val=offset
		for data in dsplit:		
			tx_buf  = pack("<IIII", WRITE_MEM, addr + offset_val, len(data), inc) \
				+ pack('I'*len(data), *data)
			self.s.send(tx_buf)
			EC,DL = unpack('<II', self.s.recv(2 * 4))
			offset_val=offset_val+len(data)
			Errcode=Errcode*EC
			Dlength=Dlength+DL
		return [(Errcode,Dlength), 0]

	def write_fifo(self, length, Txdata):
		"""The x_write_fifo command to allow writing the FIFO of the ComBlock
		"""
		if not self.s:
			return FAIL
		dsplit=self.split_pack(Txdata, self.nTxmax)
		Errcode=1
		Dlength=0
		for data in dsplit:
			tx_buf  = pack("<II", WRITE_FIFO , len(data)) + \
				pack('I'*len(data), *data)
			self.s.send(tx_buf)
			EC, DL = unpack('<II', self.s.recv(2 * 4))
			Errcode=Errcode*EC
			Dlength=Dlength+DL
		return [(Errcode,Dlength), 0]
	
	def select_comblock(self, ID):
		"""Use this command to change the selected ComBlock.  """
		rx_dat = []
		if not self.s:
			return FAIL
		tx_buf  = pack("<II", SELECT_COMBLOCK, ID)
		self.s.send(tx_buf)
		head = unpack('<II', self.s.recv(2 * 4))
		return [head, 0]

	def log(self, flag):
		"""Starts serial logging to debug the transmission and processing of the messages
		"""
		if not self.s:
			return FAIL
		tx_buf  = pack("<II", LOG, flag)  #first data is package type
		self.s.send(tx_buf)
		rx_buf = self.s.recv(4)
		head = unpack("<I", rx_buf)
		return [head, 0]
