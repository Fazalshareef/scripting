#!/bin/bash

NUMBER=$1

if [ $NUMBER -ge 50 ]
then
   echo "The given number $NUMBER is greater than 50"
else 
    echo "The given number $NUMBER is less than or equal to 50"
fi