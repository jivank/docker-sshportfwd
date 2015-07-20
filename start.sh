#!/bin/bash

if [ ! -f /root/.ssh/id_rsa.pub ]; then
    cat /dev/zero | ssh-keygen -q -N ""
	cat /root/.ssh/id_rsa.pub
fi
ssh -R $DESTINATIONPORT:$LOCALIP:$LOCALPORT $DESTINATIONUSER@$DESTINATIONIP