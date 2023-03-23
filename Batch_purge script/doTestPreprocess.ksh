#!/bin/ksh
#######################################################################
# ClearCase STRING
# #@# MShamis C:\\MShamis_view_CLEAN\\CS_7X_SRC\\bci\\arch\\TestPreprocess\\doTestPreprocess.ksh@@\\main\\Dev\\1 Fri 01/25/2002   3:31p #$#
######################################################################
# File................: doTestPreprocess.ksh
# Create Date.........: 01/23/2002
# Author..............: Michael Shamis
# Copyright (C).......: S1 Corporation
# 
# Description.........: 
#  This is a driver script to test the batch preprocess
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

PROCESS_NAME=TestPreprocess

#  This path name needs to be explicitly set at each site to include
#  the bci common directory.  It is ${BANK_ROOT_DIR}/bci/common
#  Cannot use the $BANK_ROOT_DIR variable here, though, because it is
#  not set by the time this is run
#PATH=${BCI_HOME}/common:${PATH}:.

ARCStartProcess.ksh -p ${PROCESS_NAME}
if [[ $? -ne 0 ]]
then
    exit
fi

#  ARCCopyFile is used in the development environment.  Most likely
#  this should be an ftp process in a production environment.  This
#  will require changing this command to
#  ARCFtpDownload.ksh -p ${PROCESS_NAME} and setting the correct
#  parameters in the config file.
ARCCopyFile.ksh -p ${PROCESS_NAME}
if [[ $? -ne 0 ]]
then
    exit
fi

ARCPreprocess.ksh -p ${PROCESS_NAME}
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
