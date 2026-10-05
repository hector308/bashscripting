#!/bin/bash

LOG_DIR="/Users/nana/logs"
APP_LOG_FILE="application.log"
SYS_LOG_FILE="system.log"
printf "\nApplication errors\n"
echo "analysing log files"
echo "===================="
printf "\nSystem errors\n"
echo -e "\nList of log files updated in last 24 hours"
find "$LOG_DIR" -name "*.log" -mtime -1

echo -e "\nSearching ERROR logs in application.log file"
grep "ERROR" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of ERROR logs found in application.log"
grep -c "ERROR" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of FATAL logs found in application.log"
grep -c "FATAL" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of FATAL logs found in system.log"
grep -c "FATAL" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\nNumber of CRITICAL logs found in system.log"
grep -c "CRITICAL" "$LOG_DIR/$SYS_LOG_FILE"

echo -e "\nCRITICAL logs in system.log file"
grep "CRITICAL" "$LOG_DIR/$SYS_LOG_FILE"
#!/usr/bin/env bash
echo "Application errors"
grep -i "ERROR" logs/application.log
echo "System errors"
grep -i "ERROR" logs/system.log

./analyze_logs.sh          # try it now — what happens?
chmod +x analyze_logs.sh
./analyze_logs.sh          # try again

