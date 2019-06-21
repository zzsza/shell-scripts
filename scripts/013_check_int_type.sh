#!/bin/bash


# test 명령어로 $1이 0과 같은지 -eq로 확인하고, /dev/null로 리다이렉트해서 버림
# 처리의 종료 스테이터스($?)는 다음과 같음
# 인수가 0과 같으면 0
# 인수가 0이 아니면 1
# 인수가 0과 비교 불가능한 문자열이면 2
# 2보다 작으면 정수로 보고 그대로 계산, 정수가 아니면 에러 종료

test "$1" -eq 0 2>/dev/null

if [ $? -lt 2 ]; then
  echo "Argument is Integer"
  expr 10 + $1
else
  echo "Argument is not Integer"
  exit 1
fi

