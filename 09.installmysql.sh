#!/bin/bash

ID=$(id -u)

INSTALL_SOFTWARE

if [ $ID -ne 0 ]

then 
    echo "Error :: Please access with root user"
    exit 1 # Other than zero (zero means it has been exeuted sucessfully)
else 
  echo "Okay you are a root user "
fi

yum install mysql -y

if [ $? == 0]
 
then
     echo "Installed Sucessfully"
else 
    echo "Failed to Install pleaese the command again"
fi        
