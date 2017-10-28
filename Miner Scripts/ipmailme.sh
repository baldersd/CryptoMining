#!/bin/bash
TO="baldersd@hotmail.com"
FROM="miner01@localhost"
EXT_IP_FILE="/etc/ipaddress"
CURRENT_IP=$(curl http://ifconfig.me/ip)

if [ -s CURRENT_IP ]
then
        logger -t ipcheck -- Error with CURL -- IP Unknown
                logger -t ipcheck -- Exit 1
                $CURRENT_IP=
        exit 1
else
        logger -t ipcheck -- CURL success - Fetched IP $CURRENT_IP
fi


if [ -f $EXT_IP_FILE ]; then
        KNOWN_IP=$(cat $EXT_IP_FILE)
else
        KNOWN_IP=
                logger -t ipcheck -- Exit 1
        exit 1
fi

#See if the IP has changed
if [[ "$CURRENT_IP" != "$KNOWN_IP" ]] && [[ ! -s CURRENT_IP ]] ; then
        echo $CURRENT_IP > $EXT_IP_FILE
        #If so send an alert
        echo "Subject: The IP address at home has been changed to $CURRENT_IP" | /usr/sbin/sendmail -N never -f ${FROM} -v ${TO}
        logger -t ipcheck -- IP changed to $CURRENT_IP
else
        #If not just report that it stayed the same
        #echo "Subject: The IP Address at home stayed the same $CURRENT_IP" | /usr/sbin/sendmail -N never -f ${FROM} -v ${TO}
        logger -t ipcheck -- NO IP change
fi
