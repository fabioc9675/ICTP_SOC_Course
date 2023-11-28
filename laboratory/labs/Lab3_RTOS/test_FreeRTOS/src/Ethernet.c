/*
 --- Start Ethernet
 */

#include <stdio.h>
#include "xparameters.h"

#include "lwipopts.h"

#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwip/init.h"
#include "netif/xadapter.h"


#include "task.h"
#include "portmacro.h"
#include "xil_printf.h"


void Task_WEBServer   (void *p);
void Task_EchoDaemon  (void *p);


#define PLATFORM_EMAC_BASEADDR XPAR_XEMACPS_0_BASEADDR

//-------

void print_ip(char *msg, ip_addr_t *ip)
{
    print(msg);
    xil_printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
    print_ip("Board IP: ", ip);
    print_ip("Netmask : ", mask);
    print_ip("Gateway : ", gw);
}


struct netif server_netif;


void task_StartEthernet(void *p)
{
struct netif *netif;
ip_addr_t ipaddr, netmask, gw;

/* the mac address of the board. this should be unique per board */
unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	lwip_init();
	print ("-- Start Ethernet -- \n\r");

    netif = &server_netif;

    /* initialize IP addresses to be used */
    IP4_ADDR(&ipaddr,  192, 168,   1,  10);
    IP4_ADDR(&netmask, 255, 255, 255,  0);
    IP4_ADDR(&gw,      192, 168,   1,  1);
/*
	IP4_ADDR(&(server_netif.ip_addr),  192, 168, 1, 10);
	IP4_ADDR(&(server_netif.netmask), 255, 255, 255,  0);
	IP4_ADDR(&(server_netif.gw),  192, 168, 1, 1);
*/

    /* print out IP settings of the board */
	print("\r\n\r\n");
    print("-----lwIP Socket Mode Demo Application ------\r\n");

    print_ip_settings(&ipaddr, &netmask, &gw);
    /* print all application headers */

    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(netif, &ipaddr, &netmask, &gw, mac_ethernet_address, PLATFORM_EMAC_BASEADDR))
    {
        print("Error adding N/W interface\r\n");
        return;
    }
    netif_set_default(netif);
    netif_set_up(netif);  // specify that the network if is up

    // start packet receive thread - required for lwIP operation
    sys_thread_new ("xemacif_input_thread", (void(*)(void*))xemacif_input_thread, netif, 2048, DEFAULT_THREAD_PRIO);

//*************************************************

    sys_thread_new("httpd", Task_WEBServer,   0,  2048, DEFAULT_THREAD_PRIO);

//   sys_thread_new("echod", Task_EchoDaemon , 0,  1024,  DEFAULT_THREAD_PRIO);

    vTaskDelete(NULL);
    return;
}

