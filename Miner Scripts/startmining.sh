#!/bin/bash
PATH=/home/dbaldree/bin:/home/dbaldree/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/dbaldree/Desktop/ZClaymore
if pgrep "miner" > /dev/null
then
logger -t MINER_HEALTHCHECKER - $(date -u) miner Running, continuing no change.....
else
logger -t MINER_HEALTHCHECKER - $(date -u) miner is STOPPED. Restarting......
tmux kill-window -t mining
sleep 3
tmux new-session -d -n mining
tmux send-keys -t mining "cd /home/dbaldree/Desktop/ZClaymore" C-m
tmux send-keys -t mining "./miner" C-m
fi

