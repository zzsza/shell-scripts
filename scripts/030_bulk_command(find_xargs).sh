#!/bin/bash

logdir="/var/log/myapp"

find $logdir -name "*.log" -print | xargs grep "ERROR" /dev/null
# 확장자가 .log 파일에서 ERROR 문자열 검색
# 너무 많을 경우 Argument list too ling 에러가 발생하는데, ARG_MAX 상한선 때문일 수 있음
# 아래 명령어로 상한값 확인 가능
getconf ARG_MAX
# /dev/null 이 있는 이유 : grep 출력에 파일명을 포함하기 위함 
# grep "ERROR" * 에서 파일 수에 따라 결과 ㅜㄹ력이 달라지는데, /dev/null을 추가하면 늘 복수 개의 파일을 대상으로 실행되서 파일명이 표시됨
# grep "ERROR" *이 복수일 경우
# <파일명>:<일치한 줄>
# grep "ERROR" *이 단수일 경우
# <일치한 줄>