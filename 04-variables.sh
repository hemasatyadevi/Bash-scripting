#!/bin/bash
echo "please enter username"
read -s USERNAME
echo "username is ${USERNAME}"
echo "please enter password"
read -s PASSWORD
echo "password is ${PASSWORD}"

echo "Number of args passed are : $#"
echo "what are the args passed are : $@"