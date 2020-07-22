#!/bin/bash -x
#!/bin/bash -x 

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
