#!/bin/bash

Number=$1

if [ $Number -gt 20 ] #gt,lt,-ne,-eq,-ge,-le
then
    echo "Given number:$Number is greater than 20"
else 
    echo "Given number:$Number is less than 20"
fi