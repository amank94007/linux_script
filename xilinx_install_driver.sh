#! /bin/bash
echo "to install xilinx driver \n created by AAY.KAY"
sudo /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/install_script/install_drivers/./install_drivers
cd /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/digilent/ 
sudo ./install_digilent.sh
sudo apt-get install gitk git-gui libusb-dev build-essential libc6-dev-i386 fxload libftdi-dev 
cd /opt/Xilinx/14.7 
sudo git clone git://git.zerfleddert.de/usb-driver 
cd usb-driver
sudo make
./setup_pcusb /opt/Xilinx/14.7/ISE_DS/ISE/
echo "add:\n export LD_PRELOAD=/opt/Xilinx/14.7/usb-driver/libusb-driver.so \n at end of opened file "
sudo nano ~/.bashrc
exit


