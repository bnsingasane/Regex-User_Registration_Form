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
passpattern2="^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$";
passpattern3="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$";
passpattern4="^([a-zA-Z0-9]*)[^a-zA-Z_0-9\s]([a-zA-Z0-9]*)$";
if [[ $password =~ $passpattern1   ]]
then
	if [[ $password =~ $passpattern2  ]]
  	then
     		if [[ $password =~ $passpattern3  ]]
     		then
       			if [[ $password =~ $passpattern4  ]]
       			then
        			echo "Perfect password"
       			else
         			echo "Please enter at least one special char";
        		fi
     		else
       			echo "Please enter at least one digit";
     	fi
else
	echo "Please enter at least one caps letter";
fi
else
  echo "Your password should be of 8 length";
fi
