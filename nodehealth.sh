#!/bin/bash
#
###############################
#
#Author: Vinay Vardhan
#Date: April 1st 2025
#
#This scripts outputs the nodehealth
#
###############################
#

set -x # debug the code
set -e # exit the script when there is an error
set -o # pipefail

********Disk Space*********
#echo "Disk space"
df -h

********Memory*********
#echo "memory"
free -g

********CPU*********
#echo"CPU"
nproc

********Process*********
ps -ef | grep amazon | awk F" " '{print $2}' # list the running process
