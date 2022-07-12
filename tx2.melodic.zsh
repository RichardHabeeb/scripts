sudo apt remove --purge --auto-remove cmake
sudo apt update
sudo apt install -y software-properties-common lsb-release
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
sudo apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main"
sudo apt update
sudo apt install kitware-archive-keyring
sudo rm /etc/apt/trusted.gpg.d/kitware.gpg
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6AF7F09730B3F0A4
sudo apt update
sudo apt install cmake


sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrc
source ~/.zshrc
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
echo "source $HOME/catkin_ws/devel/setup.bash" >> ~/.bashrc
echo "source $HOME/catkin_ws/devel/setup.zsh" >> ~/.zshrc
source ~/.zshrc
echo $ROS_PACKAGE_PATH
