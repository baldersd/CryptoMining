#!/bin/bash
PATH=/home/dbaldree/bin:/home/dbaldree/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/dbaldree/Desktop/ZClaymore
if pgrep "miner" > /dev/null
then
echo $(date -u) "miner Running, continuing no change....." >> /tmp/miner.log
else
echo $(date -u) "miner is STOPPED. Restarting......" >> /tmp/miner.log
tmux kill-window -t mining
sleep 3
tmux new-session -d -n mining
tmux send-keys -t mining "cd /home/dbaldree/Desktop/ZClaymore" C-m
tmux send-keys -t mining "./miner" C-m
fi
