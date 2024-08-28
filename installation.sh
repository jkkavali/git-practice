#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

if [ $USERID -ne 0 ]
then
   echo "please run the script with root priveleges"
   exit1
fi

dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install git -y
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

dnf list installed mysql 

if [ $? -ne 0 ]
then
    echo "MySQL is not installed...going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "MySQL installation is failure..please check"
        exit 1
    else
        echo "MySQL installation is success"
    fi
else
    echo "MySQL is already installed..nothing to do"
fi



