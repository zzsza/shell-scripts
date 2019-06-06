#!/bin/bash
START=$(date +%s)

echo "Calculate run-time"

# put your script 
sleep 3

END=$(date +%s)
DIFF_SECOND=$(( $END - $START ))
DIFF_MINUTE=$(( $DIFF_SECOND / 60 ))

echo ${DIFF_SECOND}
