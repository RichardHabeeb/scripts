#!/usr/bin/env zsh
sudo apt install cmake curl

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full
echo "source /opt/ros/noetic/setup.zsh" >> ~/.zshrc
. ~/.zshrc

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make

echo "source $HOME/catkin_ws/devel/setup.zsh" >> ~/.zshrc
. ~/.zshrc
