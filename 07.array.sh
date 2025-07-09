#!/bin/bash

FRUITS=("Apple" "Banana" "Cherry" "Date")

echo "The first fruit is: ${FRUITS[0]}"
echo "The second fruit is: ${FRUITS[1]}" 
echo "The third fruit is: ${FRUITS[2]}"
echo "The fourth fruit is: ${FRUITS[3]}"    

echo "The number of fruits is: ${#FRUITS[@]}"
echo "The list of fruits is: ${FRUITS[@]}"