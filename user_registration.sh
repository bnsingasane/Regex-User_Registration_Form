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

#enter a valid Last Name
echo "Enter the Last Name:"
read lastname

lnamepattern="^[A-Z]{1}[a-z]{2,}$"

if [[ $lastname =~ $lnamepattern ]]
then
        echo "Valid Lastname"
else
        echo "Invalid Lastname"
fi


#enter a valid email
echo "Enter the Email ID:"
read email

emailpattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+[.]+([a-zA-Z]{2,4})+[.]*([a-zA-Z]{2})*$"

if [[ $email =~ $emailpattern ]]
then
        echo "Valid Email ID"
else
        echo "Invalid Email ID"
fi
