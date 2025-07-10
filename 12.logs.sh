#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$(basename $0)-$TIMESTAMP.log"

if [ $ID -eq 0 ]; then 
    echo "You are a root user"
else
    echo "Please run the script with root access"
    exit 1
fi

validate() {
    if [ $1 -eq 0 ]; then 
        echo "$2...Success"
    else
        echo "Failed to install $2. Please check the command again"
        exit 1
    fi   
}

yum install cowsay -y &>> $LOGFILE
validate $? "Installing cowsay"

yum install nano -y &>> $LOGFILE
validate $? "Installing nano"
