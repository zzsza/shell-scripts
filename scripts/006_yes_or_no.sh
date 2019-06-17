#!/bin/bash

echo -n "Would you like continue? [y/n]: "
# 또는 printf 사용

# 현재 터미널 설정을 tty_state에 백업
tty_state=$(stty -g)
stty raw

# 키보드에서 문자 하나 읽고 2 이상은 삭제(/dev/null/)
char=$(dd bs=1 count=1 2> /dev/null)
# dd 명령어는 입출력 블록 크기를 1(bs=1)로 설정하고, 입력->출력으로 복사하는 블록 수를 1(count=1)로 해서 입력된 문자를 char에 저장

# 터미널 설정을 원래대로 돌림
stty "$tty_state"

echo

# 입력 문자에 따른 분기
case "$char" in
    [yY])
        echo "Input: Yes"
        ;;
    [nN])
        echo "Input: NO"
        ;;
    *)
        echo "Input: What?"
        ;;
esac

# read 명령어는 반드시 엔터를 쳐야하는 반면, 이 방법은 키를 누르고 바로 처리함
# stty raw 모드는 키 버퍼 처리를 하지 않아 문자마다 처리할 수 있음
# 참고로 esac는 case를 거꾸로 쓴 것
#   조건들은 )로 끝남
#   각 조건 블록은 이중 세미콜론 ;;
