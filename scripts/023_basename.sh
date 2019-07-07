#!/bin/bash

prog=$(basename "$0")
# basename은 dirname과 다르게 파일명만 추출함
# basename /Users/byeon/Dropbox/workspace/shell-scripts/scripts/023_basename.sh
# return : 023_basename.sh
# prog=${0##*/} 이렇게 사용할수도 있음. 셸 파라미터 확장을 이용함
# ${parameter##word} 는 parameter값에서 word에 마지막으로 일치하는 부분을 삭제한 값을 얻을 수 있음

# $0을 사용하는 것은 시스템 도구에서 자주 사용됨

# 인수가 하나가 아니면 도움말을 표시하고 종료
# $# : 인수의 수가 들어있음
if [ $# -ne 1 ]; then
  echo "Usage: $prog <string>" 1>&2
  # 에러메세지라 1>&2로 표준 에러 출력 사용함
  exit 1
fi

echo "Start: $prog"
echo " Input Argument: $1"
echo "Stop: $prog ..."


# 도움말 표시나 로그 출력시 파일명을 출력하고 싶은 경우 사용
