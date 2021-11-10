#/bin/bash

cd ~/create3ros/create3_examples_ws
source install/setup.bash
ros2 action send_goal /dock irobot_create_msgs/action/DockServo "{ }"
