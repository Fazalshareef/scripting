#!/bin/bash


ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP &>> $LOGFILE"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2...$R FAILED $N"
    else
        echo -e "$2...$G SUCCESS $N"   
    fi     
}

if [ $ID -eq 0 ]
then 
    echo -e "You are the root User. $G Script Started executing $N"
else
    echo -e "Please run the script with $R Root Access 'sudo' $N"  
    exit 1  
fi


for package in $@
do
    yum list installed $package &>> $LOGFILE
        if [ $? -eq 0 ]
        then
            echo -e "Package already exists... $Y Skipping $N"
        else
            yum install $package -y &>> $LOGFILE
            VALIDATE $? "Installation of $package"   
        fi    
done