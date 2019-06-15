#!/bib/bash

username=guest
hostname=localhost

echo -n "Password: "
stty -echo
read password

# stty echo

echo
wget -q --password="$password" "ftp://${username}@${hostname}/filename.txt"

# 에코백 : 입력한 문자를 화면에 표시하도록 설정하는 기능
# 에코백 OFF는 stty -echo
# 입력하라고 한 후, 에코백 OFF하고 사용자 input을 받음
# wget -q를 하면 결과나 에러 메세지가 나오지 않음