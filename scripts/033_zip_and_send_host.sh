#!/bin/bash

username="user1"
server="192.168.1.5"

tar cvf - mypp/log | ssh ${username}@${server} "cat > /backup/myapplog.tar"

# myapp/log 디렉토리를 아카이브한 tar 파일을 192.168.1.5 서버의 /backup 디렉토리에 복사
# 매일 또는 매주 정기적으로 실행하는경우가 존재
# 표준 출력에 tar 아카이브를 출력하는 - 옵션 사용
# c(아카이브 작성), v(처리 파일 표시), f(아카이브 파일 사용)