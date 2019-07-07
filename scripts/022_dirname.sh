#!/bin/bash

echo "$(dirname "$0")"
cd "$(dirname "$0")"

# dirname "$0" 은 디렉토리 부분만 추출
# dirname /Users/byeon/Dropbox/workspace/shell-scripts/scripts/022_dirname.sh 이런 식으로 하면
# /Users/byeon/Dropbox/workspace/shell-scripts/scripts 만 나옴
# cron 실행할 경우, 실행 사용자의 홈 디렉토리에서 실행되기 때문에 이런 식으로 처리해줘야 정상적으로 작동함