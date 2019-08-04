#!/bin/bash

# 어떤 파일을 백업할 때 현재 날짜를 넣어서 간단히 복사하고 싶은 경우

config='myapp.conf'
back_filename="${config}.$(date '+%Y%m%d')"

# 만약 date까지 중복이 있따면 초까지 넣어서 백업 파일 작성
if [ -e $back_filename ]; then
  back_filename="${config}.$(date '+%Y%m%d%H%M.%S')"
fi

cp -v "$config" "$back_filename"
# -v 옵션으로 어떤 파일명으로 복사하는지 표시