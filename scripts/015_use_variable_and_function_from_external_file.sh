#!/bin/bash


# env.sh 파일을 닷 명령어로 읽음 : 마치 소스 파일이 그대로 삽입된 것처럼 파일 내부 명령어가 실행
# bash엔 . 와 source와 동일한 역할을 함
# env.sh엔 WORK_DIR 변수와 nowtime() 함수가 구현되어 있음

. ./env.sh

nowtime
cp -i -v large-file.tar.gz "$WORK_DIR"
nowtime

# 닷 명령어를 사용하면 의존 관계가 생기는데, 팀마다 결정하면 좋을 듯
# 이동이 간단해서 의존 관계를 쉽게 해결할 수 있음
# 대상 파일이 없으면 에러가 발생함. -f로 파일 존재 여부를 확인하면 좋음
# 예시 [ -f /etc/sysconfig/sshd ] && . /etc/sysconfig/sshd