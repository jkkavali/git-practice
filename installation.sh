#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

if [ $USERID -ne 0 ]
then
   echo "please run the script with root priveleges"
   exit1
fi

dnf install installed git

if [ $? -ne 0 ]
then
   echo "Git is not installed, going to install it.."
   dnf install git -y
else 
   echo "Git is already installed,nothing to do.."
fi


