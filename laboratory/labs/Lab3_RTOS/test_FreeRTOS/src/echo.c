
#include <stdio.h>
#include <string.h>

#include "lwip/inet.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwipopts.h"

#include "xil_printf.h"
#include "FreeRTOS.h"
#include "task.h"

u16_t echo_port = 7;


// This Task is spawned for each incoming connection
void Task_EchoServer(void *p)
{
int sd = (int)p;
int RECV_BUF_SIZE = 128;
char recv_buf[RECV_BUF_SIZE];
int n, nwrote;

	while (1)
	{
		n = read (sd, recv_buf, RECV_BUF_SIZE);   // read from socket
		if (n  <= 0)   // break and close in case of connection was closed
		{
			xil_printf ("EchoSrv: Closing\r\n");
			break;
		}

		// break if the received message = "quit"
		if (!strncmp(recv_buf, "quit", 4)) break;

		nwrote = write (sd, recv_buf, n);  		// handle request by sending data back
		if (nwrote <= 0)
		{
			xil_printf("EchoSrv: Close \r\n");
			break;
		}
	}
	close(sd);   		// close connection
	vTaskDelete(NULL);  // and kille this Server Task
}

void Task_EchoDaemon (void *p)
{
int sock, new_sd;
struct sockaddr_in address, remote;
int size, EchoNr=0;

	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
		return;

	address.sin_family = AF_INET;
	address.sin_port = htons(echo_port);
	address.sin_addr.s_addr = INADDR_ANY;

	if (lwip_bind(sock, (struct sockaddr *)&address, sizeof (address)) < 0)
		return;

	lwip_listen(sock, 0);

	size = sizeof(remote);

	while (1)
	{

		if ((new_sd = lwip_accept(sock, (struct sockaddr *)&remote, (socklen_t *)&size)) > 0)
		{
		char hstr[20];
			sprintf (hstr, "Echo_%d", EchoNr++);
			sys_thread_new(hstr, Task_EchoServer, (void*)new_sd, 1024,	DEFAULT_THREAD_PRIO);
		}
	}
}
