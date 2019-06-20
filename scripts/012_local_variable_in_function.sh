#!/bin/bash

DIR=/var/tmp

ls_home()
{
  # 변수 DIR 을 함수 내부 변수로 정의
  local DIR

  DIR=~/$1
  echo "directory: $DIR"
  ls $DIR
}

ls_home logdir

echo "directory: $DIR"
ls $DIR

# 셸 스크립트는 기본적으로 변수 모두를 전역 변수로 취급함. 함수 안에서 변수를 변경하면 스크립트 전체에 영향을 끼침
