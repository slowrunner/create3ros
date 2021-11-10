#/bin/bash

cd ~/create3ros/create3_examples_ws
source install/setup.bash
ros2 action send_goal /wall_follow irobot_create_msgs/action/WallFollow "{follow_side: 1, max_runtime:{sec: 1000,nanosec: 0}}"
