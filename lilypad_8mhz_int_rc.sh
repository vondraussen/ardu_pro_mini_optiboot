#!/bin/bash
make -C optiboot/optiboot/bootloaders/optiboot/ lilypad BAUD_RATE=38400
avrdude -c dragon_isp -p m168p -U lfuse:w:0xe2:m -U hfuse:w:0xdf:m -U efuse:w:0xfc:m \
        -U flash:w:optiboot/optiboot/bootloaders/optiboot/optiboot_lilypad.hex
echo "Bootloader flashed and will work on 38400 Baud"
# avrdude -c arduino -p m168p -P /dev/ttyUSB0 -b 38400