#!/bin/bash

USERID=$(id -u)
DATE$(date +%F-%T)
LOG_FILE="$DATE.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

#checking the user is root or not

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root user access"
    exit12
fi    

#this is a generic function, we need to pass arguments
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ....$R FAILED $N"
        exit 12
    else
        echo -e "$2 ...$G SUCCESS $N"
    fi    
}

yum install git -y &>>$LOG_FILE

VALIDATE $? "GIT INSTALLATION"

yum install vim -y &>>$LOG_FILE

VALIDATE $? "VIM Installation"

yum install wget -y &>>$LOG_FILE

VALIDATE $? "WGET Installation"

yum install net-tools -y &>>$LOG_FILE

VALIDATE $? "NET-TOOLS Installation"
