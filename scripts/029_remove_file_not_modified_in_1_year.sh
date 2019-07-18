#!/bin/bash

# 오래동안 변경되지 않은 파일이나 오래된 로그 파일을 삭제하고 싶을 경우 사용

logdir="/var/log/myapp"

find $logdir -name "*.log" -mtime +364 -print | xargs rm -fv

# xargs : 파일 목록을 인수로 받아서 다음에 나오는 명령을 던짐
# 파이프로 자주 사용하는 패턴임
# rm에서 -f : 파일이 하나도 없을때 에러가 발생하지 않도록
# -v : 삭제한 파일명 표시
# 처음부터 xargs rm -fv 하지말고 처음엔 xargs ls로 확인한 후, 진행하는 것 추천