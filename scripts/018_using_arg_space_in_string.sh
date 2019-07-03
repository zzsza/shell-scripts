#!/bin/sh

result="invalid value"

if [ "$result" = "invalid value" ]; then
  echo "ERROR: $result" 1>&2
  exit 1
fi

# 공백을 포함한 문자열 취급이 핵심
# 변수 구분자는 셸 변수 IFS에 정의되어 있는데, 기본값은 공백 기호, 탭, 줄 바꿈으로 되어 있음
# 즉, 공백은 변수 구분자를 뜻함
# 공백이 포함된 문자열이 저장된 변수를 따옴표 처리하지 않으면 쪼개진 것처럼 인식함
# 따옴표 없이 $result라고 하면 if [ invalid value = "invalid value" ]; then 꼴이 되서 인수가 많다는 에러가 뜸
# 공백 문자를 포함하든지 안하든지 따옴표 처리를 하는 것이 좋음