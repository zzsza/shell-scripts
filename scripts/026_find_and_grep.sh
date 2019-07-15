#!/bin/bash

logdir="/var/log/myapp"

find $logdir -name "*.log" -print | xargs grep "ERROR" /dev/null

# find 명령어로 파일 목록을 출력해서 xargs로 명령어 받아서 grep 실행함
# 파일에 공백 문자가 포함되면 에러가 발생함. 공백을 다루려면 -print0 옵션을 이용해야 함