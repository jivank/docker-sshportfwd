#!/bin/bash

if [ ! -f /root/.ssh/id_rsa.pub ]; then
    cat /dev/zero | ssh-keygen -q -N ""
	cat /root/.ssh/id_rsa.pub
fi
ssh-keyscan $DESTINATIONIP >> /root/.ssh/known_hosts
ssh -nNT -L $DESTINATIONPORT:$LOCALIP:$LOCALPORT $DESTINATIONUSER@$DESTINATIONIP