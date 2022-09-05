#!/bin/bash
while :
do
echo "Enter two numbers: "
read a b
re='^[0-9]+$'
if ! [[ $a =~ $re ]] ; then
   echo "error: Not a number" >&2; exit 1
fi
re='^[0-9]+$'
if ! [[ $b =~ $re ]] ; then
   echo "error: Not a number" >&2; exit 1
fi
if [[ -z "$a" ]]; then
echo "bye"
break
fi
gcd() (
    if (( $1 % $2 == 0)); then
        echo $2
     else
        gcd $2 $(( $1 % $2 ))
    fi
)
echo -n "Their GCD is "
gcd $a $b

done
