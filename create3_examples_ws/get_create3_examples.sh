#/bin/bash

echo "INITIAL CREATE3 EXAMPLES SETUP"
echo "Creating create3_examples_ws/src"
mkdir -p ~/create3ros/create3_examples_ws/src

echo "Cloning create3 example repo to create3_examples_ws/src"
cd ~/create3ros/create3_examples_ws/src
git clone https://github.com/iRobotEducation/create3_examples.git

echo "Cloning create3 msgs to create3_examples_ws/src"
git clone https://github.com/iRobotEducation/irobot_create_msgs.git

cd ~/create3ros/create3_examples_ws

echo "Building create3 examples"
# Build the workspace with:
colcon build

