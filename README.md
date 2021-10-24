# create3ros
Autonomous ROS2 home robot based on an iRobot CREATE 3, Ubuntu, Raspberry Pi 3B


<img src="https://github.com/slowrunner/create3ros/blob/main/TBD_Name.jpg" width="378" height="504" />


"TBD Name" Specs:

- Platform: Create 3 from iRobot 

- Processor: Raspberry Pi 3 B
  * 1.2 GHz Max
  * Four Cores
  * 1GB Memory
  * Onboard WiFi

- OS: Ubuntu 20.04 LTS 64-bit Server
- ROS2 Foxy: Uses 100% of one core (uptime 15min load 1.0)
 
- Control Interfaces: 
  * ssh over WiFi to RPi3B
  * ROS2 over WiFi 
  * Bluetooth LE (unused)

- Sensors (iRobot Create 3 Intrinsic)
  * Power Button State
  * 2x User Button State
  * 2x Front Bumper Zone
  * 4x IR Cliff Sensors
  * 6x IR Obstacle Sensors
  * Downward Optical Flow Sensor (for odometry)
  * IMU (6DOF: 3D gyros, 3D accelerometers)
  * "Battery Level"
  * Left/Right Wheel Encoders 508.8 cnt/rev 0.444 mm/tick

- Sensors (Raspberry Pi Intrinsic)  
  * Processor Temperature 
  * Processor Low Voltage Throttling Active / Latched
  * Processor Temperature Throttling Active / Latched
  
- Sensors (Added):
  * Expect Dec 2021: Oak-D-Lite
  
- Actuators/Effectors (iRobot Create 3 Intrinsic)
  * Left/Right Drive Motors
  * Multi-color programmable LED (x6)
  * Variable Frequency Buzzer

- Actuators/Effectors (available via RPi):
  * Audio Speaker

- iRobot Create 3 Port Usage
  * Payload Power (2A unregulated 14.4v nominal)
  * USB-C: Ethernet over USB, Raspberry Pi3B 5v power 

- Power Source: iRobot 26Wh Rechargeable Battery
  * Roughly x hours playtime
  * Approx x hours recharge 

- Run Time:  
  * "Thinking" TBD hours  (averages nnn mA at x.x v)
  * "100% wandering" TBD hours

- Recharger:  
  * iRobot Home Base Station Dock
  * x.x v nA output 

- Create3 Physical:
  * 7.7 lbs (3.5kg) 
  * approx 13.75" (350mm) Dia x 3.63" (92 cm) High 
  * 9.25" (23.5 cm) wheel base
  * 2.83" (72 mm) wheel diameter
  * 226.19 mm wheel circumference

- Total Cost: $xxx

- First "Life": ? 2021 
