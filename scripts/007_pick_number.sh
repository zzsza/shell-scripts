#!/bin/bash

while :
do
  echo "Menu :"
  echo "1) list file"
  echo "2) current directory"
  echo "3) exit"

  read number
  case $number in
    1)
      echo "you pick 1, ls"
      ls 
      ;;
    2)
      echo "you pick 2, pwd"
      pwd
      ;;
    3)
      echo "you pick 3, bye~"
      exit
      ;;
    *)
      echo "Error, Unknown Command"
      ;;
  esac

  echo

done