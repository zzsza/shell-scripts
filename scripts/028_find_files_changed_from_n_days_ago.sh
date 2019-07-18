#!/bin/bash

logdir="/var/log/myapp"

find $logdir -name "*.log" -mtime -4 mtime +1 -print
# 4일 전에저 2일 전까지 갱신된 로그 파일 목록을 표시함
# 파일 검색시 확장자 지정은 find의 -name에 작성함
# 파일 변경일을 확인할 경우 -mtime를 사용
# -n : n일 전 이후
# n : n+1일 전부터 n일까지
# +n : n일전보다 과거


# 수정한지 20일 이상(-mtime +20)된 파일과 디렉토리 출력
find $logdir -mtime +20 -ls 

# 수정한지 20일 이상된 파일만 출력
find $logdir -mtime +20 -type f -ls


# 수정한지 20일 이상된 파일만 삭제 ( -exec rm {} \; ) 
# (정기적으로 20일이 지난 파일을 삭제할 때 유용)
find $logdir -mtime +20 -type f -ls -exec rm {} \;

# 수정한지 3일 이내( -mtime -3 )의 파일만 (백업할 때 유용)
find $logdir -mtime -3 -type f -ls

# 수정한지 30분 이내( -mmin -30 )의 파일만
find $logdir -mmin -30 -type f -ls