#!/bin/bash
apt install net-tools -y
IP=`ifconfig |grep 10.0.2 |awk '{print $2}'`
IP01=`ifconfig |grep 10.0.2 |awk '{print $2}'|awk -F. '{print $1}'`
IP02=`ifconfig |grep 10.0.2 |awk '{print $2}'|awk -F. '{print $2}'`
IP03=`ifconfig |grep 10.0.2 |awk '{print $2}'|awk -F. '{print $3}'`
IP04=`ifconfig |grep 10.0.2 |awk '{print $2}'|awk -F. '{print $4}'`

echo "WorkerC-$IP01-$IP02-$IP03-$IP04" >/etc/hostname
echo "$IP WorkerC-$IP01-$IP02-$IP03-$IP04" >>/etc/hosts

