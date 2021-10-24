# create3ros
Autonomous ROS2 home robot based on an iRobot CREATE 3, Ubuntu, Raspberry Pi 3B


<img src="https://github.com/slowrunner/create3ros/blob/main/Kevin.jpg" width="378" height="504" />


"Kevin" Specs:

- Platform: Create 3 from iRobot 

- Processor: Raspberry Pi 3 B
  * 1.2 GHz Max
  * Four Cores
  * 1GB Memory
  * Onboard WiFi

- OS: Ubuntu 20.04 LTS 64-bit Server
- ROS2 Foxy: Uses 100% of one core (uptime 15min load 1.0)
 
- Control Interfaces: 
  * ssh over WiFi
  * ROS2 Foxy 

- Sensors (iRobot Create 3 Intrinsic)
  * Battery_Voltage
  * Wheel Encoders 508.8 cnt/rev 0.444 mm/tick

- Sensors (Raspberry Pi Intrinsic)  
  * Processor Temperature 
  * Processor Low Voltage Throttling Active / Latched
  * Processor Temperature Throttling Active / Latched
  
- Sensors (Added):
  * Oak-D-Lite
  
- Actuators/Effectors (iRobot Create 3 Intrinsic)
  * Wheel Motors
  * Multi-color programmable LED (x6)

- Actuators/Effectors 
  * Audio speaker
  
- iRobot Create 3 Port Usage
  * Unfiltered Power (2A 14v nominal)
  * USB 

- Power Source: iRobot 26Wh Rechargeable Battery
  * Roughly x hours playtime
  * Approx x hours recharge 

- Run Time:  
  * "Thinking" TBD hours  (averages nnn mA at x.x v)
  * "100% wandering" TBD hours

- Recharger:  
  * iRobot Docking Station
  * x.x v nA output 

- Create3 Physical:
  * 7.7 lbs (3.5kg) 
  * approx 13.75" (350mm) Dia x 3.63" (92 cm) High 
  * 9.25" (23.5 cm) wheel base
  * 2.83" (72 mm) wheel diameter
  * 226.19 mm wheel circumference

- Total Cost: $xxx

- First "Life": ? 2021 
