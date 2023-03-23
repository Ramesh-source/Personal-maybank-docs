set echo on;
spool commonInstall.log;
set define off;

@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\001_applicationMaster.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\002_processDefinition.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\003_humanNodeDefn.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\004_urlPaths.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\005_processInstanceDefinition.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\006_taskInstanceDetails.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\007_config.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\008_taskRequestParam.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\009_taskInstSecurityParams.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\010_taskSecurityParams.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\011_DMN_RULES_DEFINITION.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\012_APPLICATION_ANNOUNCEMENT.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\013_PATCH_INFORMATION.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\014_FAQ_DETAILS.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\015_FAQ_MASTER.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\016_DEFAULT_APPLICATION_SETTINGS.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\017_APP_URL_MGMT.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\018_MESSAGE_MASTER.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\019_APP_PKG_LOG_LEVEL.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\020_MESSAGE_LOCALE_DETAILS.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\021_USER_LOGIN_INFO.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\022_USER_PREFERENCES.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\023_DATA_GROUP_ROLE_MAP.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\024_ROLE_MASTER.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\025_AUDIT_TASK_EVENT.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0010_Tables\026_HUMAN_NODE_ACCESS_GROUP_MAP.sql

@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0020_Indexes\001_INDEXES.sql

@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\001_configSequence.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\002_dmnRuleDefinitionSeq.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\003_humanNodeDefinitionSeq.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\004_processDefinitionSequence.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\005_processinstancedetailsSequence.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\006_taskInstanceDetailsSequence.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\007_taskInstSecuritySequence.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\008_taskRequestSequence.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\009_taskSecurityParamSequence.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\010_urlPathValueSeq.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\011_auditTaskEventSeq.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0030_Sequences\012_HUMAN_NODE_ACCESS_GROUP_MAP_SEQUENCE.sql

@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0020_DML\001_applicationMasterDML.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0020_DML\002_configDML.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0020_DML\003_urlPathDML.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0020_DML\004_FAQ_MASTER.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0020_DML\005_DEFAULT_APPLICATION_SETTINGS.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0020_DML\006_MESSAGE_MASTER.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0020_DML\007_MESSAGE_LOCALE_DETAILS.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0020_DML\008_USER_PREFERENCES.sql
@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0020_DML\009_TASK_SECURITY_PARAMS.sql

@@E:\PraveenK\WorkFlowServices_Installer\1.1.0.0\dbscripts\0010_DDL\0080_StoredProcedures\001_DynamicTaskSecViewCreator.sql

commit;
set define on;
spool off;
set echo off;