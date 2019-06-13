#! /bin/bash
sudo yes | rkhunter --checkall >> log_file.txt
echo "See output at log_file.txt"
