#!/bin/bash
restr=
if ((tail miner.log | grep "Looks like GPU[01234567890] are stopped. Restart attempt") || (tail miner.log | grep "CUDA: Device: [01234567890] Thread exited with code: [01234567890]")); then
        restr=1
else
        restr=
fi

if [ $restr ]; then
echo "MINER_HEALTHCHECKER: Issues found--Restarting miner..."
logger -t MINER_HEALTHCHECKER - Issues found--Restarting miner...
tmux kill-window -t mining
else
echo "MINER_HEALTHCHECKER - no issues found"
logger -t MINER_HEALTHCHECKER - no issues found
fi
