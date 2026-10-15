#!/bin/bash

log_info()
{
    echo "--------------- $1 ---------------"
}

log_info "Hakoroboken環境構築ツール for Ubuntu24.05 LTS"

echo "これはDockerをインストールするスクリプトです。"

echo "このスクリプトを停止する場合は'n',実行する場合は'y'を入力してください"
read flag
if [ $flag = 'n' ]; then
  echo "スクリプトを停止します"
  exit 1
fi

log_info "Dockerのインストールを開始します"

sleep 1

sudo apt-get update -y
sudo apt-get install ca-certificates curl gnupg -y
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo usermod -aG docker $USER && newgrp docker