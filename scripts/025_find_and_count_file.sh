#!/bin/bash

targetdir="/home/user1/myapp/work"

filecount=$(find "$targetdir" -maxdepth 1 -type f -print | wc -l)
dircount=$(find "$targetdir" -maxdepth 1 -type d -print | wc -l) 
# find [대상 경로] [서술식]
# 서술식은 보통 -name : 특정 이름을 가지는 파일들 찾기
# -type : 파일 종류 지정해서 찾기, -type d(디렉터리), -type f(일반 파일), -type l(심볼릭 링크)
# -maxdepth 1 : 지정 디렉터리만 대상으로 진행, 서브 디렉터리는 포함하지 않음
# -print : 찾은 파일을 그대로 표시
# wc -l : 줄 수 카운트

dircount=$(expr $dircount - 1)
# 자신을 제외하기 위해 제외

echo "대상 디렉터리 : $targetdir"
echo "파일 수: $filecount"
echo "디렉터리 수: $dircount"