#!/bin/sh
nvidia-smi -pm 1
nvidia-smi -i 0 -pl 70
nvidia-smi -i 1 -pl 110
nvidia-smi -i 2 -pl 70
nvidia-smi -i 3 -pl 110
nvidia-smi -i 4 -pl 140
#<gtx 1050tis
nvidia-settings -c :0 -a '[gpu:0]/GPUMemoryTransferRateOffset[2]=1350'
nvidia-settings -c :0 -a '[gpu:2]/GPUMemoryTransferRateOffset[2]=1260'
nvidia-settings -c :0 -a '[gpu:0]/GPUGraphicsClockOffset[2]=210'
nvidia-settings -c :0 -a '[gpu:2]/GPUGraphicsClockOffset[2]=190'
nvidia-settings -a [gpu:2]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=70 -c :0.0
nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=65 -c :0.0
#<gtx 1060s
nvidia-settings -c :0 -a '[gpu:1]/GPUMemoryTransferRateOffset[2]=540'
nvidia-settings -c :0 -a '[gpu:3]/GPUMemoryTransferRateOffset[2]=1160'
nvidia-settings -c :0 -a '[gpu:1]/GPUGraphicsClockOffset[2]=170'
nvidia-settings -c :0 -a '[gpu:3]/GPUGraphicsClockOffset[2]=170'
nvidia-settings -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=85 -c :0.0
nvidia-settings -a [gpu:3]/GPUFanControlState=1 -a [fan:3]/GPUTargetFanSpeed=90 -c :0.0
#<gtx 1080
nvidia-settings -c :0 -a '[gpu:4]/GPUMemoryTransferRateOffset[2]=1580'
nvidia-settings -c :0 -a '[gpu:4]/GPUGraphicsClockOffset[2]=190'
nvidia-settings -a [gpu:4]/GPUFanControlState=1 -a [fan:4]/GPUTargetFanSpeed=65 -c :0.0
