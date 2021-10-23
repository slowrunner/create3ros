echo "starting"
COUNT=0
IPs=$(hostname --all-ip-addresses)
while [ -z "$IPs" ]
do
    echo "loop"
    sleep 1;
    IPs=$(hostname --all-ip-addresses)
    COUNT=$((COUNT+1))
    echo "count: "$COUNT > /home/ubuntu/create3ros/ipcount
done

echo "done looping "

echo "count: "$COUNT > /home/ubuntu/create3ros/ipcount

ifconfig wlan0 | grep 'inet ' | awk '{print $2}'  > /home/ubuntu/create3ros/ip.number
read -r IP_NUMBER < /home/ubuntu/create3ros/ip.number
echo $IP_NUMBER

# remove previous IP info
sudo rm /boot/*.assigned_ip &>/dev/null
# sudo rm /home/pi/Desktop/*.assigned_ip &>/dev/null

# remove previous Failed IP
FAILED=/home/ubuntu/create3ros/failedIP
if test -f "$FAILED"; then
    sudo rm $FAILED &>/dev/null
fi
# sudo rm /home/pi/Desktop/failedIP &>/dev/null

if [ ! -z "$IP_NUMBER" ]
then
        echo "saving IP info"
        sudo bash -c "echo $IP_NUMBER > /boot/$IP_NUMBER.assigned_ip"
#       echo $IP_NUMBER > /home/pi/Desktop/$IP_NUMBER.assigned_ip
        echo "IP info saved"

        su -c "espeak-ng 'WiFi IP'" ubuntu
        su -c "espeak-ng $IP_NUMBER" ubuntu
        su -c "espeak-ng repeating "  ubuntu
        su -c "espeak-ng $IP_NUMBER" ubuntu
else
#       espeak-ng "no IP number"
        echo "no IP number"
        echo "no IP" > /home/ubuntu/create3ros/failedIP
#       echo "no IP" > /home/pi/Desktop/failedIP

fi
echo "done with IP feedback"
