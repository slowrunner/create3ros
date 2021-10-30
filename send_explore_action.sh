#/bin/bash

cd ~/create3ros/create3_examples_ws
source install/setup.bash
ros2 action send_goal /coverage create3_examples_msgs/action/Coverage "{explore_duration:{sec: 500, nanosec: 0}, max_duration:{sec: 1000,nanosec: 0}}"
