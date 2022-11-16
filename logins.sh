#!/bin/bash
#######################
##
## shelltemplate.sh
##	Author:		Iain Gilley
##	Date:		11/16/2022
##	last Revised:	11/16/2022
##	description:	
##
#######################

#colored text
DEFAULT="\e[39m"
RED="\e[31m"
BULE="\e[34m"
GREEN="\e[32m"
PURPLE="\e[35m"
CYAN="\e[36m"
horiz_line="============================"

##     Error checking ###############
if [[ $# -ne 1 ]]
then
  echo -e $RED"Error Message"$DEFAULT
  exit 1
fi
#####################################

COUNT=0 # loop counter
stuff=$(last -w | head -n -2 | cut -d' ' -f1 | sort | uniq )
##echo $stuff | cut -d' ' -f1
while read -r line
do
(( COUNT++ ))
name=$stuff | cut -d' ' -f$COUNT
if [ !-z "$name"]
then
echo $name
fi


done <$1
echo "end"

exit 0
#####################################


