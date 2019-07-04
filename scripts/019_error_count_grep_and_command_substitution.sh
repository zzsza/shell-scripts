#!/bin/bash

err_count=$(grep -c "ERROR" /Users/byeon/Dropbox/workspace/shell-scripts/example/comsub.log)
# grep -c : 검색 후, Count
# 명령어 치환(command substitution) : 출력 결과를 스크립트에서 셸 변수에 대입하고 싶으면 ₩를 사용함
# err_count=$(grep -c "ERROR" ~/Desktop/$(hostname).log) # 이 방법 추천
# err_count=`grep -c "ERROR" ~/Desktop/\`hostname\`).log` # `` # 그레이브를 이스케이프해야 함
echo "Error counts: $err_count"

date_str=`date +"%Y%m%d"`
echo $date_str