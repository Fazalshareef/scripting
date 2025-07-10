#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]

then 
    echo "Error :: Please access with root user"
    exit 1
else 
  echo "Okay you are a root user "
fi

yum install nginx -y