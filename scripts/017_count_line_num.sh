#!/bin/bash


today="20190703"

wc -l ${today}_log
# wc : word count
# wc -l : 라인 수 count

# Bash일 경우 배열 변수 다룰 때 항상 {}를 써야함
declare -a number=("zero" "one" "two")
echo ${number[1]}
# one
echo $number[1]
# zero[1]