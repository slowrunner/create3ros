#!/bin/bash
#
# totalLife.sh    print total hours and sessions of life in life.log
#
# requires bc  (sudo apt-get install bc)
#
echo "TOTAL LIFE STATISTICS"
echo "(Cleaning life.log first)"
/home/ubuntu/create3ros/plib/cleanlifelog.py
echo " "
fn="/home/ubuntu/create3ros/life.log"
totalLife=`(awk -F':' '{sum+=$3}END{print sum;}' $fn)`
echo "Total Life: " $totalLife "hrs (since Oct 22, 2021)"
echo "Sessions (boot): " `(grep -c "\- boot \-" $fn)`
booted=`(grep -c "\- boot \-" $fn)`
aveSession=`(echo "scale=1; ($totalLife / $booted)" | bc -l)`
echo "Average Session: " $aveSession "hrs"
safetyShutdowns=`(grep -c "SAFETY SHUTDOWN" $fn)`
echo "Safety Shutdowns: " $safetyShutdowns 
