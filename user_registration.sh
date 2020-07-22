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

#enter valid mobile number
echo "Enter your Mobile Number:"
read mobileno

mobilepat="^[0-9]{2}\s[0-9]{10}$"

if [[ $mobilenno =~ $mobilepat ]]
then
       echo "Valid Mobile Number"
else
       echo "Invalid Mobile Number"
fi

#validating password which includes minimum 8 characters
read  "Enter password"
read password

passpattern1="^([a-zA-Z0-9@#!]){8}$";
if [[ $password =~ $passpattern1   ]]
then
        echo "Perfect password"
else
	echo "Your password should be of 8 length";
fi
