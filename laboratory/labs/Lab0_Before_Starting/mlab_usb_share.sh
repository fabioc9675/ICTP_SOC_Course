#!/bin/bash

alerts=$(ictp_share_usb_device stop)

jtag=$(lsusb | grep "Future Technology" | awk '{print $6}')
uart=$(lsusb | grep "Cypress Semiconductor" | awk '{print $6}')
eth=$(lsusb | grep "ASIX Electronics" | awk '{print $6}')
if [ -z "$eth" ]; then
    eth=$(lsusb | grep "Realtek Semiconductor" | awk '{print $6}')
fi

if [ -n "$jtag" ] && [ -n "$uart" ] && [ -n "$eth" ]; then
    ictp_share_usb_device share $jtag $uart $eth
elif [ -z "$jtag" ]; then
    echo "JTAG cable disconnected"
    exit 1
elif [ -z "$uart" ]; then
    echo "UART cable disconnected"
    exit 1
elif [ -z "$eth" ]; then
    echo "Ethernet/USB cable disconnected"
    exit 1
fi