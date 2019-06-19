#!/bin/bash

DATA_DIR=/Users/byeon/Downloads

cd $DATA_DIR

cp cars_train.tgz ${TMPDIR:=/tmp}
# TMPDIR값이 있으면 그 값을, 없으면 /tmp를 사용
# :=는 변수에 값이 설정되어 있는지 확인해서 값을 대입
# ${변수명:=값} : 변수가 설정되어 있지 않거나 비어 있을 때 지정한 값 대입
# 변수를 초기하고 싶을 땐 :(널 명령어) 사용하면 됨, : ${TMPDIR:=/tmp}
# :=는 변수값을 기본값으로 덮어씀
# :- : 변수값 설정 체크하고 값은 덮어쓰지 않음
# :? : 셀 변수를 돌려줌, ${var:?message}는 셸 변수 var가 미정이거나 빈 문자열이면 message 출력하고 스크립트 종료
# :+ : word를 돌려줌, ${var:+word}는 셸 변수 var가 미정이거나 빈 문자열이면 null을 반환
# flg=${MYDIR:+1}는 MYDIR이 빈 문자열이 아니면 flg를 1로 설정

cd $TMPDIR

tar xzf cars_train.tgz

echo "Extract files to $TMPDIR."