#!/bin/bash
echo "hello"
echo ${0}
FILE_NAME=${0}
LOG_FILE=&{FILE_NAME%.*}_$(date +%Y%m%d%H%M%S).log
echo "$(date)" | tee $LOG_FILE
echo "data now : $(date +%Y%m%d) " | tee -a $LOG_FILE
echo "data now : $(date +%Y)년   $(date +%m)월 $(date +%d)일 " | tee -a $LOG_FILE
echo "$(date +%H) 시  $(date +%M) 분  $(date +%S) 초 입니다." | tee -a $LOG_FILE
NowDate=`date` | tee -a $LOG_FILE
echo $NowDate | tee -a $LOG_FILE
