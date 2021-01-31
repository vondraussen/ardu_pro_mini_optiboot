#!/bin/bash
make -C optiboot/optiboot/bootloaders/optiboot/ atmega328_pro8 BAUD_RATE=38400
avrdude -c dragon_isp -p m328p -U lfuse:w:0xe2:m -U hfuse:w:0xde:m -U efuse:w:0xff:m \
        -U flash:w:optiboot/optiboot/bootloaders/optiboot/optiboot_atmega328_pro_8MHz.hex
echo "Bootloader flashed and will work on 38400 Baud"
# avrdude -c arduino -p m328p -P /dev/ttyUSB0 -b 38400