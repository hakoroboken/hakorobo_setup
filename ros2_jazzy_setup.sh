#!/bin/bash

log_info()
{
    echo "--------------- $1 ---------------"
}


log_info "Hakoroboken環境構築ツール for Ubuntu24.05 LTS"

echo "これはROS2をインストールするスクリプトです。結構、時間がかかります。"

echo "このスクリプトを停止する場合は'n',実行する場合は'y'を入力してください"
read flag
if [ $flag = 'n' ]; then
  echo "スクリプトを停止します"
  exit 1
fi

log_info "スクリプトを実行します。"

sudo apt update -y

sudo apt upgrade -y

log_info "ROS2のインストールを開始します。"

sleep 1

sudo apt install software-properties-common -y
sudo add-apt-repository universe
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update -y
sudo apt upgrade -y
sudo apt install ros-jazzy-desktop -y
source /opt/ros/jazzy/setup.bash