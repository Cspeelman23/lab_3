#!/bin/bash
# Author : Cady Speelman
# Date: 2/12/20
#Lab3 - scripting

#script uses command line args to read in 

##echo "file name: $0 and regex: $1"

#1
#echo "Enter a file name:"
#read filename
#echo "Enter a regular expression"
#read regex


#2
##grep search the file ($0) with the regex($1) the user provided
##grep $1 $0
##linux command substitution
##grep <search pattern> <file name>

#grep "$regex" $filename

#3
##grep -c will count the number of lines that match the pattern
count=$(grep -c "[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" regex_practice.txt)
echo "Number of phone numbers found: " $count 

#4.1
##something before @ symbol, something between that and the . then something after
emailCount=$(grep -c "[.+@.+\..+]" regex_practice.txt)
echo "Number of emails found: " $emailCount

#4.2
##^ is anchor at beginning
## grep -o will print only the matching (non-empty) parts of a line
listMe303= grep -o "^303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" regex_practice.txt

#4.3
##read something@geocities.com into new file
##grep <pattern> <file name> >> email_results.txt
geoEmails= grep "@geocities.com$" regex_practice.txt >> email_results.txt

