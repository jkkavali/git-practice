#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

if [ $userid -ne 0 ]
then
   echo "please run the script with root priveleges"
   exit1
fi

dnf install git -y


