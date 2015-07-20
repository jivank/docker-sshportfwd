#!/bin/bash
cat /root/.ssh/id_rsa.pub
if [ ! -f /root/.ssh/id_rsa ]; then
    cat /dev/zero | ssh-keygen -q -N ""    
    cat /root/.ssh/id_rsa.pub
fi
ssh-keyscan $DESTINATIONIP >> /root/.ssh/known_hosts
ssh -nNT -R $DESTINATIONPORT:$LOCALIP:$LOCALPORT $DESTINATIONUSER@$DESTINATIONIP