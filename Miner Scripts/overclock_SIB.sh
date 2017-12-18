#!/bin/bash
#just doing fans for X11 stock is optimal.
sudo -S nvidia-smi -pm 1
sudo nvidia-smi -i 0 -pl 70
sudo nvidia-smi -i 1 -pl 110
sudo nvidia-smi -i 2 -pl 70
sudo nvidia-smi -i 3 -pl 110
sudo nvidia-smi -i 4 -pl 140
#<gtx 1050tis
sudo nvidia-settings -a [gpu:2]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=70 -c :0.0
sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=65 -c :0.0
#<gtx 1060s
sudo nvidia-settings -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=85 -c :0.0
sudo nvidia-settings -a [gpu:3]/GPUFanControlState=1 -a [fan:3]/GPUTargetFanSpeed=90 -c :0.0
#<gtx 1080
sudo nvidia-settings -a [gpu:4]/GPUFanControlState=1 -a [fan:4]/GPUTargetFanSpeed=65 -c :0.0
