#!/bin/bash

echo "Routine Shutdown Requested"
/home/ubuntu/create3ros/logMaintenance.py "Routine Shutdown"
sudo shutdown -h +2
