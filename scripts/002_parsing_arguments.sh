#!/bin/bash

while [ "$1" != "" ]; do
    case $1 in
        -s  )   shift	
		SERVER=$1 ;;  
        -d  )   shift
		DATE=$1 ;;
	--parameter|p ) shift
		PARAMETER=$1;;
    esac
    shift
done

echo ${SERVER}
echo ${DATE}
echo ${PARAMETER}
