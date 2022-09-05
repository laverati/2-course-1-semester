#!/bin/bash

echo -n "How many students?"
echo ""
read STUDENTS

echo "$STUDENTS"

case $STUDENTS in

  0)
    echo "No students"
    ;;

  1)
    echo "1 student"
    ;;

  2)
    echo "2 students"
    ;;

  3)
    echo "3 students"
    ;;
  4)
    echo "4 students"
  ;;
  *)
    echo "A lot of students"
    ;; 
esac
