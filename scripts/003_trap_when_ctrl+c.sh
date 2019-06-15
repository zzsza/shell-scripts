#!/bin/bash

count=0
trap ' echo
      echo "Try count:$count"
      exit ' INT

while :
do
  curl -o /dev/null $1
  count=$(expr $count + 1)
  sleep 1
done

# while : 띄어쓰기 do를 작성해야 함
# trap은 종료 시그널을 받을 때 로그를 출력하거나 현재 상태를 표시하는 등을 할 때 자주 사용됨