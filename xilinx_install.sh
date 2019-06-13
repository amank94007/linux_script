#! /bin/bash
echo "to install xilinx \n created by AAY.KAY"
echo "open below url and download in home directory Full Installer for Linux (TAR/GZIP - 6.09 GB)"
echo "\nurl: https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/design-tools/v2012_4---14_7.html "
sudo tar -xvf Xilinx_ISE_DS_Lin_14.7_1015_1.tar 
sudo ./xsetup
echo "add:\n source /opt/Xilinx/14.7/ISE_DS/settings64.sh \n at end of opened file "
sudo nano ~/.bashrc
exit


