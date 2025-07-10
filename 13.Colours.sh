#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$(basename $0)-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -eq 0 ]; then 
    echo -e "$G You are a root user $N"
else
    echo -e "$R Please run the script with root access $N"
    exit 1
fi

validate() {
    if [ $1 -eq 0 ]; then 
        echo -e "$2...$G Success $N" 
    else
        echo -e "$R Failed to install $N $2. Please check the command again"
        exit 1
    fi   
}

yum install cowsay -y &>> $LOGFILE
validate $? "Installing cowsay"

yum install nano -y &>> $LOGFILE
validate $? "Installing nano"
