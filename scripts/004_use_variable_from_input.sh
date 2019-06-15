#!/bin/bash

echo -n "Enter your ID: "

read ID
echo "Now your ID is $ID"

echo -n "Enter your Name: "

read NAME
echo "Hello! $NAME"

echo "Input any key to continue..."
read dummy

echo "Start"
# 입력값을 얻을 경우 read 사용, Python의 input()과 유사
# 그냥 입력을 대기하고 싶을 경우에도 read 사용 가능