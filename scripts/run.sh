#!/bin/bash
set -e

# sudo bash scripts/install_deps/run.bash
bash scripts/format_code.bash

cd ~/catkin_ws
# source /opt/ros/melodic/setup.bash
# source devel/setup.bash
# # catkin clean
catkin build rs4se -DCMAKE_BUILD_TYPE=Release -j2
# catkin build rs4se -DCMAKE_BUILD_TYPE=Debug -j2
source devel/setup.bash
##e roslaunch rs4se tel_d435i.launch
# roslaunch rs4se intel_d435i-intrinsics_calib.launch
rosrun rs4se test_rs
# rosrun --prefix 'gdb -ex run' rs4se test_rs
