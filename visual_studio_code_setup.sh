#!/bin/bash

log_info()
{
    echo "--------------- $1 ---------------"
}

log_info "Hakoroboken環境構築ツール for Ubuntu24.05 LTS"

echo "これはVisual Studio Codeをインストールするスクリプトです。"
echo "このスクリプトを停止する場合は'n',実行する場合は'y'を入力してください"
read flag
if [ $flag = 'n' ]; then
  echo "スクリプトを停止します"
  exit 1
fi

log_info "VisualStudioCodeのインストールを開始します。"

sleep 1

curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/install-vscode.sh | /bin/bash