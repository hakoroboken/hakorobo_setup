# hakorobo_setup

# 使用方法
### リポジトリをクローン
```
git clone https://github.com/hakoroboken/hakorobo_setup.git
```

### スクリプトに権限を与える
```
cd hakorobo_setup
```

```
chmod +x ./setup.sh
```

### 実行
```
./setup.sh
```

# ROS2の動作確認
### スクリプトに権限を与える
```
chmod +x ./ros2_test.sh
```
###
```
./ros2_test.sh
```

以下のようにログを確認できたらOK
```
user_name@pc_name:~/hakorobo_setup$ ./ros2_test.sh 
--------------- ROS2のテスト.Ctrl-Cで止まる ---------------
[INFO] [1738919128.379602436] [talker]: Publishing: 'Hello World: 1'
[INFO] [1738919129.379590309] [talker]: Publishing: 'Hello World: 2'
[INFO] [1738919130.379585300] [talker]: Publishing: 'Hello World: 3'
[INFO] [1738919131.379584035] [talker]: Publishing: 'Hello World: 4'

```
