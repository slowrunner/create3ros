#/bin/bash

echo "UPDATE CREATE3 EXAMPLES"

echo "Update create3 example repo"
cd ~/create3ros/create3_examples_ws/src/create3_examples
git pull

cd ~/create3ros/create3_examples_ws/src/irobot_create_msgs
echo "Updating create3 msgs"
git pull

cd ~/create3ros/create3_examples_ws

echo "Building create3 examples"
# Build the updated workspace:
colcon build

