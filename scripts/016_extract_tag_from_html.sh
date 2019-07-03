#!/bin/bash

filename="example/myapp.log"

eval $(sed -n "s/<code>\(.*\)<\/code>/\1/p" "example/command.htm")

# <code> 태그 부분을 패턴 매치해서 추출
# sed 명령어를 통해 문자열 추출, -n 옵션 : 패턴 스페이스 내용을 출력하지 않음
# 마지막에 p 플래스를 붙여서 일치할 때만 패턴 스페이스를 출력
# -n 옵션 + p 플래그를 사용해 치환이 발생한 줄만 출력할 수 있는 테크닉
# eval로 변수 확장해서 명령어 실행
# eval : 인수에 넘어온 문자열을 변수 확장해서 명령어로 실행. 텍스트 문자열을 명령어로 쓸 수 있어서 편함

# command.htm
# <html>
# <head><title>Code List</title></head>

# <body>
# <p>This is a sample code.</p>
# <code>date; ls -l $filename</code>

# </body>
# </html>