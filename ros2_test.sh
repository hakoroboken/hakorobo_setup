#!/bin/bash

source /opt/ros/jazzy/setup.bash

log_info()
{
    echo "--------------- $1 ---------------"
}

log_info "ROS2のテスト.Ctrl-Cで止まる"

sleep 1

ros2 run demo_nodes_cpp talker 