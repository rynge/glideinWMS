#!/bin/bash
# https://github.com/HEP-SF/documents/blob/master/HSF-TN/2016-02/HSF-TN-2016-02.pdf

LIBLOCATION=$(dirname $0)
source "$LIBLOCATION/glidein_lib.sh"

TOTAL_CPU=$(getValueFromFileOrURL total_cpu "$MACHINEFEATURES")
HS06=$(getValueFromFileOrURL hs06 "$MACHINEFEATURES")
SHUTDOWNTIME=$(getValueFromFileOrURL shutdowntime "$MACHINEFEATURES")
GRACE_SECS=$(getValueFromFileOrURL grace_secs "$MACHINEFEATURES")

ALLOCATED_CPU=$(getValueFromFileOrURL allocated_cpu "$JOBFEATURES")
HS06_JOB=$(getValueFromFileOrURL hs06_job "$JOBFEATURES")
SHUTDOWNTIME_JOB=$(getValueFromFileOrURL shutdowntime_job "$MACHINEFEATURES")
GRACE_SECS_JOB=$(getValueFromFileOrURL grace_secs_job "$JOBFEATURES")
JOBSTART_SECS=$(getValueFromFileOrURL jobstart_secs "$JOBFEATURES")
JOB_ID=$(getValueFromFileOrURL job_id "$JOBFEATURES")
WALL_LIMIT_SECS=$(getValueFromFileOrURL wall_limit_secs "$JOBFEATURES")
CPU_LIMIT_SECS=$(getValueFromFileOrURL cpu_limit_secs "$JOBFEATURES")
MAX_RSS_BYTES=$(getValueFromFileOrURL max_rss_bytes "$JOBFEATURES")
MAX_SWAP_BYTES=$(getValueFromFileOrURL max_swap_bytes "$JOBFEATURES")
SCRATCH_LIMIT_BYTES=$(getValueFromFileOrURL scratch_limit_bytes "$JOBFEATURES")


echo "MJF_MACHINE_TOTAL_CPU = $TOTAL_CPU"
echo "MJF_MACHINE_HS06 = $HS06"
echo "MJF_MACHINE_SHUTDOWNTIME = $SHUTDOWNTIME"
echo "MJF_MACHINE_GRACE_SECS = $GRACE_SECS"

echo "MJF_JOB_ALLOCATED_CPU = $ALLOCATED_CPU"
echo "MJF_JOB_HS06_JOB = $HS06_JOB"
echo "MJF_JOB_SHUTDOWNTIME_JOB = $SHUTDOWNTIME_JOB"
echo "MJF_JOB_GRACE_SECS_JOB = $GRACE_SECS_JOB"
echo "MJF_JOB_JOBSTART_SECS = $JOBSTART_SECS"
echo "MJF_JOB_JOB_ID = $JOB_ID"
echo "MJF_JOB_WALL_LIMIT_SECS = $WALL_LIMIT_SECS"
echo "MJF_JOB_CPU_LIMIT_SECS = $CPU_LIMIT_SECS"
echo "MJF_JOB_MAX_RSS_BYTES = $MAX_RSS_BYTES"
echo "MJF_JOB_MAX_SWAP_BYTES = $MAX_SWAP_BYTES"
echo "MJF_JOB_SCRATCH_LIMIT_BYTES = $SCRATCH_LIMIT_BYTES"

