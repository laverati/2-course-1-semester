

#!/bin/bash


echo "Enter your name: "
read name
echo "Enter your age: "
read age

if [ $age -le 16 ];
then
       	echo "$name, your group is child"
elif [ $age -le 25 ];
then
	echo "$name, your group is youth"
else
	echo "$name, your group is adult"
fi

