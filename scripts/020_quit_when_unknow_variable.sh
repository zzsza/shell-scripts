#!/bin/bash

set -u
# set -u : 스크립트 내부에서 미정의 변수를 참조할 떄 에러가 발생함
# 미정의 변수를 쓰게 될 떄 에러를 표시 : unbound variable

# set -u의 부작용
# 명령행 인수 $1을 다루기 힘들어짐

COPY_DIR=/myapp/work

cp myapp.log $COP_DIR
# COP_DIR라고 실수할 경우

# ./set-u.sh 1
echo "1st arg: $1"
# 1st arg: 1
echo "2nd arg: $2"
# unbound variable 