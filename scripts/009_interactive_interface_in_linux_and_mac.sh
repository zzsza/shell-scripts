#!/bin/bash

LOG_DIR=/myapp/ap1/log

# # Linux
# # dialog 명령어로 달력 출력
# # 선택한 날짜는 표준 에러 출력이라 임시 파일에 리다이렉트
# dialog --calendar "Select Date" 2 60 2 >cal.tmp

# # 달력은 년월일로 바꿈
# date_str=$(awk -F / '{print $3$2$1}' cal.tmp)

# # 취소되면 임시 파일을 삭제하고 종료
# if [ -z "$date_str" ]; then
#   rm -f cal.tmp
#   exit
# fi

# rm -i ${LOG_DIR}/app_log.$date_str

# rm -f cal.tmp

# Mac은 dialog가 없고 osascript가 존재
osascript -e 'tell app "iTerm" to display dialog "Hello! Popup" with title "script" buttons {"yes","no"}' 2 >return.tmp

return_value=$(awk -F / '{split($1, arr, ":"); print arr[2]}' return.tmp)
echo "$return_value"
rm -f return.tmp