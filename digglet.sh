#!/bin/bash

echo Enter class C network:
echo \(format x.x.x.\)
read networkIP
hostIP=0
while [ $hostIP -le 255 ]
do
	IP=$networkIP$hostIP
	host=`dig -x $IP +short @8.8.8.8`
	echo $IP $host
	((hostIP++))
done
