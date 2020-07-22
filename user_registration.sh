#!/bin/bash -x

#enter a valid First Name
echo "Enter the First Name:"
read firstname

fnamepattern="^[A-Z]{1}[a-z]{2,}$"

if [[ $firstname =~ $fnamepattern ]]
then
       echo "Valid Firstname"
else
       echo "Invalid Firstname"
fi
