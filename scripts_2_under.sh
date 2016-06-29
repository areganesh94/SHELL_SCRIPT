
cat service


#!/bin/bash

# This script iterates over a list of services and
# is used to determine whether they are running or not.

for service in $(cat myservices.txt); do
    	systemctl status $service | grep --quiet "running"
    	if [ $? -eq 0 ]; then
            	echo $service "is [ACTIVE]"
    	else
            	echo $service "is [INACTIVE or NOT INSTALLED]"
    	fi
done



#!/bin/bash

# This script iterates over a list of services and
# is used to determine whether they are running or not.

if [ -f myservices.txt ]; then
    	for service in $(cat myservices.txt); do
            	systemctl status $service | grep --quiet "running"
            	if [ $? -eq 0 ]; then
                    	echo $service "is [ACTIVE]"
            	else
                    	echo $service "is [INACTIVE or NOT INSTALLED]"
            	fi
    	done
else
    	echo "myservices.txt is missing"
fi

cat myhost

#!/bin/bash

# This script is used to demonstrate the use of a while loop

while read host; do
    	ping -c 2 $host
done < myhosts



Script 1: Drawing a Special Pattern
#!/bin/bash
MAX_NO=0
echo -n "Enter Number between (5 to 9) : "
read MAX_NO
if ! [ $MAX_NO -ge 5 -a $MAX_NO -le 9 ] ; then
   echo "WTF... I ask to enter number between 5 and 9, Try Again"
   exit 1
fi
clear
for (( i=1; i<=MAX_NO; i++ )) do     for (( s=MAX_NO; s>=i; s-- ))
    do
       echo -n " "
    done
    for (( j=1; j<=i;  j++ ))     do      echo -n " ."      done     echo "" done ###### Second stage ###################### for (( i=MAX_NO; i>=1; i-- ))
do
    for (( s=i; s<=MAX_NO; s++ ))
    do
       echo -n " "
    done
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " ."
    done
    echo ""
done
echo -e "\n\n\t\t\t Whenever you need help, Tecmint.com is always there"


COLORIN
#!/bin/bash
clear 
echo -e "33[1m Hello World"
# bold effect
echo -e "33[5m Blink"
# blink effect
echo -e "33[0m Hello World"
# back to normal
echo -e "33[31m Hello World"
# Red color
echo -e "33[32m Hello World"
# Green color
echo -e "33[33m Hello World"
# See remaining on screen
echo -e "33[34m Hello World"
echo -e "33[35m Hello World"
echo -e "33[36m Hello World"
echo -e -n "33[0m"
# back to normal
echo -e "33[41m Hello World"
echo -e "33[42m Hello World"
echo -e "33[43m Hello World"
echo -e "33[44m Hello World"
echo -e "33[45m Hello World"
echo -e "33[46m Hello World"
echo -e "33[0m Hello World"



Encrypt a File/Directory::
[root@midstage ~]# yum install pinentry-gui
[root@midstage ~]# apt-get install pinentry-gui

#!/bin/bash
echo "Welcome, I am ready to encrypt a file/folder for you"
echo "currently I have a limitation, Place me to thh same folder, where a file to be 
encrypted is present"
echo "Enter the Exact File Name with extension"
read file;
gpg -c $file
echo "I have encrypted the file successfully..."
echo "Now I will be removing the original file"
rm -rf $file

Checking Server Utilization
#!/bin/bash
    date;
    echo "uptime:"
    uptime
    echo "Currently connected:"
    w
    echo "--------------------"
    echo "Last logins:"
    last -a |head -3
    echo "--------------------"
    echo "Disk and memory usage:"
    df -h | xargs | awk '{print "Free/total disk: " $11 " / " $9}'
    free -m | xargs | awk '{print "Free/total memory: " $17 " / " $8 " MB"}'
    echo "--------------------"
    start_log=`head -1 /var/log/messages |cut -c 1-12`
    oom=`grep -ci kill /var/log/messages`
    echo -n "OOM errors since $start_log :" $oom
    echo ""
    echo "--------------------"
    echo "Utilization and most expensive processes:"
    top -b |head -3
    echo
	top -b |head -10 |tail -4
    echo "--------------------"
    echo "Open TCP ports:"
    nmap -p- -T4 127.0.0.1
    echo "--------------------"
    echo "Current connections:"
    ss -s
    echo "--------------------"
    echo "processes:"
    ps auxf --width=200
    echo "--------------------"
    echo "vmstat:"
    vmstat 1 5


Check Disk Space and Sends an Email Alert

MAX=95
EMAIL=USER@domain.com
PART=sda1
USE=`df -h |grep $PART | awk '{ print $5 }' | cut -d'%' -f1`
if [ $USE -gt $MAX ]; then
  echo "Percent used: $USE" | mail -s "Running out of disk space" $EMAIL
fi








