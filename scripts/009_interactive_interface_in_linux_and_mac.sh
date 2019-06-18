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
# tell app "앱 이름" : 앱에서
# to display dialog "팝업 내용" : 팝업 내용으로 창을 띄우고
# with title "타이틀 이름" : 타이틀 이름의 제목을 가지고
# buttons {"yes", "no"} : yes와 no 2개 버튼을 가진 것을 만들어라!
# 결과는 return.tmp에 저장해라

return_value=$(awk -F / '{split($1, arr, ":"); print arr[2]}' return.tmp)
# awk -F : 입력 필드를 나눌 때 $1 $2로 사용할 수 있음 
# split($1, arr, ":") : $1 값을 ":"로 split하고 그 결과를 arr에 넣어라
# 맨 뒤에 return.tmp는 이걸 읽어서

echo "$return_value"
rm -f return.tmp