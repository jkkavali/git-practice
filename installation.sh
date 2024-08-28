#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

if [ $USERID -ne 0 ]
then
   echo "please run the script with root priveleges"
   exit1
fi

dnf install installed gitttt

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install gitttt -y
    if[ $? -ne 0 ]
    then
        echo "Git installation is not success.. check it"
        exit1
    else 
        echo "Git installation is success"
    fi
else 
    echo "Git is already installed,nothing to do.."
fi




