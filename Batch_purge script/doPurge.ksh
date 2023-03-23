#!/bin/ksh
#######################################################################
#
#
#######################################################################
# File................: doPurge.ksh
# Create Date.........: 2/04/2004
# Author..............: Mike Reidy
# Copyright (C).......: S1 Corporation
# 
# Description.........: 
#  This is a driver script to run the batch audit purge process
#
# Dependencies........:
#  Calls:     -- None -- 
#  Called By: 
#
# Modification  History:
#  Date       Who         Description 
#  ---------- ----------  -------------------------------------------
#  
#######################################################################

PROCESS_NAME=Purge

#
# How many days audit data to keep
#
export DAYS_TO_KEEP="45"
#
# The amound of record in the chunk to delete.
#
export CHUNK_SIZE="1000"

ARCStartProcess.ksh -p ${PROCESS_NAME}
if [[ $? -ne 0 ]]
then
    exit
fi

ARCDBGenerateFile.ksh -p ${PROCESS_NAME}
if [[ $? -ne 0 ]]
then
    exit
fi

ARCRunBatchProgram.ksh -p ${PROCESS_NAME}
if [[ $? -ne 0 ]]
then
    exit
fi

ARCFinishProcess.ksh -p ${PROCESS_NAME}
if [[ $? -ne 0 ]]
then
    exit
fi
