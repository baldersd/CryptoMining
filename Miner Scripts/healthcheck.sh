#!/bin/bash
minerprog=`cat /home/dbaldree/Desktop/ZClaymore/whatminer`;
restr=
if [[ $minerprog == "miner" ]];then
        echo 1
        if ((tail miner.log | grep "Looks like GPU[01234567890] are stopped. Restart attempt") || (tail miner.log | grep "CUDA: Device: [01234567890] Thread exited with code: [01234567890]") || (tail miner.log | grep "GPU0: 0 Sol/s GPU1: 0 Sol/s GPU2: 0 Sol/s GPU3: 0 Sol/s GPU4: 0 Sol/s") || (tail miner.log | grep "Total speed: 0 Sol/s")); then
                restr=1
        else
                restr=
        fi
fi
if [[ $minerprog == "ccminer" ]];then
        echo 2
        if ((tail /home/dbaldree/Desktop/ZClaymore/ccminer.log | grep "unspecified launch failure") || (tail /home/dbaldree/Desktop/ZClaymore/ccminer.log | grep "0 Sol/s") || (tail /home/dbaldree/Desktop/ZClaymore/ccminer.log | grep "illegal memory access") || (tail /home/dbaldree/Desktop/ZClaymore/ccminer.log | grep "server exited")); then
                restr=1
        else
                restr=
        fi
fi
if [ $restr ]; then
echo "MINER_HEALTHCHECKER: Issues found--Restarting miner..."
logger -t MINER_HEALTHCHECKER - Issues found--Restarting miner...
kill $(ps aux | grep '[t]mux' | awk '{print $2}')
else
echo "MINER_HEALTHCHECKER - no issues found"
logger -t MINER_HEALTHCHECKER - no issues found
fi
