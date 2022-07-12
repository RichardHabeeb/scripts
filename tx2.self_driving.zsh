cd ~/catkin_ws/src/
git clone git@github.com:CertiKOS/selfdrivingcar-realtime.git
git checkout ydriving_normal_world
cd ~/catkin_ws/
catkin_make
cd ~/
git clone git@github.com:CertiKOS/certikos-mirror.git
git checkout thinros-linux
mkdir build
cd build
make install_driver
make proxy

