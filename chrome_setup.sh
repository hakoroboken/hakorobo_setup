#!/bin/bash

log_info()
{
    echo "--------------- $1 ---------------"
}

log_info "Hakoroboken環境構築ツール for Ubuntu24.05 LTS"

echo "これはChromeをインストールするスクリプトです。"
echo "このスクリプトを停止する場合は'n',実行する場合は'y'を入力してください"
read flag
if [ $flag = 'n' ]; then
  echo "スクリプトを停止します"
  exit 1
fi

log_info "Chromeのインストールを開始します。"

sleep 1

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install ./google-chrome-stable_current_amd64.deb -y