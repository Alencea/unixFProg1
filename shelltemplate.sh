#!/bin/bash
#######################
##
## shelltemplate.sh
##	Author:		Iain
##	Date:		10/26/2022
##	last Revised:	10/26/2022
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
if [[ $# -ne 1]]
then
  echo -e $RED"Error Message"$DEFAULT
  exit 1
fi
#####################################



exit 0
#####################################


