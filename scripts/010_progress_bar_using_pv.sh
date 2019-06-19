#!/bin/bash

# pv 설치 (Mac OS)
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
# brew install pv

DATA_DIR=/Users/byeon/Downloads

cd $DATA_DIR

tar cf - cars_train.tgz | pv | gzip > archive.tar.gz

# tar 명령어와 gzip 명령어로 큰 파일을 아카이브할 때 처리 진행 상태를 pv 명령어로 표시
# 현재 처리중인 파일을 표시할 땐 v 옵션,  아카이브 작성은 c 옵션, 파일로 작성은 f 옵션
# cf 뒤에 -는 명령어 출력을 파일이 아닌 표준 출력으로 보내겠다고 지정하는 것

# pv : Pipe Viewer
# 파이프 처리 중 데이터 흐름을 가시화
# -a : 진행바가 아닌 파이프에 흐르는 데이터 평균 속도 표시
# -b : 바이트 숫자만 표시하고 진행바 표시 안함
# -L : 파이프 전송량 제한
# -q : 조용한 모드
# -s : 파이프에 흐르는 데이터 크기 지정