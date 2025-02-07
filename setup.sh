#!/bin/bash


log_info()
{
    echo "--------------- $1 ---------------"
}


log_info "Hakoroboken環境構築ツール for Ubuntu24.05 LTS"

log_info "このスクリプトを停止する場合は'n',実行する場合は'y'を入力してください"
read flag
if [ $flag = 'n' ]; then
  echo "スクリプトを停止します"
  exit 1
fi

log_info "スクリプトを実行します。"

sleep 1

sudo apt update -y

sudo apt upgrade -y

log_info "Rustのインストールを開始します。"
log_info "画面が止まったらエンター押してください。"

sleep 2

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

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

log_info "Chromeのインストールを開始します。"

sleep 1

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install ./google-chrome-stable_current_amd64.deb -y

log_info "VisualStudioCodeのインストールを開始します。"

sleep 1

curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/install-vscode.sh | /bin/bash

log_info "KiCADのインストールを開始します。"

sleep 1

sudo add-apt-repository ppa:kicad/kicad-8.0-releases

sudo apt update

sudo apt install kicad
