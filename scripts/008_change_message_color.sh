#!/bin/bash

echo "Script Start!!"

# 배경을 회색(47), 문자색을 빨강(31)으로 바꿈
# 이스케이프 시퀀스 작성법 : \033[파라미터m 표시할 문자열 \033[0m
echo -e "\033[47;31m Important Message \033[0m"
echo -e "\033[31m Hi, Red \033[0m"
echo -e "\033[34m Hi! Blue \033[0m"

DARKGRAY='\033[1;30m'
RED='\033[0;31m'    
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'    
YELLOW='\033[1;33m'
BLUE='\033[0;34m'    
PURPLE='\033[0;35m'    
LIGHTPURPLE='\033[1;35m'
CYAN='\033[0;36m'    
WHITE='\033[1;37m'
SET='\033[0m'


echo -e "I ${DARKGRAY}love${SET} github."
echo -e "I ${RED}love${SET} github."
echo -e "I ${LIGHTRED}love${SET} github."
echo -e "I ${GREEN}love${SET} github."
echo -e "I ${YELLOW}love${SET} github."
echo -e "I ${BLUE}love${SET} github."
echo -e "I ${PURPLE}love${SET} github."
echo -e "I ${LIGHTPURPLE}love${SET} github."
echo -e "I ${CYAN}love${SET} github."
echo -e "I ${WHITE}love${SET} github."


echo "Script End!"
