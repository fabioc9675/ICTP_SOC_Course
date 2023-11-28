// ---- freeRTOS and lwIP Demo: WEBSERVER  -----
//----------------------------------------------

#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"

#include "FreeRTOS.h"
#include "task.h"

#include "lwipopts.h"
#include "lwip/sockets.h"
#include "lwip/tcpip.h"

#include "globals.h"

#define	http_port  80

#define webHTTP_OK	"HTTP/1.0 200 OK\r\nContent-type: text/html\r\n\r\n"   	// Standard GET response

// Format of the dynamic page (Header)
#define webHTML_START "<html> <head> </head> <BODY onLoad=\"window.setTimeout(&quot;location.href='index.html'&quot;,1000)\" bgcolor=\"#FFFFFF\" text=\"#2477E6\">\r\n"
#define webHTML_END "\r\n</pre> \r\n</font></BODY> </html>"


#define RECV_BUF_SIZE 2048  				// http request size can be a max of RECV_BUF_SIZE
char recv_buf[RECV_BUF_SIZE];				// Http Request Receiver Buffer

#define webMAX_PAGE_SIZE	32000   			// Size of "dynamic WEB page"
char  	cDynamicPage[webMAX_PAGE_SIZE];

char hstr[256];



//****************************************************************************************************
void AddLine_SVG (void)
{
	strcat (cDynamicPage, "<svg width=1210 height=420 >" );

	strcat (cDynamicPage, "<rect x='0' y='0' width='1200' height='410' stroke='black' stroke-width='2' fill='none' />");

	strcat (cDynamicPage, "<polyline points='");
	for (int i=0; i<GRAPHLEN; i++)
	{
		sprintf (hstr, "%d,%d ", i*2, 4 + (int)(GraphData[i]/10) );
		strcat (cDynamicPage, hstr);
	}
	strcat (cDynamicPage, "' style=fill:none;stroke:red;stroke-width:2 />");
	strcat (cDynamicPage, "</svg>" );
}

void AddAdcValue (void)
{
	sprintf (hstr, "<br> <b>ADC: %d = %3.1f Volt </b><br>", adcdata, (3.3/4095.0)*adcdata);
	strcat( cDynamicPage, hstr );				// Concatenate to the PageBuffer
}

void AddPageHitCounter (void)
{
static int ulPageHits = 0;
	ulPageHits++;
	sprintf( hstr, "Page Hits= %d <br>", ulPageHits );
	strcat( cDynamicPage, hstr );				// Concatenate to the PageBuffer
}


void AddTaskList (void)
{
	strcat ( cDynamicPage, "<p><pre>Task          State  Priority  Stack    #<br>");
	strcat ( cDynamicPage, "*************************************************<br>" );
	vTaskList( (char* ) cDynamicPage + strlen( cDynamicPage ) );  // Then the list of tasks and their status...
//	vTaskGetRunTimeStats( ( signed portCHAR * ) cDynamicPage + strlen( cDynamicPage ) );
}

static void prvweb_ParseHTMLRequest (int sd, char* RecString, int RecLen)
{
	cDynamicPage[0]='\0';

	// Is this a GET?  We don't handle anything else
	if( (RecLen > 1 ) && ( !strncmp( RecString, "GET", 3) ) )
	{
		write (sd, webHTTP_OK, (u16_t) strlen(webHTTP_OK) );  	// Write out the HTTP OK header

		strcpy( cDynamicPage, webHTML_START );  				// Generate the dynamic page... First the page header

		AddPageHitCounter ();
		AddTaskList ();

//		AddAdcValue ();
//		AddLine_SVG ();

		strcat( cDynamicPage, webHTML_END );  				//  Finally the page footer
		write (sd, cDynamicPage, strlen(cDynamicPage) );   	// Write out the dynamically generated page
	}
}


void process_http_request(void *p)
{
int sd = (int)p;
int read_len;

	read_len = read(sd, recv_buf, RECV_BUF_SIZE);  // read in the request

	if (read_len > 0)
		prvweb_ParseHTMLRequest (sd, recv_buf, read_len);

	close(sd);
	vTaskDelete(NULL);
	return;
}




// http server
void Task_WEBServer (void *p)
{
int sock, new_sd;
struct sockaddr_in address, remote;
int size;

	// create a TCP socket
	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
	{
		vTaskDelete(NULL);
		return;
	}

	// bind to port 80 for any incoming addr
	address.sin_family = AF_INET;
	address.sin_port = htons(http_port);
	address.sin_addr.s_addr = INADDR_ANY;
	if (lwip_bind(sock, (struct sockaddr *)&address, sizeof (address)) < 0)
	{
		vTaskDelete(NULL);
		return;
	}

	lwip_listen(sock, 0);    // Set to listen for incoming connections

	size = sizeof(remote);
	while (1)
	{
		new_sd = lwip_accept(sock, (struct sockaddr *)&remote, (socklen_t *)&size);
		// spawn a separate handler for each request
		sys_thread_new ("http", process_http_request, (void*)new_sd, 2048, DEFAULT_THREAD_PRIO);
	}
	return;
}
