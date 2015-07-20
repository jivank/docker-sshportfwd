#!/bin/bash
cat /dev/zero | ssh-keygen -q -N ""
cat /root/.ssh/id_rsa.pub
ssh -R DESTINATIONPORT:LOCALIP:LOCALPORT DESTINATIONUSER@DESTINATIONIP