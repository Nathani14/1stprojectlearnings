#!/bin/bash
set -e

LOG_DIR="logs"
DAYS_TO_KEEP=7

mkdir -p "$LOG_DIR"

TODAY="$(date +%F)"
LOG_FILE="$LOG_DIR/run-$TODAY.log"

echo "============================" | tee -a "$LOG_FILE"
echo "Log run date: $(date)"       | tee -a "$LOG_FILE"
echo "User: $(whoami)"             | tee -a "$LOG_FILE"
echo "Machine: $(hostname)"        | tee -a "$LOG_FILE"
echo "Current folder: $(pwd)"      | tee -a "$LOG_FILE"
echo "============================" | tee -a "$LOG_FILE"

echo "Disk usage:" | tee -a "$LOG_FILE"
df -h | tee -a "$LOG_FILE"

echo "" | tee -a "$LOG_FILE"
echo "Cleaning logs older than $DAYS_TO_KEEP days..." | tee -a "$LOG_FILE"

find "$LOG_DIR" -type f -name "run-*.log" -mtime +$DAYS_TO_KEEP -print -delete || true | tee -a "$LOG_FILE"

echo "Cleanup complete." | tee -a "$LOG_FILE"
echo "Log written to: $LOG_FILE" | tee -a "$LOG_FILE"

