#!/bin/sh

#
# See https://github.com/baldersd/CryptoMining/tree/master/Miner%20Scripts for example .sh nvidia-settings overclocking (local or remote exec).
#

choice=""
while [ "$choice" != "q" ]
do
        echo
        echo "Please make a selection!"
        echo "1) SIB"
        echo "2) MONA"
        echo "3) EQUIHASH"
        echo "4) GENERIC"
        echo "q) "
        echo

        read choice

        case $choice in
            '1') echo "item 1 selected..." && sudo DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 /home/dbaldree/Desktop/ZClaymore/overclock_enabler_SIB.sh && sleep 5;;
            '2') echo "item 2 selected..." && sudo DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 /home/dbaldree/Desktop/ZClaymore/overclock_enabler_MONA.sh && sleep 5;;
            '3') echo "item 3 selected..." && sudo DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 /home/dbaldree/Desktop/ZClaymore/overclock_enabler_ehash.sh && sleep 5;;
            '4') echo "item 4 selected..." && sudo DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 /home/dbaldree/Desktop/ZClaymore/overclock_enabler.sh && sleep 5;;
            'q') echo "quiting!";;
            *)   echo "menu item is not available; try again!";;
        esac
done
