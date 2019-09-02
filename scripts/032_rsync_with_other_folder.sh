#!/bin/bash

log_dir="/home/user1/myapp/log"
backup_dir="/backup/myapp"

# log_dir 안에 있는 로그 파일을 backup_dir 디렉토리에 복사

rsync -av "$log_dir" "$backup_dir"
# rsync는 새롭게 생긴 파일만 차분
# 복사할 때 원본과 대상의 차이를 바탕으로 갱신된 파일만 복사해 효율적
# 파일 타임스탬프, 퍼미션, 소유자 정보 등 파일 속성을 그대로 복사할 수 있음
# ssh를 사용해 원격 서버에서도 복사할 수 있음
# -a : 아카이브 모드, 자주 사용하는 옵션을 하나로 묶은 옵션으로 파일 타임스탬프, 퍼미션, 소유자 정보를 그대로 복사
# -v : verbosed 모드, 상세모드, 복사하는 파일 목록과 전송량을 표시하는 옵션
# -n : dry run 모드, 실제 파일 복사는 하지 않고 처리될 대상 파일 목록만 출력함

# 원격 서버에서 사용시 "사용자명@호스트명:"을 지정
# rsync -av -e ssh /home/user1/myapp/log user1@server1:/backup/myapp
# 복사 원본에서 지워진 파일을 복사 대상에서도 지우고 싶을 경우 --delete 옵션 사용