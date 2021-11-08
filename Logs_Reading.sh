#!/usr/bin/env bash

#logs="C:\Users\ElTaherH\Desktop\logs.txt"
logs="$1"
echo $logs
# change it with input parameter 1
tail -f $logs | \
while read line; 
do
	if [[ "$line" == *"500"* ]]
	then
		variable=$(echo "$line" | awk '{print $7}')
		echo "HTTP 500 ON" $variable
		#echo "$line"  | grep "Error"
	# 500 instead error
	#statements
	# mail -s 'message subject' alert@project.com <<< $variable
	fi

	#echo "$line" | awk '{print $3}'
	
done



