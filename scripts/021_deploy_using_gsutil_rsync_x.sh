#!/bin/bash

BASEDIR=$(dirname "$0")
TARGET_GS_PATH="gs://your_google_storage_bucket_path"

gsutil -m rsync -x ".*DS_Store|.*__pycache__/.*|.*\.csv$|.*idea/.*|.*env/.*" -p -r ${BASEDIR}/ ${TARGET_GS_PATH}
# DS_Store, pycache 폴더, csv 파일, idea 폴더 등을 제외하고 해당 폴더로 넘김
# gsutil -m : 병렬로 데이터 동기화 (속도 빠름)
# rsync -x : 파이썬 regular expression으로 이거 제외함
# -p : --project로 기본 프로젝트를 사용
# -r : recursive, 폴더 통째로 옮김