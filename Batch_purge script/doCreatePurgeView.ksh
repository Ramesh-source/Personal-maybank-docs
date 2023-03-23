#!/bin/ksh
#######################################################################
# ClearCase STRING
# #@# lsanders C:\\LSanders_view\\CS_7X_SRC\\bci\\arch\\TestDBUpdate\\doTestDBUpdate.ksh@@\\main\\Dev\\1 Mon 01/21/2002  10:51a #$#
######################################################################
# File................: doGenerateOutbound.ksh
# Create Date.........: 10/16/2001
# Author..............: Lee Sanders
# Copyright (C).......: S1 Corporation
# 
# Description.........: 
#  This is a driver script to test the batch process
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

#######################################################################
#
# Configure your audit view here
#
#######################################################################
#
# How many days audit data to keep
#
export DAYS_TO_KEEP="45"
#
# The amound of record in the chunk to delete.
#
export CHUNK_SIZE="1000"
#
# The schema where we want to create view 
#
export SCHEMANAME="DEVUSER"


PROCESS_NAME=CreatePurgeView

ARCStartProcess.ksh -p ${PROCESS_NAME} $*
if [[ $? -ne 0 ]]
then
    exit
fi

ARCDBUpdate.ksh -p ${PROCESS_NAME} $*
if [[ $? -ne 0 ]]
then
    exit
fi

ARCFinishProcess.ksh -p ${PROCESS_NAME} $*
if [[ $? -ne 0 ]]
then
    exit
fi
