#!/bin/bash
PATH=/home/dbaldree/bin:/home/dbaldree/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/dbaldree/Desktop/ZClaymore/:/home/dbaldree/Desktop/Mona/ccminer
minerprog=`cat /home/dbaldree/Desktop/ZClaymore/whatminer`;
mineralg=`cat /home/dbaldree/Desktop/ZClaymore/whatalg`;
if [[ $minerprog == "miner" ]];then
	echo 1
	if (pgrep "miner") > /dev/null
	then
		logger -t MINER_HEALTHCHECKER - $(date -u) mining software Running, continuing no change.....
	else
		if (pgrep "tmux") > /dev/null
		then
		kill $(ps aux | grep '[t]mux' | awk '{print $2}')
		fi
		logger -t MINER_HEALTHCHECKER - $(date -u) ERROR! issue found with mining software!
		logger -t MINER_HEALTHCHECKER - $(date -u) ^> mining software has STOPPED. Restarting......
	        sudo /home/dbaldree/Desktop/ZClaymore/overclock_enabler.sh
                sleep 5
		tmux new-session -d -n mining
		tmux send-keys -t mining "cd /home/dbaldree/Desktop/ZClaymore" C-m
		cp 0.3.4b/miner miner
		tmux send-keys -t mining "./miner" C-m
	fi
fi

if [[ $minerprog == "ccminer" ]];then
	echo 2
        if (pgrep "ccminer") > /dev/null
        then
                logger -t MINER_HEALTHCHECKER - $(date -u) mining software Running, continuing no change.....
        else
                if (pgrep "tmux") > /dev/null
                then
		kill $(ps aux | grep '[t]mux' | awk '{print $2}')
                fi
                logger -t MINER_HEALTHCHECKER - $(date -u) ERROR! issue found with mining software!
                logger -t MINER_HEALTHCHECKER - $(date -u) ^> mining software has STOPPED. Restarting......
                sleep 3
		if [[ $mineralg == "SIB" ]];then
			sudo /home/dbaldree/Desktop/ZClaymore/overclock_enabler_SIB.sh
			sleep 5
        	        tmux new-session -d -n mining
	                tmux send-keys -t mining "cd /home/dbaldree/Desktop/SIB/ccminer" C-m
                	tmux send-keys -t mining "./ccminer | tee /home/dbaldree/Desktop/ZClaymore/ccminer.log" C-m
		elif [[ $mineralg == "MONA" ]];then
			sudo /home/dbaldree/Desktop/ZClaymore/overclock_enabler.sh
			sleep 5
			tmux new-session -d -n mining
			tmux send-keys -t mining "cd /home/dbaldree/Desktop/Mona/ccminer" C-m
                        tmux send-keys -t mining "./ccminer | tee /home/dbaldree/Desktop/ZClaymore/ccminer.log" C-m
		else
			sudo /home/dbaldree/Desktop/ZClaymore/overclock_enabler.sh
			sleep 5
                        tmux new-session -d -n mining
                        tmux send-keys -t mining "cd /home/dbaldree/Desktop/SIB/ccminer" C-m
                        tmux send-keys -t mining "./ccminer | tee /home/dbaldree/Desktop/ZClaymore/ccminer.log" C-m
		fi
        fi
fi
exit
