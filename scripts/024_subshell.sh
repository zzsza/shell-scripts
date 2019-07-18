#!/bin/bash

(
  echo "Archive: /var/tmp/archive.tar"
  cd /var/tmp
  tar cvf archive.tar *.txt
)
# 괄호 안은 서브셸이 됨
# 서브셸 : 현재 셸 안에서 새롭게 실행되는 셸
# 서브셸 내부에서 일어나는 변경은 호출한 원래 셸에는 영향을 주지 않음
# 유닉스의 부모와 자식처럼, 호출한 곳은 부모 프로세스고 서브셸은 자식 프로세스가 됨
# 서브셸의 변수를 변경해도 원래 셸에선 반영되지 않음
# 서브셸은 "호출한 곳의 환경이 변하지 않는 성질"을 이용해 폴더를 이동하고 다시 움직인 것처럼 진행됨

echo "Start: command.sh"
./command.sh

# 폴더 이동 후, 압축 => 현재 폴더의 command.sh 실행