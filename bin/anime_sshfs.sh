#!/bin/bash

umount "/home/Cowie/anime/"
echo "unmounted"
sshfs -p "6782" "cowie@10.0.0.76:/home/cowie/anime" "/home/Cowie/anime/"
echo "sshfs mounted"
vifm /home/Cowie/anime/

