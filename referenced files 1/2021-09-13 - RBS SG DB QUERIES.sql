update SONEDBA.PSOORG set BRNCHBUSNSSDT = current date where cororgky = 14851574;

update SONEDBA.PSOORG set BRNCHCLSDT = current timestamp - 1 day where cororgky = 14851574;

select * from SONEDBA.FSTOpenDrawer where fstdrawerky=  31002;

update SONEDBA.FSTOpenDrawer set BUSINESSDATE = current date  where FSTDRAWERKY = 31002;
3
select * from FSTFOREXARTICLE WHERE DATE(UPDATEDTTM)=current date


SELECT * FROM MBBAGENTINFRMTN WHERE  AGENTCD = 'BKTRUS33' AND NOSTROACCOUNTNO='115120' AND CNTRY IN ('US');	

-- Delete  BKTRUS33 (Deutshe Bank trust) in MBBAGENTINFRMTN table --

DELETE FROM  MBBAGENTINFRMTN WHERE AGENTCD = 'BKTRUS33' AND NOSTROACCOUNTNO='115120' AND CNTRY IN ('US');

-- After DELETE --

SELECT * FROM MBBAGENTINFRMTN WHERE  AGENTCD = 'BKTRUS33' AND NOSTROACCOUNTNO='115120' AND CNTRY IN ('US');	
--------------------------------------- 
-- to update the workstation id to perticular branch
-----------------------------------------
select * from fstterminal where name = 'L130300018'
select * from fstorg where id=133
select * from CORORG where CORORGKY=14851574 // Get the branch name using of branchid

update fstterminal set fstorgky = 3 where name = 'L130300018'
// HADAPSER - 14851574
// Maybank - Balister - 8506

or

update fstterminal set name='L1303000182' where fstorgky=8506;
commit;


----------------------------------------


--Main tables for EJ data
--------------------------------

select * from PSOBASETRAN

delete from fstbasetran where updateuser='ramsup'

select * from fsttotal where opid='ramsup'

select * from FSTJOURNALENTRY where DATETIME =  '22/2/2016 08:00:00.000' AND '22/2/2016 12:00:00 PM'
select * from FSTJOURNALENTRY where BUSINESSDATE='2016-06-17' order by DATETIME desc

select FSTJOURNALENTRYKY, JOURNAL_NRfrom FSTJOURNALENTRY where DATETIME =  '22/2/2016 08:00:00.000' AND '22/2/2016 12:00:00 PM'
ates >= '2012-10-26 00:00:00.000' and dates <= '2012-10-27 23:59:59.997'

select * from FSTJOURNALENTRY where drawer_id = 2 
------------------------------------------------------

-- 4375 Defect changes--
------------------------------------------------------

select * from MBBAGENTINFRMTN

-------------------------------------------------------


--4438 & 4439 Defect Changes
-----------------------------

SELECT * FROM SYSCAT.COLUMNS WHERE TABNAME ='FSTJOURNALENTRY' AND TABSCHEMA='SONEDBA' AND COLNAME ='FOREX_DRAWER_ID';

    ALTER TABLE FSTJOURNALENTRY ADD COLUMN FOREX_DRAWER_ID BIGINT

CALL SYSPROC.ADMIN_CMD('REORG TABLE FSTJOURNALENTRY')

select FSTJOURNALENTRYKY,DRAWER_ID,OP_ID,TX_NAME,FOREX_DRAWER_ID,JOURNAL_NR from FSTJOURNALENTRY where BUSINESSDATE ='2016-02-04' and JOURNAL_NR =1896 order by DATETIME desc

select * from PSOBASETRAN

COMPARTMENTNAME
FOREX_DRAWER_ID
-----------------------------

Check the groups
------------------------
select * from ARCPRINCIPAL where name like 'OFF-BROP%' with ur
select * from ARCPRINCIPAL where name like 'OFF-MBTW%' with ur


select * from ARCPRINCIPAL where name = 'OFF-BROP-WM1'

Select * from ARCGRANT



select A.Name as userName , A.ARCPRINCIPALKY as tellerky, B.Name as groupName, B.ARCPRINCIPALKY as groupky from 
(select grp.ARCPRINCIPALKY usracrplky , grp.ARCPRINCIPALKYGRP grparcplky  from ARCPRINCIPALGRP grp ) gropInfo ,
ARCPRINCIPAL A, ARCPRINCIPAL B
where  gropInfo.usracrplky = A.ARCPRINCIPALKY  and gropInfo.grparcplky = B.ARCPRINCIPALKY  and B.Name='OFF-BROP-WM1' order by userName   with ur

select * from ARCGRANT AG INNER JOIN ARCOPERATION AO ON AG.ARCOPERATIONKY=AO.ARCOPERATIONKY WHERE AG.ARCPRINCIPALKY=(select ARCPRINCIPALKY from ARCPRINCIPAL where NAME='Administrators') with ur

select A.Name as userName , A.ARCPRINCIPALKY as tellerky, B.Name as groupName, B.ARCPRINCIPALKY as groupky from 
(select grp.ARCPRINCIPALKY usracrplky , grp.ARCPRINCIPALKYGRP grparcplky  from ARCPRINCIPALGRP grp ) gropInfo ,
ARCPRINCIPAL A, ARCPRINCIPAL B
where  gropInfo.usracrplky = A.ARCPRINCIPALKY  and gropInfo.grparcplky = B.ARCPRINCIPALKY  and B.Name='OFF-BROP-WM1' order by userName   with ur

select AG.ARCOPERATIONKY, AO.NAME from ARCGRANT AG INNER JOIN ARCOPERATION AO ON AG.ARCOPERATIONKY=AO.ARCOPERATIONKY WHERE AG.ARCPRINCIPALKY=(select ARCPRINCIPALKY from ARCPRINCIPAL where NAME='OFF-BROP-WM1')
select AG.ARCOPERATIONKY, AO.NAME from ARCGRANT AG INNER JOIN ARCOPERATION AO ON AG.ARCOPERATIONKY=AO.ARCOPERATIONKY WHERE AG.ARCPRINCIPALKY=(select ARCPRINCIPALKY from ARCPRINCIPAL where NAME='Administrators')

-------------------------------



--To check the country codes
-----------------------------------
select * from ARCISOCURRENCYCD WHERE TEXTCURRCD='EUR'
SELECT * FROM ARCCOUNTRYCD WHERE ARCISOCURRENCYCDKY=56
select * from MBBCRSAddrss where ARCCOUNTRYCDKY in (select ARCCOUNTRYCDKY from ARCCOUNTRYCD where ARCISOCURRENCYCDKY=56 )

select LINE1 as ADDRESS, ACUR.TEXTCURRCD, AC.DESCRIPTION from MBBCRSADDRSS MCA INNER JOIN ARCCOUNTRYCD AC ON MCA.ARCCOUNTRYCDKY=AC.ARCCOUNTRYCDKY
INNER JOIN ARCISOCURRENCYCD ACUR ON ACUR.ARCISOCURRENCYCDKY=AC.ARCISOCURRENCYCDKY


SELECT a0.MBBCRSADDRSSKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.line2, a0.arccountrycdky, a0.line3, a0.line1, a0.line5, a0.line4, a0.line7, a0.line6 FROM MBBCRSADDRSS a0 ()
-------------------------
select * from CORORG
--------------------------------


--Agent details
-------------------------------
SELECT * FROM SONEDBA.MBBAGENTINFRMTN where AGENTNM like 'CITI%'
----------------------------


--To check the officer
--------------------------
select * from arcprincipal where name = '12345678';

select * from fstprincipal where ARCPRINCIPALKY=18052

select * from PSOPRINCIPAL where ARCPRINCIPALKY = 92052
-------------------------------------------------------------------

--Find the GroupName in the TAM
-------------------------------------
select userid, groupname from (select arcprincipal.name userid, group.name groupname 
from sonedba.fstprincipal fstprincipal inner join sonedba.arcprincipal arcprincipal on fstprincipal.arcprincipalky = arcprincipal.arcprincipalky 
and arcprincipal.name = 'ramesh' 
inner join sonedba.arcprincipalgrp arcprincipalgrp on fstprincipal.arcprincipalky = arcprincipalgrp.arcprincipalky 
inner join sonedba.arcprincipal group on arcprincipalgrp.arcprincipalkygrp = group.arcprincipalky 
order by arcprincipal.name, group.name) for read only with ur
---------------------------------------------------------------------------




--To check the drawer id and balance of the drawer
-----------------------
select * from FSTDRAWER where drawerid=20

select * from FSTOPENDRAWER where fstdrawerky=18002


select * from FSTDRAWERCOMPMNT where FSTDRAWERKY=18002

select * from fsttotal where FSTOPENDRAWERKY = 105002



---------------------------






SELECT * FROM PSOORG

FSTOPENDRAWER
--------------
FSTDRAWER
FSTPRINCIPAL
FSTTERMINAL

FSTDRAWER
----------

CORORGKY

SELECT * FROM FSTDRAWER

select * from FSTBASETRAN 



--Find the drawers for the user
------------------------------------
SELECT ARCPRINCIPAL.NAME, ARCTARGET.NAME, FSTDRAWER.CURRENCY, FSTDRAWER.DESCRIPTION, FSTDRAWER.TYPE  
FROM ARCGRANT 
JOIN ARCTARGET ON ARCGRANT.ARCTARGETKY = ARCTARGET.ARCTARGETKY 
JOIN ARCPRINCIPAL ON ARCGRANT.ARCPRINCIPALKY =  ARCPRINCIPAL.ARCPRINCIPALKY
JOIN ARCTARGETTYPE ON ARCTARGET.ARCTARGETTYPEKY = ARCTARGETTYPE.ARCTARGETTYPEKY
JOIN FSTDRAWER ON ARCTARGET.NAME = cast(FSTDRAWER.DRAWERID as char(64))
WHERE ARCTARGETTYPE.NAME = 'DRAWER' AND ARCPRINCIPAL.NAME = 'ramesh'
FOR READ ONLY WITH UR;

-------------------------------------


--Rem  --  Rem Group No
-------------------------------

select * from MBBRMTSQNC

--------------------------------
--update FSTDRAWER set ISOPEN='0',ISBALANCED =1 where drawerid in (282828)

select * from FSTDRAWER where drawerid in (262626,2727272,345678)

Select * from fstopendrawer where FSTDRAWERKY in (52502)

select * from FSTDRAWER where drawerid =700840102

select DRAWER_ID, BUSINESSDATE from FSTJOURNALENTRY where drawer_id in (700040102,700840102,703140125,700540140)
 and tx_name ='MBBEndOfDay' order by BUSINESSDATE desc


select * from where f

select * from FSTJOURNALENTRY where op_id = 'ramesh' and date(DATETIME) ='2015-10-29' order by DATETIME desc
select * from fstbasetran where updateuser='ramsup'

---------------------------

Agent Codes
-----------


SELECT * FROM MBBAGENTINFRMTN WHERE AGENTNM IN ('CITIBANK FRANKFURT') AND AGENTCD = 'CITIDEFF' AND NOSTROACCOUNTNO='164150' AND CNTRY IN ('FI','IE','LU','PT');

DELETE FROM MBBAGENTINFRMTN WHERE AGENTNM IN ('CITIBANK FRANKFURT') AND AGENTCD = 'CITIDEFF' AND NOSTROACCOUNTNO='164150' AND CNTRY IN ('FI','IE','LU','PT');


INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'FIM'),'CITIDEFF','FDD','FI',NULL,1,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'FIM'),'CITIDEFF','FDD','FI',NULL,2,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'FIM'),'CITIDEFF','FDD','FI',NULL,3,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);

INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'IEP'),'CITIDEFF','FDD','IE',NULL,1,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'IEP'),'CITIDEFF','FDD','IE',NULL,2,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'IEP'),'CITIDEFF','FDD','IE',NULL,3,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);

INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'LUF'),'CITIDEFF','FDD','LU',NULL,1,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'LUF'),'CITIDEFF','FDD','LU',NULL,2,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'LUF'),'CITIDEFF','FDD','LU',NULL,3,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);

INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'PTE'),'CITIDEFF','FDD','PT',NULL,1,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'PTE'),'CITIDEFF','FDD','PT',NULL,2,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),'CITIBANK FRANKFURT',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'PTE'),'CITIDEFF','FDD','PT',NULL,3,NULL,'164150',NULL,'FRANKFURT',CURRENT TIMESTAMP,'system','MBB',1);

----------------------------------
select * from PSOBASETRAN

select * from fstopendrawer where fstdrawerky in 1509

update FSTOPENDRAWER set ISOPEN='0'  where FSTDRAWERKY in (52002,56502,57502) and 

delete from  FSTOpenDrawer WHERE arcprincipalky = 98052 

select * from syscat.tables where tabname like '%COMP%'


Select * from FSTDRAWERCOMPMNT where FSTDRAWERKY in (55002,55003,55004) 



SELECT * FROM fstopendrawer P  where exists ( select O.FSTOPENDRAWERKY from SONEDBA.FSTOPENDRAWER O 
inner join SONEDBA.FSTDRAWER D 
on O.FSTDRAWERKY = D.FSTDRAWERKY 
inner join FSTDRAWERCOMPMNT FC 
on D.FSTDRAWERKY=FC.FSTDRAWERKY and FC.BALANCEAMOUNT=0 and date(O.UPDATEDTTM) <= current_date - 15 days 
and O.ISOPEN = '0' and D.ISBALANCED = 1 and P.FSTOPENDRAWERKY = O.FSTOPENDRAWERKY) 


SELECT * FROM fstopendrawer P  where exists ( select O.FSTOPENDRAWERKY from SONEDBA.FSTOPENDRAWER O 
inner join SONEDBA.FSTDRAWER D  on O.FSTDRAWERKY = D.FSTDRAWERKY 
left outer join FSTDRAWERCOMPMNT FC on D.FSTDRAWERKY=FC.FSTDRAWERKY 
and FC.BALANCEAMOUNT=0 and date(O.UPDATEDTTM) <= current_date - 15 days 
and O.ISOPEN = '0' and D.ISBALANCED = 1 and P.FSTOPENDRAWERKY = O.FSTOPENDRAWERKY) 




select * from FSTDRAWERCOMPMNT

(93053)

select * from fstjournalentry where op_id not in('ramesh')

SELECT * from FSTOPENDRAWER P where exists ( select O.FSTOPENDRAWERKY from SONEDBA.FSTOPENDRAWER O inner join SONEDBA.FSTDRAWER D on O.FSTDRAWERKY = D.FSTDRAWERKY 
and date(O.UPDATEDTTM) <= current_date - 15 days and O.ISOPEN = '0' and D.ISBALANCED = 1 and P.FSTOPENDRAWERKY = O.FSTOPENDRAWERKY)

select * from sonedba.fstjournalentry where fstbasetranky is null and date(updatedttm) <= current_date - 15 days group by DRAWER_ID,FSTOPENDRAWERKY;


SELECT * from FSTOPENDRAWER P where exists ( select O.FSTOPENDRAWERKY from SONEDBA.FSTOPENDRAWER O inner join SONEDBA.FSTDRAWER D on O.FSTDRAWERKY = D.FSTDRAWERKY 
and date(O.UPDATEDTTM) <= current_date - 15 days and O.ISOPEN = '0' and D.ISBALANCED = 1 and P.FSTOPENDRAWERKY = O.FSTOPENDRAWERKY) and FSTOPENDRAWERKY=458043

select * from fstopendrawer where ARCPRINCIPALKY = 3053

update SONEDBA.FSTDRAWER set ISOPEN='0',ISBALANCED =1 where FSTDRAWERKY in (1092,7522,7505,7003,7042,7051,7071,7027)

update SONEDBA.FSTDRAWER set ISOPEN='0',ISBALANCED =1 where FSTDRAWERKY =1092

select DRAWER_ID,Fstopendrawerky ,count(1) TXN_CNT from sonedba.fstjournalentry where fstbasetranky is null and date(updatedttm) <= current_date - 150 days group by DRAWER_ID,FSTOPENDRAWERKY;

select * from fstdrawer where FSTDRAWERKY in (1092,7522,7505,7003,7042,7051,7071,7027)

Archive_ET_Success."$CURDATE".log
Archive_ET_Failed."$CURDATE".log
Purge_ET.$CURDATE.log

delete from fstopendrawer where ARCPRINCIPALKY = 3053


select * from PSOORG where cororgky = 14851574;
update SONEDBA.PSOORG set BRNCHBUSNSSDT = '2015-06-03' where cororgky = 14851574;

select * from fstorg where CORORGKY = 3

update fstorg set isopen = 1 where CORORGKY = 3;
commit;

select * from FSTTERMINAL


select * from fstorg where CORORGKY = 14851574

update fstorg set isopen = 0 where CORORGKY = 14851574

select * from CORAUDIT where DATE(AUDITDTTM) ='2015-04-29' AND LOGINID = 'Admin' order by auditdttm asc

select MAX(DESCRIPTION) from fstdrawer


select * from fstdrawer where DESCRIPTION = (select Max(DESCRIPTION) from fstdrawer)

select * from fstterminal where name = 'L130300018'

update fstterminal set name='L1303000182' where FSTTERMINALKY=L130300018;
commit;

update fstterminal set fstorgky = 8506 where name = 'L130300018'

select * from fstterminal where name = 'L130300018'


select * from fstterminal

SELECT *FROM SONEDBA.ARCISOCURRENCYCD

SELECT DESCRIPTION,ISOALPHA2CD
FROM SONEDBA.ARCCOUNTRYCD

select * from FSTJOURNALENTRY where FSTJOURNALENTRYKY =10506

Select * from PSOBASETRAN where opid= 'YSMRCR' order by updatedttm desc;

select * from psobasetran order by updatedttm desc;
select * from psobasetran where fstbasetranky =2267504
commit;

SOURCEACCOUNTNO

ALTER TABLE SONEDBA.psobasetran
	ADD WORKSTATIONID int

ALTER TABLE SONEDBA.psobasetran DROP COLUMN WORKSTNNANE

ALTER TABLE SONEDBA.psobasetran add COLUMN WORKSTNNAME  VARCHAR(32);

call sysproc.admin_cmd('reorg table psobasetran')
select * from fstopendrawer where fstopendrawerky in (458043,508033)

select * from fstdrawer where fstdrawerky in (61014,583)
reorg table SONEDBA.psobasetran 

select * from fstopendrawer where luid='ed55887b-a2d1c420-73327332-4de638da'

select * from fstdrawer where drawerid =20
select * from fstopendrawer where fstdrawerky = 18002

FSTDRAWERKY
34502

SELECT *
FROM SONEDBA.ARCISOCURRENCYCD 

SELECT DESCRIPTION,ISOALPHA2CD
FROM SONEDBA.ARCCOUNTRYCD

select * from fstopendrawer where fstdrawerky =48003;

select * from fstd

update fstdrawer set isopen='0' where drawerid =20;
update fstopendrawer set isopen='0' where fstdrawerky =18002;

commit;




select drawerid,isbalanced from fstdrawer where ISOPEN = '1'  order by 1,2

SELECT COUNT(isbalanced) FROM fstdrawer;

select * from fstdrawer where drawerid =700540105


delete  from fstdrawer where drawerid not in (190451,28282828,981256,292929,21);

update fstdrawer set isbalanced=1 where drawerid =28282828;

select * from fstdrawer where drawerid = 8892

select * from fstopendrawer where fstdrawerky=54002


select * from psoorg where cororgky = 14851574;

select * from PSOORG 
 
select * from fstterminal where name='DTCM225188'

select * from fstorg

select * from psoprincple

select * from mbbrmtsqnc where branchid='133'
DTCM225188


select * from FSTORG


select * from fstdrawer

select * from fstjournalentry where journal_nr =45
select * from fstbasetran

select * from fstopendrawer where businessdate between '2014-01-02' and '2014-01-03' order by businessdate desc for read only with ur

select * from fstjournalentry where OP_ID='<OPID>' and BRANCH_ID = '<BranchId>' and businessdate between '2014-01-01' and '2014-01-03' 
 order by businessdate desc for read only with ur



select * from FSTJOURNALENTRY where OP_ID='<OPID>' and businessdate = ='<BUSSINESSDATE>' order by DATETIME desc; 
select * from fstdrawer join fstorg on fstdrawer.fstorgky = fstorg.cororgky where fstorg.id = 422  for read only with ur;  
select * from fstopendrawer  join fstdrawer on fstopendrawer.fstdrawerky = fstdrawer.fstdrawerky join fstorg on fstdrawer.fstorgky = fstorg.cororgky where fstorg.id = 422 for read only with ur;
select * from fsttotal where branchid ='133' and businessdate between '2013-12-26' and '2013-12-27' order by businessdate desc for read only with ur;


select * from arcprincipal where name = '12345678';

select * from fstprincipal where ARCPRINCIPALKY=768

select * from PSOPRINCIPAL where ARCPRINCIPALKY = 18052
select * from psoprincipal; 

select * from fstdrawer join fstorg on fstdrawer.fstorgky = fstorg.cororgky where fstorg.id = 402  for read only with ur
 
select * from fstopendrawer  join fstdrawer on fstopendrawer.fstdrawerky = fstdrawer.fstdrawerky join fstorg on fstdrawer.fstorgky = fstorg.cororgky
where fstorg.id = 133  for read only with ur
 
select * from fsttotal where branchid = '402' order by businessdate for read only with ur 

00919620382394

SELECT EMP_ID, LAST_NAME
FROM EMPLOYEE_TBL
WHERE CITY = 'INDIANAPOLIS'
ORDER BY 1;

select * from fstterminal where name = 'L130300018'

update fstterminal set name='L1303000181' where name = 'L130300018'
commit;

select * from fstdrawer

select * from fstterminal where name like 'DTCM225188%'

update fstterminal set name='DTCM225188' where FSTTERMINALKY=18003;
commit;

lk

create table SONEDBA.Employee(
id INTEGER NOT NULL,
firstName VARCHAR(50),
lastName VARCHAR(50));

ALTER TABLE SONEDBA.Employee  ADD CONSTRAINT id PRIMARY KEY (id);


create table SONEDBA.Student(
id INTEGER NOT NULL,
serialno VARCHAR(50),
classname VARCHAR(50));

ALTER TABLE SONEDBA.Student  ADD CONSTRAINT id PRIMARY KEY (id);



04010409429
 
14072085850	   
4075517052	   
14072085813	   
4075517111	   
14072085873	   
4075517217	   
14072085979	   
4075516988	   
14072085748	   
4075517141	   
14072085902	   
4075517158	   
14072085919	   
4075517015	   
14072085778	   
4075517171	   
14072085933	   
4075009583	   
14079004585	   
4075009576	   
14079004578	   
4075009605	   
14079004607	   
4075517254	   
14072086012	   
4075517135	   
14072085897	   
4075517165	 
4075009605
4075517135

04075517022

100001 to 200	









164164915159

Rtc  -- 26793  - fundtransfer
26786 - chequewithdrawal


sharefolder- sean

TX_MBB_CHQWD


 \\10.45.54.242\BFE_Development\04_MISC\BFE_SG_IDF\Sean\OEM\UT

CHECK THE requestxml .. dp2106-3


rg.properties and need to comment below lines
actory.target.producer.JournalService=LocalProducer
#grnds.factory.env.target.JournalService.classname=com.s1.fst.journal.PSOConcreteJournalService
grnds.factory.env.target.JournalService.classname=com.mbb.common.journal.MBBConcreteJournalService


	String accountNo = "14079004555"; // SA
		// accountNo = "4506670500009000"; //Credit Card
		// accountNo = "5104430500009000" //Debit Card
		// accountNo = "04075053315"; //Current Account
		accountNo = "64030044048"; // Foreign Current Account
		// accountNo = "24079106454"; // TD
		accountNo = "84031611705"; // FCTD
		// accountNo = ""; //Debit Card
		// accountNo = "44070017632"; // Testing
		// accountNo = "04075053315"; // CA
		// accountNo = "44030016245"; // LOAN



\\10.45.54.242\BFE_Development\04_MISC\BFE_SG_IDF\Sean\OEM
14012086326
14010014215
	04015500733
	04075009546


14070000237

14014000588

14070001218


A/C: 04075516965

Chequ No:222001 to...97


Kumar -- cheque withdrawal
A/C: 04075516995


A/C: 04075516965

Chequ No:222001 to...97



Ac no 
CA:04014000070
CA:04014000176
SA:14010346524
SA:14010346650

10.45.54.242 .. oem_ip_db2

System --- DTCM225188

rg_admin.properties:
================
mbb.signon.dev.env = TRUE


hosts -- 
--------- C:\Windows\System32\drivers\etc


SWITCH TO DB HAVE TO mODIFIED THE BELOW FILES..


pso_admin.properties
ET37_OEM

QC - - -  http://172.31.20.97:8045/qcbin/ 

password --  Maybank@123




For properties

sgteller_resources.properties



HSO  - host superviser override
Def and menu
 
sgcash_menus.def

Actions_ Orchestration/

Z:\environment\et\j2ee\customization\custom\actions\com\mbb


C:\workspace_new\environment\et\j2ee\customization\custom\actions\com\mbb\dp2



Export the workflow path

Z:\environment\et\j2ee\customization\sg\src\main\resources\workflow\fin


psobasetrans Act:
Z:\environment\et\j2ee\customization\custom\actions\com\s1\pso\transactions


dp2 --
Z:\environment\et\j2ee\customization\custom\actions\com\mbb\dp2



change the heap memory:
http://www.wikihow.com/Increase-Java-Memory-in-Windows-7


Display the checkbox -- MBBLoanRepaymentCollaAcctListPopUp.skin

mvgian@gmail.com  -- KON mail id
rameshrs@maybank.com.my -- office mail id

----



INSERT INTO ARCOPERATION (ARCOPERATIONKY, NAME) VALUES ((SELECT COALESCE(MAX(ARCOPERATIONKY),0) FROM ARCOPERATION) + 1, 'TX_MBB_FT_CATCA');


1004699078 -- unifyAcNo

1300881221  - teliphone no

imp code : 


		/*MBBDP2OemEnable dP2OemEnable = (MBBDP2OemEnable)MBBDP2OemEnableFactory.getOemInquiryDetails(formObj,"TX_MBB_FT_CATCA");
		dP2OemEnable.oem_init(formObj);*/
http://www.exbii.com/showthread.php?p=46230086










select * from fstdrawer join fstorg on fstdrawer.fstorgky = fstorg.cororgky where fstorg.id = 403 for read only with ur

select * from fstjournalentry where OP_ID='RHRWEE' and BRANCH_ID = '403' and businessdate between '2014-01-01' and '2014-01-03' 
 order by businessdate desc for read only with ur

select * from fsttotal where branchid ='403' and businessdate between '2014-01-03' and '2014-01-03' order by businessdate desc for read only with ur;

select * from fstdrawer where drawerid in (1002, 1502, 2002, 2502, 3002, 4002, 4502, 5002, 6502, 7002, 8002, 25502, 9002, 10002, 10502, 11002, 11502, 12002, 13002, 13502, 15503, 16502, 17502, 18002, 19002, 19502, 20002, 20503, 21002, 21502, 23002, 23502, 24502, 25002, 26002, 26003, 26503, 27002, 27003, 27502, 28002, 28502, 30502, 31002, 32002, 33002, 34503, 42002)



select * from fstdrawer where drawerid =20

select * from fstopendrawer where fstdrawerky =18002

update fstdrawer set ISOPEN ='0' WHERE drawerid in (200,101,1231231231,107,111,128,222,666,108,500,123456,1185,6666,
1808,316,177,777,113,9,5209,99,280584,1437,98,7,600,5555,7000,900,169,907907,1184,700,800,789789,1000,1001,44555,1234,2222,456456,2000,969696,786,22290451,
55555,1234567,17,170,979797,67434,7861);
commit;



update fstopendrawer set isopen='0' where fstdrawerky=2;
commit;


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, 
a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE ((((a0.branchid = '0133') AND (a0.trandate > '2013-07-23 00:00:00.000'))) AND (a0.trandate < '2013-07-23 17:36:10.363')) ('0133', '2012-01-01 00:00:00.000', '2014-02-13 10:36:10.363')



select * from FSTBalancePos


CREATE VIEW VWMBBDORMANTACCTREACT (FSTBASETRANKY, BRANCHID, TRANDATE, OPID, EJNO, TRANSACTION, REVERSED, SOUSERID, AMOUNT, ACCTNO, NAME, REMARKS, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) AS SELECT A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, A1.TX_ACCOUNT AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM   FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (A1.TX_ACCOUNT = P1.TX_ACCOUNT) AND    DATE(A1.DATETIME) = DATE (P1.DATETIME) AND    A1.STATUS = 'success' UNION SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.DESTINATIONACCOUNT AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.DESTINATIONACCOUNT = P1.TX_ACCOUNT) AND P0.DESTINATIONACCOUNT <> A1.TX_ACCOUNT AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success' UNION SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.SWEEPACCTNUMBER AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.SWEEPACCTNUMBER = P1.TX_ACCOUNT) AND P0.SWEEPACCTNUMBER <> A1.TX_ACCOUNT AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success' UNION SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.TRANSACCTNUMBER AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.TRANSACCTNUMBER = P1.TX_ACCOUNT) AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success'






-- ***************************************************************************************
-- * Release Name : RBSET REL 



Drop3 Phase2
-- * WorkStream   : DBA
-- * Script Name  : rbset_ddl_3.3.18.sql
-- * Creation Date: 03-Dec-2013
-- * Script Owner : Barath Kaveripakam / Madhu Gunji
-- * Requested By : Lim See Yeong
-- * Description  : Defect#3787 Recreate view VWMBBDORMANTACCTREACT 
-- ***************************************************************************************

-- Logging-in the Database Version ---
INSERT INTO UTLSCHEMAVERSION(UTLSCHEMAVERSIONKY, SCHEMANAME, SCHEMAVERSION, SCHEMASTATUS, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP) 
VALUES(( SELECT CAST(COALESCE(MAX(UTLSCHEMAVERSIONKY),0) + 1 AS INTEGER) FROM UTLSCHEMAVERSION ),
       'MBB',
       '3.3.18',
       'INPROCESS',
       CURRENT TIMESTAMP,
       'SYSTEM',
       'MBB',
       1);

-- Logging the start time & the Script Name in the Database ---
INSERT INTO UTLDBUPGRADELOG (UTLDBUPGRADELOGKY, PROCESSNAME, STATUS, STARTDTTM, ENDDTTM, DESCRIPTION, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP, UTLSCHEMAVERSIONKY) 
VALUES((SELECT CAST(COALESCE(MAX(UTLDBUPGRADELOGKY),0) + 1 AS INTEGER) FROM UTLDBUPGRADELOG),
       'rbset_ddl_3.3.18.sql',
       'INPROCESS',
       CURRENT TIMESTAMP,
       CURRENT TIMESTAMP,
       'Recreate view VWMBBDORMANTACCTREACT.',
       CURRENT TIMESTAMP,
       'MBB',
       'system',
       1,
       (SELECT CAST(UTLSCHEMAVERSIONKY AS INTEGER) FROM UTLSCHEMAVERSION WHERE SCHEMANAME = 'MBB' AND SCHEMAVERSION = '3.3.18')
      );

-- *******************************************************************************************************************
--                              DATA FOR UTL SQUENCE NUMBER GENERATOR(UTLSEQNUMGNRTR)
-- *******************************************************************************************************************

-- *******************************************************************************************************************
--                              CREATION/MODIFICATION STATEMENTS FOR TABLE OBJECTS
-- *******************************************************************************************************************

-- *******************************************************************************************************************
--                              PRIMARY KEY STATEMENTS FOR TABLE OBJECTS
-- *******************************************************************************************************************

-- *******************************************************************************************************************
--                              FOREIGN KEY STATEMENTS FOR TABLE OBJECTS
-- *******************************************************************************************************************

-- *******************************************************************************************************************
--                              INDEX STATEMENTS FOR TABLE OBJECTS
-- *******************************************************************************************************************

-- *******************************************************************************************************************
--                              VIEW STATEMENTS FOR TABLE OBJECTS
-- *******************************************************************************************************************

-- ==========================================================================
--  View VWMBBDORMANTACCTREACT  - (SG)
-- ==========================================================================
DROP ALIAS DEVUSER.VWMBBDORMANTACCTREACT;
DROP VIEW VWMBBDORMANTACCTREACT;
CREATE VIEW VWMBBDORMANTACCTREACT
(FSTBASETRANKY,
BRANCHID,
TRANDATE,
OPID,
EJNO,
TRANSACTION,
REVERSED, SOUSERID,
AMOUNT,
ACCTNO,
NAME,
REMARKS,
UPDATEDTTM,
UPDATESYSTEM,
UPDATEUSER,
VERSIONSTAMP) 
AS 
SELECT A0.FSTBASETRANKY AS FSTBASETRANKY,
       A1.BRANCH_ID AS BRANCHID,
       A0.DATETIME AS TRANDATE,
       A1.OP_ID AS OPID,
       A1.JOURNAL_NR AS EJNO,
       A0.NAME AS TRANSACTION,
       A1.REVERSED AS REVERSED,
       P0.SOUSERID AS SOUSERID,
       A1.TX_AMOUNT AS AMOUNT,
       A1.TX_ACCOUNT AS ACCTNO,
       P0.ACCTNM AS NAME,
       P0.TRANSNAMEBLPOSTING AS REMARKS,
       A0.UPDATEDTTM AS UPDATEDTTM,
       A0.UPDATESYSTEM AS UPDATESYSTEM,
       A0.UPDATEUSER AS UPDATEUSER,
       A0.VERSIONSTAMP AS VERSIONSTAMP 
FROM   FSTBASETRAN A0 
       INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY 
       INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY 
       INNER JOIN VWMBBACCTREACT P1 ON (A1.TX_ACCOUNT = P1.TX_ACCOUNT) 
AND    DATE(A1.DATETIME) = DATE (P1.DATETIME) 
AND    A1.STATUS = 'success'
UNION
SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY,
        A1.BRANCH_ID AS BRANCHID,
        A0.DATETIME AS TRANDATE,
        A1.OP_ID AS OPID,
        A1.JOURNAL_NR AS EJNO,
        A0.NAME AS TRANSACTION,
        A1.REVERSED AS REVERSED,
        P0.SOUSERID AS SOUSERID,
        A1.TX_AMOUNT AS AMOUNT,
        P0.DESTINATIONACCOUNT AS ACCTNO,
        P0.ACCTNM AS NAME,
        P0.TRANSNAMEBLPOSTING AS REMARKS,
        A0.UPDATEDTTM AS UPDATEDTTM,
        A0.UPDATESYSTEM AS UPDATESYSTEM,
        A0.UPDATEUSER AS UPDATEUSER,
        A0.VERSIONSTAMP AS VERSIONSTAMP 
FROM    FSTBASETRAN A0 
        INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY 
        INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY 
        INNER JOIN VWMBBACCTREACT P1 ON (P0.DESTINATIONACCOUNT = P1.TX_ACCOUNT) AND P0.DESTINATIONACCOUNT <> A1.TX_ACCOUNT 
AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) 
AND     A1.STATUS = 'success'
UNION
SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY,
        A1.BRANCH_ID AS BRANCHID,
        A0.DATETIME AS TRANDATE,
        A1.OP_ID AS OPID,
        A1.JOURNAL_NR AS EJNO,
        A0.NAME AS TRANSACTION,
        A1.REVERSED AS REVERSED,
        P0.SOUSERID AS SOUSERID,
        A1.TX_AMOUNT AS AMOUNT,
        P0.SWEEPACCTNUMBER AS ACCTNO,
        P0.ACCTNM AS NAME,
        P0.TRANSNAMEBLPOSTING AS REMARKS,
        A0.UPDATEDTTM AS UPDATEDTTM,
        A0.UPDATESYSTEM AS UPDATESYSTEM,
        A0.UPDATEUSER AS UPDATEUSER,
        A0.VERSIONSTAMP AS VERSIONSTAMP 
FROM    FSTBASETRAN A0 
        INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY 
        INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY 
        INNER JOIN VWMBBACCTREACT P1 ON (P0.SWEEPACCTNUMBER = P1.TX_ACCOUNT) AND P0.SWEEPACCTNUMBER <> A1.TX_ACCOUNT 
AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) 
AND     A1.STATUS = 'success'
UNION
SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY,
        A1.BRANCH_ID AS BRANCHID,
        A0.DATETIME AS TRANDATE,
        A1.OP_ID AS OPID,
        A1.JOURNAL_NR AS EJNO,
        A0.NAME AS TRANSACTION,
        A1.REVERSED AS REVERSED,
        P0.SOUSERID AS SOUSERID,
        A1.TX_AMOUNT AS AMOUNT,
        P0.TRANSACCTNUMBER AS ACCTNO,
        P0.ACCTNM AS NAME,
        P0.TRANSNAMEBLPOSTING AS REMARKS,
        A0.UPDATEDTTM AS UPDATEDTTM,
        A0.UPDATESYSTEM AS UPDATESYSTEM,
        A0.UPDATEUSER AS UPDATEUSER,
        A0.VERSIONSTAMP AS VERSIONSTAMP 
FROM    FSTBASETRAN A0 
        INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY 
        INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY 
        INNER JOIN VWMBBACCTREACT P1 ON (P0.TRANSACCTNUMBER = P1.TX_ACCOUNT) 
AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) 
AND     A1.STATUS = 'success';

-- *******************************************************************************************************************
--                              CREATE ALIAS STATEMENTS FOR APPLICATION USERS
-- *******************************************************************************************************************

CREATE ALIAS DEVUSER.VWMBBDORMANTACCTREACT FOR VWMBBDORMANTACCTREACT;

-- *******************************************************************************************************************
--                              PRIVILEGES GRANT/REVOKE STATEMENTS FOR APP USER
-- *******************************************************************************************************************

GRANT SELECT ON VWMBBDORMANTACCTREACT TO USER DEVUSER;

-- ===========================================
--  RE-ORGANISATION OF TABLES
-- ===========================================


-- *******************************************************************************************************************
--                    UPDATING THE END-TIME FOR SCRIPT NAME IN THE DATABASE
-- *******************************************************************************************************************

UPDATE UTLDBUPGRADELOG
SET (STATUS,ENDDTTM) = ('SUCCESS',CURRENT TIMESTAMP)
WHERE PROCESSNAME = 'rbset_ddl_3.3.18.sql';

-- *******************************************************************************************************************
--                    UPDATING THE DATABASE SCHEMA VERSION
-- *******************************************************************************************************************

UPDATE UTLSCHEMAVERSION
SET SCHEMASTATUS = 'SUCCESS'
WHERE SCHEMANAME = 'MBB'
AND SCHEMAVERSION = '3.3.18';

-- *******************************************************************************************************************
--                    UPDATING THE SEQUENCE NUMBER FOR SEQUENCE NAME IN UTLSEQNUMGNRTR
-- *******************************************************************************************************************

UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(UTLSEQNUMGNRTRKY),0) + 1 AS INTEGER)  FROM UTLSEQNUMGNRTR)
WHERE UPPER(SEQNAME) = 'UTLSEQNUMGNRTR';

UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(UTLDBUPGRADELOGKY),0) + 1 AS INTEGER)  FROM UTLDBUPGRADELOG)
WHERE UPPER(SEQNAME) = 'UTLDBUPGRADELOG';

UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(UTLSCHEMAVERSIONKY),0) + 1 AS INTEGER) FROM UTLSCHEMAVERSION)
WHERE UPPER(SEQNAME) = 'UTLSCHEMAVERSION';

COMMIT WORK;
-- *******************************************************************************************************************



SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, 
a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE ((((a0.branchid = '0133') and (a0.opid='chuah1234' ) AND (a0.trandate > '2013-04-02 00:00:00.000'))) AND 
(a0.trandate < '2013-05-23 17:36:10.363')) 


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, 
a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE ((((a0.branchid = '0133') and (a0.trandate > '2013-04-02 00:00:00.000'))) AND 
(a0.trandate < '2013-05-23 17:36:10.363')) 


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, 
a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE a0.branchid = '0133' and a0.trandate between '2013-04-02 00:00:00.000' AND '2013-05-23 17:36:10.363'


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, 
a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE a0.opid='chuah1234' and a0.branchid = '0133' and a0.trandate between '2013-04-02 00:00:00.000' AND '2013-05-23 17:36:10.363'


('0133', '2012-01-01 00:00:00.000', '2014-02-13 10:36:10.363')

drop index FSTBASETRAN_chk;
commmit;

drop index FSTJOURNALENTRY_chk;

select * from fstjournalentry where  OP_ID='chuah1234' and BRANCH_ID= '0133' AND BUSINESSDATE > '2013-03-20 00:00:00.000'
 AND BUSINESSDATE < '2013-05-23 17:36:10.363'; 

CREATE INDEX FSTJOURNALENTRY_chk ON SONEDBA.FSTJOURNALENTRY ( BRANCH_ID ) PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS;
CREATE INDEX FSTBASETRAN_chk ON SONEDBA.FSTBASETRAN ( DATETIME ) PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS;
commit;



SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, 
a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE (a0.branchid = '0133') AND ((a0.trandate > '2013-04-02 00:00:00.000') AND (a0.trandate < '2013-05-23 17:36:10.363'))


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, 
a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE ((a0.branchid = '0133') AND (a0.trandate > '2013-04-02 00:00:00.000')) AND (a0.trandate < '2013-05-23 17:36:10.363')


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, 
a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE ((((a0.branchid = '0133') and (a0.opid='chuah1234' ) AND (a0.trandate > '2013-04-02 00:00:00.000'))) AND 
(a0.trandate < '2014-05-23 17:36:10.363')) 



---------------------------
select * from fstdrawer where drawerid=20	
select * from fstopendrawer where fstdrawerky=18002

select * from fstdrawercompmnt where fstdrawerky=18002


select * from fstdrawer where drawerid=292929	
select * from fstopendrawer where fstdrawerky=48502

select * from fstdrawercompmnt where fstdrawerky=48502
select a0.COMPARTMENTNAME,a0.FSTDRAWERKY,a1.drawerid,a1.currency ,a1.DESCRIPTION,a1.UPDATEUSER,a1.TYPE from fstdrawercompmnt a0,fstdrawer a1 where a1.FSTDRAWERKY = a0.FSTDRAWERKY and 
a1.currency !=a0.COMPARTMENTNAME

update  SONEDBA.fstdrawercompmnt  set COMPARTMENTNAME ='SGD' where FSTDRAWERCOMPMNTKY =54504;

commit;
SGD 20502






SELECT "FSTBASETRANKY", "BRANCHID", "TRANDATE", "OPID", "EJNO", "TRANSACTION", "REVERSED", "SOUSERID", "AMOUNT",
 "ACCTNO", "NAME", "REMARKS", "UPDATEDTTM", "UPDATESYSTEM", "UPDATEUSER", "VERSIONSTAMP" FROM "SONEDBA"."VWMBBDORMANTACCTREACT";
GO

SELECT TEXT FROM SYSIBM.SYSVIEWS WHERE NAME = 'VWMBBDORMANTACCTREACT' AND CREATOR = 'SONEDBA';
GO




SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, a0.opid, a0.branchid,
 a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT a0 WHERE ((((a0.branchid = ?) 
AND (a0.trandate > ?))) AND (a0.trandate < ?))




DELETE FROM FSTBALANCEPOS
WHERE FSTDRAWERCOMPMNTKY IN ( SELECT FSTDRAWERCOMPMNTKY FROM FSTDRAWERCOMPMNT 
							  WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE TYPE IN (0,20))
							  AND COMPARTMENTNAME != 'SGD'
							 );


SELECT A0.FSTBASETRANKY AS FSTBASETRANKY,
        A1.BRANCH_ID AS BRANCHID,
        A0.DATETIME AS TRANDATE,
        A1.OP_ID AS OPID,
        A1.JOURNAL_NR AS EJNO, 
       A0.NAME AS TRANSACTION, 
      A1.REVERSED AS REVERSED,
        P0.SOUSERID AS SOUSERID,
        A1.TX_AMOUNT AS AMOUNT,
        A1.TX_ACCOUNT AS ACCTNO,
        P0.ACCTNM AS NAME,
        P0.TRANSNAMEBLPOSTING AS REMARKS,
        A0.UPDATEDTTM AS UPDATEDTTM,
        A0.UPDATESYSTEM AS UPDATESYSTEM,
        A0.UPDATEUSER AS UPDATEUSER,
        A0.VERSIONSTAMP AS VERSIONSTAMP
          FROM   FSTBASETRAN A0 ,PSOBASETRAN P0,FSTJOURNALENTRY A1,VWMBBACCTREACT P1
         where A0.FSTBASETRANKY = P0.FSTBASETRANKY
         and  A0.FSTBASETRANKY = A1.FSTBASETRANKY 
        and (A1.TX_ACCOUNT = P1.TX_ACCOUNT)  AND    DATE(A1.DATETIME) = DATE (P1.DATETIME)  AND    A1.STATUS = 'success' 




CREATE VIEW VWMBBDORMANTACCTREACT (FSTBASETRANKY, BRANCHID, TRANDATE, OPID, EJNO, TRANSACTION, REVERSED, SOUSERID, AMOUNT, ACCTNO, NAME, REMARKS,
 UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP)  AS  

SELECT A0.FSTBASETRANKY AS FSTBASETRANKY,
        A1.BRANCH_ID AS BRANCHID,        A0.DATETIME AS TRANDATE,        A1.OP_ID AS OPID,        A1.JOURNAL_NR AS EJNO, 
       A0.NAME AS TRANSACTION,        A1.REVERSED AS REVERSED,        P0.SOUSERID AS SOUSERID,        A1.TX_AMOUNT AS AMOUNT,
        A1.TX_ACCOUNT AS ACCTNO,        P0.ACCTNM AS NAME,        P0.TRANSNAMEBLPOSTING AS REMARKS,        A0.UPDATEDTTM AS UPDATEDTTM
,        A0.UPDATESYSTEM AS UPDATESYSTEM,        A0.UPDATEUSER AS UPDATEUSER,        A0.VERSIONSTAMP AS VERSIONSTAMP  FROM   FSTBASETRAN A0 
        INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY         INNER JOIN FSTJOURNALENTRY A1 
ON A0.FSTBASETRANKY = A1.FSTBASETRANKY         INNER JOIN VWMBBACCTREACT P1 ON (A1.TX_ACCOUNT = P1.TX_ACCOUNT)
  AND    DATE(A1.DATETIME) = DATE (P1.DATETIME)  AND    A1.STATUS = 'success' 


UNION 


SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY,
         A1.BRANCH_ID AS BRANCHID,         A0.DATETIME AS TRANDATE,         A1.OP_ID AS OPID,         A1.JOURNAL_NR AS EJNO, 
        A0.NAME AS TRANSACTION,         A1.REVERSED AS REVERSED,         P0.SOUSERID AS SOUSERID,         A1.TX_AMOUNT AS AMOUNT, 
        P0.DESTINATIONACCOUNT AS ACCTNO,         P0.ACCTNM AS NAME,         P0.TRANSNAMEBLPOSTING AS REMARKS,      
   A0.UPDATEDTTM AS UPDATEDTTM,         A0.UPDATESYSTEM AS UPDATESYSTEM,         A0.UPDATEUSER AS UPDATEUSER,   
      A0.VERSIONSTAMP AS VERSIONSTAMP  FROM    FSTBASETRAN A0          INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY  
        INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY          INNER JOIN VWMBBACCTREACT P1 ON
 (P0.DESTINATIONACCOUNT = P1.TX_ACCOUNT) AND P0.DESTINATIONACCOUNT <> A1.TX_ACCOUNT  AND     DATE(A1.DATETIME) = DATE (P1.DATETIME)  AND 
    A1.STATUS = 'success' 


UNION


 SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY,         A1.BRANCH_ID AS BRANCHID,         A0.DATETIME AS TRANDATE,
         A1.OP_ID AS OPID,         A1.JOURNAL_NR AS EJNO,         A0.NAME AS TRANSACTION,         A1.REVERSED AS REVERSED,         
P0.SOUSERID AS SOUSERID,         A1.TX_AMOUNT AS AMOUNT,         P0.SWEEPACCTNUMBER AS ACCTNO,         P0.ACCTNM AS NAME,        
 P0.TRANSNAMEBLPOSTING AS REMARKS,         A0.UPDATEDTTM AS UPDATEDTTM,         A0.UPDATESYSTEM AS UPDATESYSTEM,        
 A0.UPDATEUSER AS UPDATEUSER,         A0.VERSIONSTAMP AS VERSIONSTAMP  FROM    FSTBASETRAN A0          INNER JOIN PSOBASETRAN P0 ON
 A0.FSTBASETRANKY = P0.FSTBASETRANKY          INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY         
 INNER JOIN VWMBBACCTREACT P1 ON (P0.SWEEPACCTNUMBER = P1.TX_ACCOUNT) AND P0.SWEEPACCTNUMBER <> A1.TX_ACCOUNT  AND     DATE(A1.DATETIME) 
= DATE (P1.DATETIME)  AND     A1.STATUS = 'success' 


UNION


 SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY,  DATE(P1.DATETIME),DATE(A1.DATETIME),      A1.BRANCH_ID AS BRANCHID,
         A0.DATETIME AS TRANDATE,         A1.OP_ID AS OPID,         A1.JOURNAL_NR AS EJNO,         A0.NAME AS TRANSACTION,        
 A1.REVERSED AS REVERSED,         P0.SOUSERID AS SOUSERID,         A1.TX_AMOUNT AS AMOUNT,         P0.TRANSACCTNUMBER AS ACCTNO,   
      P0.ACCTNM AS NAME,         P0.TRANSNAMEBLPOSTING AS REMARKS,         A0.UPDATEDTTM AS UPDATEDTTM,         A0.UPDATESYSTEM 
AS UPDATESYSTEM,         A0.UPDATEUSER AS UPDATEUSER,         A0.VERSIONSTAMP AS VERSIONSTAMP  FROM    FSTBASETRAN A0        
  INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY          INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY 
= A1.FSTBASETRANKY          INNER JOIN VWMBBACCTREACT P1 ON (P0.TRANSACCTNUMBER = P1.TX_ACCOUNT)  AND     (A1.DATETIME) 
= (P1.DATETIME)  AND     A1.STATUS = 'success' order by P1.DATETIME,A1.DATETIME




SELECT "EJNAME", "EJVALUE", "LUID", "LOCAL_TRANS_ID", "FSTJOURNALENTRYKY", "UPDATESYSTEM", "UPDATEDTTM", "UPDATEUSER", "VERSIONSTAMP" FROM "DEVUSER"."VWMBBEJDTLSINFO";
GO



-- ***********************************************************************************************
-- Release Name : BFE Drop 3
-- WorkStream   : Data Loading
-- Module Name  : Financing
-- Script Name  : sget_dml3_scr0034_SIT.sql
-- Creation Date: 28-Feb-2013
-- Requested By : Soon Chong Seng
-- Owner        : Musharraf Ashraf Dabre
-- Description  : Script to remove the foreign compartment from local drawer in SIT Only.
-- ***********************************************************************************************

-- Logging the start time & the Script Name in the Database ---
INSERT INTO UTLDBUPGRADELOG (UTLDBUPGRADELOGKY, PROCESSNAME, STATUS, STARTDTTM, ENDDTTM, DESCRIPTION, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP, UTLSCHEMAVERSIONKY) 
VALUES((SELECT COALESCE(MAX(UTLDBUPGRADELOGKY),0)+1 FROM UTLDBUPGRADELOG),
       'sget_dml3_scr0034_SIT.sql',
       'INPROCESS',
       CURRENT TIMESTAMP,
       CURRENT TIMESTAMP,
       'Script to remove the foreign compartment from local drawer in SIT Only.',
       CURRENT TIMESTAMP,
       'MBB',
       'system',
       1,
       NULL
      );

-- List of Compartment for Local(0) & TAU Drawer(20) with foreign Currency --
SELECT FSTDRAWERCOMPMNTKY, COMPARTMENTNAME, FSTDRAWERKY
FROM FSTDRAWERCOMPMNT 
WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE TYPE IN (0,20))
ORDER BY 3;

-- Deleting dependent rows for Wrong currency for local Drawer --
DELETE FROM FSTBALANCEPOS
WHERE FSTDRAWERCOMPMNTKY IN ( SELECT FSTDRAWERCOMPMNTKY FROM FSTDRAWERCOMPMNT 
							  WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE TYPE IN (0,20))
							  AND COMPARTMENTNAME != 'SGD'
							 );

DELETE FROM MBBDRAWERCOMPMNT
WHERE FSTDRAWERCOMPMNTKY IN ( SELECT FSTDRAWERCOMPMNTKY FROM FSTDRAWERCOMPMNT 
							  WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE TYPE IN (0,20))
							  AND COMPARTMENTNAME != 'SGD'
							 );

DELETE
FROM FSTDRAWERCOMPMNT 
WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE TYPE IN (0,20))
AND COMPARTMENTNAME != 'SGD';


-- List of Drawer Compartment for Local(0) & TAU Drawer(20) with Local Currency 
SELECT FSTDRAWERCOMPMNTKY,  COMPARTMENTNAME,  FSTDRAWERKY
FROM FSTDRAWERCOMPMNT 
WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE TYPE IN (0,20))
ORDER BY 3;

-- Update UTLSEQNUMGNRTR Table with Next Value --
UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(FSTBALANCEPOSKY),0)+1 AS INTEGER) FROM FSTBALANCEPOS)
WHERE UPPER(SEQNAME) = 'FSTBALANCEPOS';

UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(MBBDRAWERCOMPMNTKY),0)+1 AS INTEGER) FROM MBBDRAWERCOMPMNT)
WHERE UPPER(SEQNAME) = 'MBBDRAWERCOMPMNT';

UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(FSTDRAWERCOMPMNTKY),0)+1 AS INTEGER) FROM FSTDRAWERCOMPMNT)
WHERE UPPER(SEQNAME) = 'FSTDRAWERCOMPMNT';

-- Logging the Script End Time in the Database ---
UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(UTLDBUPGRADELOGKY),0)+1 AS INTEGER) FROM UTLDBUPGRADELOG)
WHERE UPPER(SEQNAME) = 'UTLDBUPGRADELOG';

UPDATE UTLDBUPGRADELOG
SET STATUS   = 'SUCCESS',
    ENDDTTM  = CURRENT TIMESTAMP
WHERE PROCESSNAME = 'sget_dml3_scr0034_SIT.sql';

COMMIT;
-- ***********************************************************************************************


select * FROM MBBDRAWERCOMPMNT
WHERE FSTDRAWERCOMPMNTKY IN ( SELECT FSTDRAWERCOMPMNTKY FROM FSTDRAWERCOMPMNT 
							  WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE TYPE IN (0,20))
							  AND COMPARTMENTNAME != 'SGD'
							 );



select * from fstdrawer where drawerid=28282828

select * from fstdrawer where drawerid=20	
select * from fstopendrawer where fstdrawerky=48003

select * from fstopendrawer where fstdrawerky=18002

select * from fstdrawercompmnt where fstdrawerky=48003


select a0.COMPARTMENTNAME,a0.FSTDRAWERKY,a1.drawerid,a1.currency ,a1.DESCRIPTION,a1.UPDATEUSER,a1.TYPE from fstdrawercompmnt a0,fstdrawer a1 where a1.FSTDRAWERKY = a0.FSTDRAWERKY and 
a1.currency !=a0.COMPARTMENTNAME

update  fstdrawercompmnt set COMPARTMENTNAME='USD' where FSTDRAWERCOMPMNTKY=53505;

commit;
SGD 20502 FSTCASHTEMPLATEKY
26

select * from fstbalancepos where fstdrawercompmntky=53505

select amount,currency,FSTBALANCEPOSKY
from fstbalancepos a INNER JOIN fstcashtemplate b on a.fstcashtemplateky=b.fstcashtemplateky 
where a.fstdrawercompmntky=53505



select * from fstdrawer where drawerid=82828282	
select * from fstopendrawer where fstdrawerky=49002

select * from fstdrawercompmnt where fstdrawerky=49002


select a0.COMPARTMENTNAME,a0.FSTDRAWERKY,a1.drawerid,a1.currency ,a1.DESCRIPTION,a1.UPDATEUSER,a1.TYPE from fstdrawercompmnt a0,fstdrawer a1 where a1.FSTDRAWERKY = a0.FSTDRAWERKY and 
a1.currency !=a0.COMPARTMENTNAME

update  fstbalancepos set AMOUNT=10.000 where FSTBALANCEPOSKY=23034;

commit;
SGD 20502 FSTCASHTEMPLATEKY
26

select * from fstbalancepos where fstdrawercompmntky=54510

select amount,currency,FSTBALANCEPOSKY
from fstbalancepos a INNER JOIN fstcashtemplate b on a.fstcashtemplateky=b.fstcashtemplateky 
where a.fstdrawercompmntky=53505


select * from FSTCASHTEMPLATE

select * from sysibm.sysindexes where tbname='FSTJOURNALENTRY'

DROP INDEX FSTJOURNALENTRY_CHK
DROP INDEX PS_FSTJOURNALENTRY_FI1
CREATE INDEX SONEDBA.PS_FSTJOURNALENTRY_FI1
  ON SONEDBA.FSTJOURNALENTRY
    ( OP_ID ASC, BRANCH_ID ASC, DATETIME ASC, TX_AMOUNT ASC, TX_NAME ASC, TX_ACCOUNT ASC, FSTJOURNALENTRYKY ASC, REVERSED ASC, FSTBASETRANKY ASC )
  
  ALLOW REVERSE SCANS;

commit;


 drop INDEX SONEDBA.PS_FSTJOURNALENTRY_FI1;
 
 CREATE INDEX SONEDBA.PS_FSTJOURNALENTRY_FI1
  ON SONEDBA.FSTJOURNALENTRY
    ( OP_ID ASC, BRANCH_ID ASC, DATETIME ASC, TX_AMOUNT ASC, TX_NAME ASC, TX_ACCOUNT ASC, FSTJOURNALENTRYKY ASC, REVERSED ASC, FSTBASETRANKY ASC )
  PCTFREE 20 CLUSTER ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS;

commit;


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, a0.opid,
 a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT a0 WHERE
 ((((a0.branchid = '0133') AND (a0.trandate > '2013-04-02 00:00:00.000')))
 AND (a0.trandate < '2013-05-23 17:00:00.000')) 



('0133', '2013-04-02 00:00:00.000', '2013-05-23 17:00:00.000')



SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT a0 WHERE ((((((a0.branchid = '0133') AND (a0.trandate > '2013-04-02 00:00:00.000'))) AND (a0.trandate < '2013-05-23 17:00:00.000')))
 AND (a0.opid = 'chuah1234')) 






DROP INDEX SONEDBA.PS_FSTJOURNALENTRY_FI1
CREATE INDEX SONEDBA.PS_FSTJOURNALENTRY_FI1
  ON SONEDBA.FSTJOURNALENTRY
    ( OP_ID , DATETIME , TX_AMOUNT , TX_NAME , TX_ACCOUNT , FSTJOURNALENTRYKY , REVERSED , FSTBASETRANKY )
   PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS;

DROP INDEX SONEDBA.PS_FSTJOURNALENTRY_CHK
CREATE INDEX SONEDBA.PS_FSTJOURNALENTRY_CHK
  ON SONEDBA.FSTJOURNALENTRY
    ( BRANCH_ID ASC )
    PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS CLUSTER;



    CREATE INDEX SONEDBA.PS_FSTJOURNALENTRY_FI1
  ON SONEDBA.FSTJOURNALENTRY
    ( OP_ID , BRANCH_ID, DATETIME , TX_AMOUNT , TX_NAME , TX_ACCOUNT , FSTJOURNALENTRYKY , REVERSED , FSTBASETRANKY )
   PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS CLUSTER;

COMMIT;




   SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, a0.opid,
 a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT a0 WHERE
 ((((a0.branchid = '401') AND (a0.trandate > '2014-01-02 00:00:00.000')))
 AND (a0.trandate < '2014-01-02 18:44:34.413')) 
 
 SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, a0.opid,
 a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT a0 WHERE
 ((((a0.branchid = '401') and (a0.opid='B01BS21') AND (a0.trandate > '2014-01-02 00:00:00.000')))
 AND (a0.trandate < '2014-01-02 18:44:34.413')) 



 SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, a0.opid,
 a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT a0 WHERE
 ((a0.branchid = '401') AND ((a0.trandate > '2014-01-02 00:00:00.000')
 AND (a0.trandate < '2014-01-02 18:44:34.413')))


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, a0.opid,
 a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT a0 WHERE 
((((a0.branchid = '0133') AND (a0.trandate > '2013-04-02 00:00:00.000'))) AND (a0.trandate < '2013-05-23 17:00:00.000'))



 ('0133', '2013-04-02 00:00:00.000', '2013-05-23 17:00:00.000')




SELECT TMP.FSTBASETRANKY, TMP.BRANCHID, TMP.TRANDATE, TMP.OPID, TMP.EJNO, TMP.TRANSACTION, TMP.REVERSED, TMP.SOUSERID, TMP.AMOUNT, TMP.ACCTNO, TMP.NAME, TMP.REMARKS, TMP.UPDATEDTTM, TMP.UPDATESYSTEM, TMP.UPDATEUSER, TMP.VERSIONSTAMP FROM (
SELECT A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, A1.TX_ACCOUNT AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM   FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (A1.TX_ACCOUNT = P1.TX_ACCOUNT) AND    DATE(A1.DATETIME) = DATE (P1.DATETIME) AND    A1.STATUS = 'success' 

UNION 

SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.DESTINATIONACCOUNT AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.DESTINATIONACCOUNT = P1.TX_ACCOUNT) AND P0.DESTINATIONACCOUNT <> A1.TX_ACCOUNT AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success' 

UNION 

SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.SWEEPACCTNUMBER AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.SWEEPACCTNUMBER = P1.TX_ACCOUNT) AND P0.SWEEPACCTNUMBER <> A1.TX_ACCOUNT AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success' 

UNION 

SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.TRANSACCTNUMBER AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.TRANSACCTNUMBER = P1.TX_ACCOUNT) AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success' ) TMP WHERE TMP.BRANCHID='0133' AND TMP.TRANDATE BETWEEN '2013-04-02 00:00:00.000' AND '2013-05-23 17:00:00.000'



SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, a0.opid, a0.branchid,
 a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT a0 WHERE ((((a0.branchid = '0133')
 AND (a0.trandate > '2013-04-02 00:00:00.000'))) AND (a0.trandate < '2013-05-23 17:00:00.000')) 
('0133', '2013-04-02 00:00:00.000', '2013-05-23 17:00:00.000')

select count(*) from fstjournalentry


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name,
 a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE ((((a0.branchid = '0133') AND (a0.trandate >  '2014-03-03 00:00:00.000'))) AND (a0.trandate < '2014-03-03 16:53:53.740'))
 ('0133', '2014-03-03 00:00:00.000', '2014-03-03 16:53:53.740')





SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name, a0.opid, 
a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT a0 WHERE 
((((a0.branchid = '0133') AND (a0.trandate > '2014-03-03 00:00:00.000'))) AND (a0.trandate < '2014-03-03 17:13:21.307')) 


('0133', '2014-03-03 00:00:00.000', '2014-03-03 17:13:21.307')




 TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.TRANSACCTNUMBER AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.TRANSACCTNUMBER = P1.TX_ACCOUNT) AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success'


 SELECT A0.FSTBASETRANKY AS FSTBASETRANKY,
        A1.BRANCH_ID AS BRANCHID,
        A0.DATETIME AS TRANDATE,
        A1.OP_ID AS OPID,
        A1.JOURNAL_NR AS EJNO, 
       A0.NAME AS TRANSACTION, 
      A1.REVERSED AS REVERSED,
        P0.SOUSERID AS SOUSERID,
        A1.TX_AMOUNT AS AMOUNT,
        A1.TX_ACCOUNT AS ACCTNO,
        P0.ACCTNM AS NAME,
        P0.TRANSNAMEBLPOSTING AS REMARKS,
        A0.UPDATEDTTM AS UPDATEDTTM,
        A0.UPDATESYSTEM AS UPDATESYSTEM,
        A0.UPDATEUSER AS UPDATEUSER,
        A0.VERSIONSTAMP AS VERSIONSTAMP
          FROM   FSTBASETRAN A0 ,PSOBASETRAN P0,FSTJOURNALENTRY A1,VWMBBACCTREACT P1
         where A0.FSTBASETRANKY = P0.FSTBASETRANKY
         and  A0.FSTBASETRANKY = A1.FSTBASETRANKY 
        and (A1.TX_ACCOUNT = P1.TX_ACCOUNT)  AND    DATE(A1.DATETIME) = DATE (P1.DATETIME)  AND    A1.STATUS = 'success' 


UNION 


SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY,
         A1.BRANCH_ID AS BRANCHID,
         A0.DATETIME AS TRANDATE, 
        A1.OP_ID AS OPID, 
        A1.JOURNAL_NR AS EJNO, 
        A0.NAME AS TRANSACTION, 
        A1.REVERSED AS REVERSED,
         P0.SOUSERID AS SOUSERID, 
        A1.TX_AMOUNT AS AMOUNT, 
        P0.DESTINATIONACCOUNT AS ACCTNO,
         P0.ACCTNM AS NAME,
         P0.TRANSNAMEBLPOSTING AS REMARKS,
        A0.UPDATEDTTM AS UPDATEDTTM,
         A0.UPDATESYSTEM AS UPDATESYSTEM, 
        A0.UPDATEUSER AS UPDATEUSER,   
      A0.VERSIONSTAMP AS VERSIONSTAMP
     FROM    FSTBASETRAN A0 , PSOBASETRAN P0 ,FSTJOURNALENTRY A1 ,VWMBBACCTREACT P1       
      where A0.FSTBASETRANKY = P0.FSTBASETRANKY  
        and A0.FSTBASETRANKY = A1.FSTBASETRANKY          
       and (P0.DESTINATIONACCOUNT = P1.TX_ACCOUNT) 
    AND P0.DESTINATIONACCOUNT <> A1.TX_ACCOUNT  AND     DATE(A1.DATETIME) = DATE (P1.DATETIME)  AND  A1.STATUS = 'success' 


UNION


 SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY,
         A1.BRANCH_ID AS BRANCHID, 
        A0.DATETIME AS TRANDATE,
         A1.OP_ID AS OPID, 
       A1.JOURNAL_NR AS EJNO, 
        A0.NAME AS TRANSACTION, 
        A1.REVERSED AS REVERSED,
    p0.SOUSERID AS SOUSERID,
         A1.TX_AMOUNT AS AMOUNT,
         P0.SWEEPACCTNUMBER AS ACCTNO, 
        P0.ACCTNM AS NAME, 
 P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM,
         A0.UPDATESYSTEM AS UPDATESYSTEM,
 A0.UPDATEUSER AS UPDATEUSER, 
        A0.VERSIONSTAMP AS VERSIONSTAMP
  FROM    FSTBASETRAN A0  ,PSOBASETRAN P0  ,FSTJOURNALENTRY A1 ,VWMBBACCTREACT P1     
where A0.FSTBASETRANKY = P0.FSTBASETRANKY      
and A0.FSTBASETRANKY = A1.FSTBASETRANKY         
 and (P0.SWEEPACCTNUMBER = P1.TX_ACCOUNT) 
AND P0.SWEEPACCTNUMBER <> A1.TX_ACCOUNT  AND     DATE(A1.DATETIME)= DATE (P1.DATETIME)  AND     A1.STATUS = 'success' 


UNION


 SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY,         A1.BRANCH_ID AS BRANCHID,
         A0.DATETIME AS TRANDATE,         A1.OP_ID AS OPID,         A1.JOURNAL_NR AS EJNO,         A0.NAME AS TRANSACTION,        
 A1.REVERSED AS REVERSED,         P0.SOUSERID AS SOUSERID,         A1.TX_AMOUNT AS AMOUNT,         P0.TRANSACCTNUMBER AS ACCTNO,   
      P0.ACCTNM AS NAME,         P0.TRANSNAMEBLPOSTING AS REMARKS,         A0.UPDATEDTTM AS UPDATEDTTM,         A0.UPDATESYSTEM 
AS UPDATESYSTEM,         A0.UPDATEUSER AS UPDATEUSER,         A0.VERSIONSTAMP AS VERSIONSTAMP 
 FROM    FSTBASETRAN A0 ,PSOBASETRAN P0,FSTJOURNALENTRY A1,   
  where A0.FSTBASETRANKY = P0.FSTBASETRANKY         
   and A0.FSTBASETRANKY = A1.FSTBASETRANKY      
   and (P0.TRANSACCTNUMBER = P1.TX_ACCOUNT)  AND     DATE(A1.DATETIME) = DATE (P1.DATETIME)  AND     A1.STATUS = 'success'




SELECT F1.FSTBASETRANKY, F1.TX_ACCOUNT, F1.DATETIME 
FROM FSTJOURNALENTRY F1 ,PSOTRANSLEGINFO F2 where F2.FSTBASETRANKY = F1.FSTBASETRANKY 
and F2.TRANSCODE IN ('0340','1340','2340','8340') and F1.TX_ACCOUNT IS NOT NULL and F1.TX_ACCOUNT != ''

SELECT F1.FSTBASETRANKY, F1.TX_ACCOUNT, F1.DATETIME 
FROM FSTJOURNALENTRY F1 INNER JOIN PSOTRANSLEGINFO F2 ON F2.FSTBASETRANKY = F1.FSTBASETRANKY 
WHERE F2.TRANSCODE IN ('0340','1340','2340','8340') and F1.TX_ACCOUNT IS NOT NULL and F1.TX_ACCOUNT != ''


SELECT TEXT FROM SYSIBM.SYSVIEWS WHERE NAME = 'VWMBBACCTREACT' AND CREATOR = 'SONEDBA';
GO



select * from ARCCOUNTRYCD 


insert into ARCCOUNTRYCD values (240,'CHINA', 'aa', 'CNH',895,'ARCCrncySyCNH','ARCCrncySyCNH',current timestamp,'system', 'ARC', 1,202,'1');
commit;

select * from sysibm.sysindexes where tbname='FSTJOURNALENTRY'
select * from sysibm.sysindexes where tbname='FSTBASETRAN'

CREATE INDEX SONEDBA.PSOBASETRAN_chk1
  ON SONEDBA.PSOBASETRAN
    ( DESTINATIONACCOUNT)
  PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS ;

CREATE INDEX SONEDBA.PSOBASETRAN_chk2
  ON SONEDBA.PSOBASETRAN
    ( SWEEPACCTNUMBER)
  PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS ;

CALL SYSPROC.ADMIN_CMD('REORG INDEXES ALL FOR TABLE PSOBASETRAN');
CALL SYSPROC.ADMIN_CMD('REORG INDEXES ALL FOR TABLE FSTJOURNALENTRY');
CALL SYSPROC.ADMIN_CMD('REORG INDEXES ALL FOR TABLE FSTBASETRAN');

    CREATE INDEX SONEDBA.PS_FSTJOURNALENTRY_FI1
  ON SONEDBA.FSTJOURNALENTRY
    ( OP_ID , DATETIME , TX_AMOUNT , TX_NAME , TX_ACCOUNT , FSTJOURNALENTRYKY , REVERSED , FSTBASETRANKY )
   PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS ;
BRANCH_ID, 
CREATE INDEX SONEDBA.FSTJOURNALENTRY_chk2
  ON SONEDBA.FSTJOURNALENTRY
    ( BRANCH_ID)
  PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS CLUSTER;

CREATE INDEX SONEDBA.FSTBASETRAN_chk2
  ON SONEDBA.FSTBASETRAN
    (DATETIME)
  PCTFREE 20 ALLOW REVERSE SCANS COLLECT SAMPLED DETAILED STATISTICS;

DROP INDEX PS_FSTJOURNALENTRY_FI1_CHK1
DROP INDEX FSTJOURNALENTRY_CHK2
commit;

SELECT * FROM SONEDBA.VWMBBDORMANTACCTREACT A0 WHERE A0.BRANCHID='401' AND TRANDATE BETWEEN '2013-10-21 00:00:00.000' AND '2014-10-21 17:00:00.000'


SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.remarks, a0.transaction, a0.name,
 a0.opid, a0.branchid, a0.acctno, a0.souserid, a0.reversed, a0.trandate, a0.amount, a0.ejno FROM VWMBBDORMANTACCTREACT
 a0 WHERE ((((a0.branchid = '0133') AND (a0.trandate >  '2014-03-03 00:00:00.000'))) AND (a0.trandate < '2014-03-03 16:53:53.740'))
 ('0133', '2014-03-03 00:00:00.000', '2014-03-03 16:53:53.740')

SELECT * FROM SONEDBA.VWMBBDORMANTACCTREACT A0 WHERE A0.BRANCHID='0133' AND TRANDATE BETWEEN 
'2013-04-03 00:00:00.000' AND '2014-05-17 16:53:53.740' OPTIMIZE FOR 50 ROWS



1)ConcreteMBBNegotiableActivityUIService.java
2)ConcreteMBBInvDeliveryDetailsService.java

view name : VWMBBNEGITEMSACTLOG 

SELECT FSTINVSTOCKTX.ITEMTYPE,FSTINVSTOCKTXDET.CODETRAVELERCHECK,FSTFOREXARTICLE.DESCRIPTION,
FSTINVSTOCKTXDET.UPDATEDTTM,FSTINVSTOCKTXDET.PRFXSTRNG,FSTINVSTOCKTXDET.STARTINGSN,FSTINVSTOCKTXDET.ENDINGSN,
FSTINVSTOCKTXDET.SRLNOLENGTH,FSTJOURNALENTRY.OP_ID,FSTJOURNALENTRY.TX_NAME,FSTJOURNALENTRY.BRANCH_ID
FROM FSTFOREXARTICLE  
JOIN FSTINVSTOCKTXDET ON FSTINVSTOCKTXDET.CODETRAVELERCHECK = FSTFOREXARTICLE.CODE 
JOIN FSTJOURNALENTRY ON FSTJOURNALENTRY.FSTBASETRANKY = FSTINVSTOCKTXDET.FSTINVSTOCKTXKY
JOIN FSTINVSTOCKTX ON FSTJOURNALENTRY.FSTBASETRANKY = FSTINVSTOCKTX.FSTBASETRANKY
    
UNION 

SELECT FSTINVDELTX.ITEMTYPE,FSTINVDELIVDETAI.CODETRAVELERCHECK,FSTFOREXARTICLE.DESCRIPTION, 
FSTINVDELIVDETAI.UPDATEDTTM,PSOINVDELIVDETAI.PRFXSTRNG,FSTINVDELIVDETAI.STARTINGSN,FSTINVDELIVDETAI.ENDINGSN,
PSOINVDELIVDETAI.SRLNOLENGTH,FSTJOURNALENTRY.OP_ID,FSTJOURNALENTRY.TX_NAME,FSTJOURNALENTRY.BRANCH_ID
FROM FSTFOREXARTICLE 
JOIN FSTINVDELIVDETAI ON FSTINVDELIVDETAI.CODETRAVELERCHECK = FSTFOREXARTICLE.CODE
JOIN FSTDELIVERYTX ON FSTDELIVERYTX.FKFSTDELIVERYKY = FSTINVDELIVDETAI.FSTDELIVERYKY
JOIN PSOINVDELIVDETAI ON FSTINVDELIVDETAI.FSTINVDELIVDETAIKY = PSOINVDELIVDETAI.FSTINVDELIVDETAIKY
JOIN FSTJOURNALENTRY ON FSTJOURNALENTRY.FSTBASETRANKY = FSTDELIVERYTX.FSTBASETRANKY
JOIN FSTINVDELTX ON FSTJOURNALENTRY.FSTBASETRANKY = FSTINVDELTX.FSTBASETRANKY

UNION

SELECT FSTINVGLADJUST.ITEMTYPE,FSTINVGLADJUST.CODE,FSTFOREXARTICLE.DESCRIPTION, 
PSOBASETRAN.UPDATEDTTM, FSTINVGLADJUST.PRFXSTRNG,FSTINVGLADJUST.STARTINGSN,FSTINVGLADJUST.ENDINGSN,
FSTINVGLADJUST.SRLNOLENGTH,FSTINVGLADJUST.USER,FSTINVGLADJUST.TYPE,FSTINVGLADJUST.BRANCHID 
FROM FSTFOREXARTICLE 
JOIN FSTINVGLADJUST ON FSTINVGLADJUST.CODE = FSTFOREXARTICLE.CODE
JOIN PSOBASETRAN ON FSTINVGLADJUST.FSTINVGLADJUSTKY = PSOBASETRAN.FSTBASETRANKY;



CREATE VIEW SONEDBA.VWMBBNEGITEMSACTLOG
(ITEMTYPE
,CODETRAVELERCHECK
,DESCRIPTION
,UPDATEDTTM
,PRFXSTRNG
,STARTINGSN
,ENDINGSN
,SRLNOLENGTH
,OP_ID
,TX_NAME
,BRANCH_ID
)
AS 
SELECT FSTINVSTOCKTX.ITEMTYPE,FSTINVSTOCKTXDET.CODETRAVELERCHECK,FSTFOREXARTICLE.DESCRIPTION,
FSTINVSTOCKTXDET.UPDATEDTTM,FSTINVSTOCKTXDET.PRFXSTRNG,FSTINVSTOCKTXDET.STARTINGSN,FSTINVSTOCKTXDET.ENDINGSN,
FSTINVSTOCKTXDET.SRLNOLENGTH,FSTJOURNALENTRY.OP_ID,FSTJOURNALENTRY.TX_NAME,FSTJOURNALENTRY.BRANCH_ID
FROM FSTFOREXARTICLE  
JOIN FSTINVSTOCKTXDET ON FSTINVSTOCKTXDET.CODETRAVELERCHECK = FSTFOREXARTICLE.CODE 
JOIN FSTJOURNALENTRY ON FSTJOURNALENTRY.FSTBASETRANKY = FSTINVSTOCKTXDET.FSTINVSTOCKTXKY
JOIN FSTINVSTOCKTX ON FSTJOURNALENTRY.FSTBASETRANKY    = FSTINVSTOCKTX.FSTBASETRANKY    
UNION 
SELECT FSTINVDELTX.ITEMTYPE,FSTINVDELIVDETAI.CODETRAVELERCHECK,FSTFOREXARTICLE.DESCRIPTION, 
FSTINVDELIVDETAI.UPDATEDTTM,PSOINVDELIVDETAI.PRFXSTRNG,FSTINVDELIVDETAI.STARTINGSN,FSTINVDELIVDETAI.ENDINGSN,
PSOINVDELIVDETAI.SRLNOLENGTH,FSTJOURNALENTRY.OP_ID,FSTJOURNALENTRY.TX_NAME,FSTJOURNALENTRY.BRANCH_ID
FROM FSTFOREXARTICLE 
JOIN FSTINVDELIVDETAI ON FSTINVDELIVDETAI.CODETRAVELERCHECK = FSTFOREXARTICLE.CODE
JOIN FSTDELIVERYTX ON FSTDELIVERYTX.FKFSTDELIVERYKY = FSTINVDELIVDETAI.FSTDELIVERYKY
JOIN PSOINVDELIVDETAI ON FSTINVDELIVDETAI.FSTINVDELIVDETAIKY = PSOINVDELIVDETAI.FSTINVDELIVDETAIKY
JOIN FSTJOURNALENTRY ON FSTJOURNALENTRY.FSTBASETRANKY = FSTDELIVERYTX.FSTBASETRANKY
JOIN FSTINVDELTX ON FSTJOURNALENTRY.FSTBASETRANKY = FSTINVDELTX.FSTBASETRANKY
UNION
SELECT FSTINVGLADJUST.ITEMTYPE,FSTINVGLADJUST.CODE,FSTFOREXARTICLE.DESCRIPTION, 
PSOBASETRAN.UPDATEDTTM, FSTINVGLADJUST.PRFXSTRNG,FSTINVGLADJUST.STARTINGSN,FSTINVGLADJUST.ENDINGSN,
FSTINVGLADJUST.SRLNOLENGTH,FSTINVGLADJUST.USER,FSTINVGLADJUST.TYPE,CAST (CAST(FSTINVGLADJUST.BRANCHID AS CHAR(50)) AS VARCHAR(50)) 
FROM FSTFOREXARTICLE 
JOIN FSTINVGLADJUST ON FSTINVGLADJUST.CODE = FSTFOREXARTICLE.CODE
JOIN PSOBASETRAN ON FSTINVGLADJUST.FSTINVGLADJUSTKY = PSOBASETRAN.FSTBASETRANKY



select * from fsttotal where branchid ='133' and businessdate= '2014-03-27'

select * from fstdrawer where drawerid=282828

select * from fstdrawer where drawerid=20



update fstdrawer set isopen='0' where drawerid=282828



select * from fstopendrawer where fstdrawerky =52502   - FSTOPENDRAWERKY
96002

update fstopendrawer set isopen='0'  where fstdrawerky =52502

Hi wendy, Can you please attach the screenshots for this issue.
Jose,
Please kindly help to extract the data from DB production.
select * from FSTJOURNALENTRY where and businessdate between '2014-03-25' and '2014-03-26'   order by DATETIME desc; 
select * from fstdrawer join fstorg on fstdrawer.fstorgky = fstorg.cororgky where fstorg.id = 412  for read only with ur;  
select * from fstopendrawer  join fstdrawer on fstopendrawer.fstdrawerky = fstdrawer.fstdrawerky join fstorg on fstdrawer.fstorgky = fstorg.cororgky where fstorg.id = 412 for read only with ur;
select * from fsttotal where branchid ='412' and businessdate between '2014-03-25' and '2014-03-26' order by businessdate desc for read only with ur;
select  * from FSTDRAWERCOMPMNT;
select * from FSTBALANCEPOS;


select * from mbbbnklist
select * from ARCENUM where CATEGORY = 'bankCdEnum'

select * from ARCMESSAGE where MSGCODE between 'MBBBankCd001' and 'MBBBankCd070'





-- *************************************************************************--------------------------------
-- Release Name : BFE Drop 3 Phase2
-- WorkStream   : Data Migration
-- Module Name  : Deposit-2
-- Script Name  : BFE_DP3_SCR0024.4.sql
-- Creation Date: 23-Apr-2014
-- Requested By : Jonnelyn/Edwin
-- Owner        : Barath Kaveripakam / Madhu Gunji
-- Description  : Defect# 4027 Script to Delete,Update and Add the new bank codes.
-- ***********************************************************************---------------------------------

-- Logging the start time & the Script Name in the Database ---

INSERT INTO UTLDBUPGRADELOG (UTLDBUPGRADELOGKY, PROCESSNAME, STATUS, STARTDTTM, ENDDTTM, DESCRIPTION, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP, UTLSCHEMAVERSIONKY) 
VALUES((SELECT COALESCE(MAX(UTLDBUPGRADELOGKY),0)+1 FROM UTLDBUPGRADELOG),
       'BFE_DP3_SCR0024.4.sql',
       'INPROCESS',
       CURRENT TIMESTAMP,
       CURRENT TIMESTAMP,
       'Script to Delete,Update and Add the new bank codes.',
       CURRENT TIMESTAMP,
       'MBB',
       'system',
       1,
       NULL
      );
	  
-- CHECK FOR Tables BEFORE INSERT TABLE--

SELECT * FROM ARCENUM WHERE MSGCODE IN('MBBBankCd009','MBBBankCd011','MBBBankCd026','MBBBankCd031','MBBBankCd064','MBBBankCd065','MBBBankCd066','MBBBankCd067','MBBBankCd068','MBBBankCd069','MBBBankCd070');
SELECT * FROM ARCMESSAGE WHERE MSGCODE IN('MBBBankCd009','MBBBankCd011','MBBBankCd026','MBBBankCd031','MBBBankCd064','MBBBankCd065','MBBBankCd066','MBBBankCd067','MBBBankCd068','MBBBankCd069','MBBBankCd070');

--Deleting Data from ARCEnum and ARCMessage--

DELETE FROM ARCENUM WHERE MSGCODE IN ('MBBBankCd026','MBBBankCd031') AND CATEGORY= 'bankCdEnum';
DELETE FROM ARCMESSAGE WHERE MSGCODE IN ('MBBBankCd026','MBBBankCd031');

--Updating Data from  ARCMessage--

UPDATE ARCMESSAGE
SET TRANSLATION = '7117 Singapore Island Bank Limited'
WHERE MSGCODE = 'MBBBankCd009';

UPDATE ARCMESSAGE
SET TRANSLATION = '7135 Credit Agricole Corporate & Investment Bank'
WHERE MSGCODE = 'MBBBankCd011';


-- Loading Data into ARCEnum Table --

INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM) ,NULL,'MBBBankCd064','bankCdEnum',64,'ARCEnTyTreeLf',64,NULL,'bankCdEnum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM) ,NULL,'MBBBankCd065','bankCdEnum',65,'ARCEnTyTreeLf',65,NULL,'bankCdEnum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM) ,NULL,'MBBBankCd066','bankCdEnum',66,'ARCEnTyTreeLf',66,NULL,'bankCdEnum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM) ,NULL,'MBBBankCd067','bankCdEnum',67,'ARCEnTyTreeLf',67,NULL,'bankCdEnum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM) ,NULL,'MBBBankCd068','bankCdEnum',68,'ARCEnTyTreeLf',68,NULL,'bankCdEnum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM) ,NULL,'MBBBankCd069','bankCdEnum',69,'ARCEnTyTreeLf',69,NULL,'bankCdEnum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM) ,NULL,'MBBBankCd070','bankCdEnum',70,'ARCEnTyTreeLf',70,NULL,'bankCdEnum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);

-- Loading Data into ARCMessage Table --

INSERT INTO ARCMESSAGE (ARCMESSAGEKY,ARCLOCALECDKY,ARCSYSTEMCONTEXTKY,MSGCODE,TRANSLATION,MSGCATEGORYENUM,MSGCONTEXTDESC,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE),1,NULL,'MBBBankCd064','5027 Hong Leong Finance Ltd','ARCMsgEnum',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCMESSAGE (ARCMESSAGEKY,ARCLOCALECDKY,ARCSYSTEMCONTEXTKY,MSGCODE,TRANSLATION,MSGCATEGORYENUM,MSGCONTEXTDESC,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE),1,NULL,'MBBBankCd065','7852 Societe Generale','ARCMsgEnum',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCMESSAGE (ARCMESSAGEKY,ARCLOCALECDKY,ARCSYSTEMCONTEXTKY,MSGCODE,TRANSLATION,MSGCATEGORYENUM,MSGCONTEXTDESC,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE),1,NULL,'MBBBankCd066','8350 Intesa Sanpaolo S.p.A','ARCMsgEnum',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCMESSAGE (ARCMESSAGEKY,ARCLOCALECDKY,ARCSYSTEMCONTEXTKY,MSGCODE,TRANSLATION,MSGCATEGORYENUM,MSGCONTEXTDESC,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE),1,NULL,'MBBBankCd067','8873 Landesbank Baden-Wurttemberg','ARCMsgEnum',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCMESSAGE (ARCMESSAGEKY,ARCLOCALECDKY,ARCSYSTEMCONTEXTKY,MSGCODE,TRANSLATION,MSGCATEGORYENUM,MSGCONTEXTDESC,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE),1,NULL,'MBBBankCd068','9326 Qatar National Bank SAQ','ARCMsgEnum',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCMESSAGE (ARCMESSAGEKY,ARCLOCALECDKY,ARCSYSTEMCONTEXTKY,MSGCODE,TRANSLATION,MSGCATEGORYENUM,MSGCONTEXTDESC,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE),1,NULL,'MBBBankCd069','9353 Chinatrust Commercial Bank Co. Ltd','ARCMsgEnum',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCMESSAGE (ARCMESSAGEKY,ARCLOCALECDKY,ARCSYSTEMCONTEXTKY,MSGCODE,TRANSLATION,MSGCATEGORYENUM,MSGCONTEXTDESC,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE),1,NULL,'MBBBankCd070','9423 China CITIC Bank International Ltd','ARCMsgEnum',NULL,CURRENT TIMESTAMP,'system','MBB',1);

-- CHECK FOR Tables AFTER INSERT TABLE--

SELECT * FROM ARCENUM WHERE MSGCODE IN('MBBBankCd009','MBBBankCd011','MBBBankCd026','MBBBankCd031','MBBBankCd064','MBBBankCd065','MBBBankCd066','MBBBankCd067','MBBBankCd068','MBBBankCd069','MBBBankCd070');
SELECT * FROM ARCMESSAGE WHERE MSGCODE IN('MBBBankCd009','MBBBankCd011','MBBBankCd026','MBBBankCd031','MBBBankCd064','MBBBankCd065','MBBBankCd066','MBBBankCd067','MBBBankCd068','MBBBankCd069','MBBBankCd070');

-- Update UTLSEQNUMGNRTR Table with Next Value --

UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM)
WHERE UPPER(SEQNAME) = 'ARCENUM';

UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE)
WHERE UPPER(SEQNAME) = 'ARCMESSAGE';

-- Logging the Script End Time in the Database ---

UPDATE UTLSEQNUMGNRTR
SET NEXTSEQNUM = (SELECT CAST(COALESCE(MAX(UTLDBUPGRADELOGKY),0)+1 AS INTEGER) FROM UTLDBUPGRADELOG)
WHERE UPPER(SEQNAME) = 'UTLDBUPGRADELOG';

UPDATE UTLDBUPGRADELOG
SET STATUS   = 'SUCCESS',
    ENDDTTM  = CURRENT TIMESTAMP
WHERE PROCESSNAME = 'BFE_DP3_SCR0024.4.sql';

COMMIT;
-- *************************************************************************---------------------------------



UPDATE ARCMESSAGE
SET TRANSLATION = '7135 Credit Agricole Corp.& Invt Bk'
WHERE MSGCODE = 'MBBBankCd011';

UPDATE ARCMESSAGE
SET TRANSLATION = '9353 Chinatrust Comm Bank Co.Ltd'
WHERE MSGCODE = 'MBBBankCd069';




----------- changes--------------
UPDATE ARCMESSAGE
SET TRANSLATION = '9423 China CITIC Bank Intl Ltd'
WHERE MSGCODE = 'MBBBankCd070';


select * from ARCMESSAGE where TRANSLATION like '511590%'


---------------
Regarding 4102


INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM),NULL,'MBBSvgPrd049','ismSvgPrdEnum',11,'ARCEnTyTreeLf',11,NULL,'ismSvgPrdEnum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);

-- Insert 1 entries into ARCMessage Table --
INSERT INTO ARCMESSAGE (ARCMESSAGEKY,ARCLOCALECDKY,ARCSYSTEMCONTEXTKY,MSGCODE,TRANSLATION,MSGCATEGORYENUM,MSGCONTEXTDESC,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE),1,NULL,'MBBSvgPrd049','SO iSAVvy Savings Acct','ARCMsgEnum',NULL,CURRENT TIMESTAMP,'system','MBB',1);

-- Updating to conREMSvgEnum---- 

UPDATE ARCENUM
SET CATEGORY = 'conREMSvgEnum'
, FETCHID = 'conREMSvgEnum'
, ENUMVALUE = 35
, RANKING = 35
, UPDATEDTTM = CURRENT TIMESTAMP
WHERE MSGCODE = 'MBBSvgPrd049';



SELECT "FSTPODKY", "UPDATEDTTM", "UPDATESYSTEM", "UPDATEUSER", "VERSIONSTAMP", "ACCTNR", "CASHINAMT", "CASHINCURRENCYKY", "CHECKSINAMT", "CHECKSINCURRENCYKY", "AMOUNT", "AMOUNTCURRENCYKY", "UNVERIFIEDSTATUS", "CASHACCEPTED", "BAGNO", "TELLERID", "BRANCHID" FROM "SONEDBA"."FSTPOD";
GO





SELECT A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, A1.TX_ACCOUNT AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM   FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (A1.TX_ACCOUNT = P1.TX_ACCOUNT) AND    DATE(A1.DATETIME) = DATE (P1.DATETIME) AND    A1.STATUS = 'success'

UNION 

SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.DESTINATIONACCOUNT AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.DESTINATIONACCOUNT = P1.TX_ACCOUNT) AND P0.DESTINATIONACCOUNT <> A1.TX_ACCOUNT AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success'

UNION 

SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.SWEEPACCTNUMBER AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.SWEEPACCTNUMBER = P1.TX_ACCOUNT) AND P0.SWEEPACCTNUMBER <> A1.TX_ACCOUNT AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success'

UNION 

SELECT  A0.FSTBASETRANKY AS FSTBASETRANKY, A1.BRANCH_ID AS BRANCHID, A0.DATETIME AS TRANDATE, A1.OP_ID AS OPID, A1.JOURNAL_NR AS EJNO, A0.NAME AS TRANSACTION, A1.REVERSED AS REVERSED, P0.SOUSERID AS SOUSERID, A1.TX_AMOUNT AS AMOUNT, P0.TRANSACCTNUMBER AS ACCTNO, P0.ACCTNM AS NAME, P0.TRANSNAMEBLPOSTING AS REMARKS, A0.UPDATEDTTM AS UPDATEDTTM, A0.UPDATESYSTEM AS UPDATESYSTEM, A0.UPDATEUSER AS UPDATEUSER, A0.VERSIONSTAMP AS VERSIONSTAMP FROM    FSTBASETRAN A0 INNER JOIN PSOBASETRAN P0 ON A0.FSTBASETRANKY = P0.FSTBASETRANKY INNER JOIN FSTJOURNALENTRY A1 ON A0.FSTBASETRANKY = A1.FSTBASETRANKY INNER JOIN VWMBBACCTREACT P1 ON (P0.TRANSACCTNUMBER = P1.TX_ACCOUNT) AND     DATE(A1.DATETIME) = DATE (P1.DATETIME) AND     A1.STATUS = 'success' 

with ur@



select distinct(BUCKETNAME) from fsttotal where FSTOPENDRAWERKY=81515


select * from fstjournal

SELECT "FSTJOURNALENTRYKY", "LUID", "LOCAL_JOURNAL_NR", "JOURNAL_NR", "TX_NAME", "TX_ID", "OP_ID", "BRANCH_ID", "DRAWER_ID", "SESSION_ID", "DATETIME", "LOCAL_TRANS_ID", "SUPERVISOR", "PEER", "ENTRY_NAME", "STATUS", "REVERSED", "TX_AMOUNT", "TX_ACCOUNT", "BUSINESSDATE", "BUSINESSTIME", "FSTBASETRANKY", "CORORGKY", "ARCPRINCIPALKY", "FSTOPENDRAWERKY", "MESSAGE", "COMPARTMENTNAME", "OPENDRAWERLUID", "AMLOREFERENCENO", "UPDATESYSTEM", "UPDATEDTTM", "UPDATEUSER", "VERSIONSTAMP", "TRANSREFERENCENO", "HOSTSUPERVISOR", "ORIGMODE", "TRANGRPTYP", "SUPERVISOROVRRDMSG", "ESBSTATSDSCRPTN", "GRPTRANSREFERENCENO", "HOSTSUPERVISOR2", "HOSTTLLRID", "PYMNTMD", "RQSTUID", "SUPERVISOR2", "VRFCTNMTHD", "GRPNM", "LATEFLG", "MISCTYP", "STATUSCD", "TRANSACTIONTYPE", "ACCSSNOCNT", "ATMCRDCNT", "POSTNGDTTM", "SYNCFAILINFO" FROM "SONEDBA"."FSTJOURNALENTRY";
GO



SELECT a0.FSTTotalKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.bucketname, a0.opendrawerluid, a0.compartmentname, a0.transtime, a0.opid, a0.branchid, a0.fstopendrawerky, a0.transcount, a0.businessdate, a0.amount, a0.luid FROM FSTTotal a0 INNER JOIN (FSTOpenDrawer a1 INNER JOIN ((FSTPRINCIPAL a2 INNER JOIN ARCPrincipal a3 ON a2.ARCPrincipalKy = a3.ARCPrincipalKy)) ON a1.arcprincipalky = a2.ARCPrincipalKy) ON a0.fstopendrawerky = a1.FSTOpenDrawerKy 
WHERE ((((a3.name = 'ramesh') AND (a1.isopen = '1'))) AND (a0.transtime > '2014-07-09 00:00:00.000')) 

FSTOPENDRAWERKY
82550
select * from FSTDRAWER where drawerid=28282828
SELECT * FROM FSTOPENDRAWER where FSTDRAWERKY=48003

update FSTDRAWER set isopen='0' where drawerid=28282828;
update fstopendrawer set isopen='0' where FSTOPENDRAWERKY= 82550    =48003;
commit;

select * from MBBRMTSQNC where branchid ='403'

update MBBRMTSQNC  set branchid ='133' where branchid ='403'


select * from 

SELECT "PSOPRINCIPALKY", "ARCPRINCIPALKY", "UPDATEDTTM", "UPDATESYSTEM", "UPDATEUSER", "VERSIONSTAMP", "HOSTUSERID", "EMPLOYERID", "LEVEL", "TLLRTRANSMODE", "CHFCSHRTLLRIDNO", "SUPERVISORMMOIDNO", "SUPERVISORTLLRIDNO", "TELLERIDSTATUS", "TLLRMMOIDNO", "OFFCRTYP", "TLLRTYP", "VALIDEMAIL", "OFFCRLVL", "ALLOWCASHTRAN", "ALLOWNONCASHTRAN", "ISLATECHQON", "ISLATEMOPOON", "SESSNPSSWRD", "ISCASHCLSD", "ISEODPERFRMD", "LATESTATUSCURRENCYCDKY", "LATESTATUSLCLCURRENCY", "LATESTATUSFRGCURRENCY", "RELIFGRPKY", "RELIFBRNCHKY", "RELIFFROM", "RELIFTO" FROM "SONEDBA"."PSOPRINCIPAL";
GO

SELECT "ARCPRINCIPALKY", "ISSUPERVISOR", "ISLOGINANYWHERE", "VALIDDATEFROM", "VALIDDATETO", "CORORGKY", "VERSIONSTAMP", "CURRENTTERMINAL", "SUPERVISORLEVEL" FROM "SONEDBA"."FSTPRINCIPAL";
GO

SELECT "FSTBASETRANKY", "SRLNO", "NEWSRLNO", "CHQNO", "CHRGCHQNO", "CHRGGLREFNO", "CHRGGLREFDESC", "CIFNO", "ICNO", "BRNCHNM", "BUYSELL", "CRDRTYP", "QUANTITY", "RSNCD", "REMGRPNO", "SETTLMNTVAL", "AGENTNM", "AGNTPLACENM", "VSTROACCTNO", "UPDATEDTTM", "UPDATEUSER", "UPDATESYSTEM", "VERSIONSTAMP", "CNTRCTREFNO", "APPLCNTNM", "BNFCRYNM", "BNFCRYICNO", "TTCURRENCYCDKY", "ABBREVIATION", "PLACE" FROM "SONEDBA"."MBBRMTINWARDTRAN";
GO

SELECT "FSTBASETRANKY", "REBAND", "SRLNO", "CMMSSNLIEUAMOUNT", "CMMSSNLIEUCURRENCYCDKY", "CBLCHRGS", "CBLCHRGSCURRENCYCDKY", "CHRGCHQNO", "CHRGGLREFNO", "CHRGGLREFDESC", "CHQNO", "SPCLRATE", "APPLCNTNM", "ICNO", "CIFNO", "PAYEEICNO", "PAYEENM1", "PAYEENM2", "PAYEENM3", "ADDRSS1", "ADDRSS2", "ADDRSS3", "AGENTNM", "AGNTPLACENM", "VSTROACCTNO", "DRWRBRNCHNO", "SETTLMNTVAL", "REMGRPNO", "AUXLRYCODE", "APPLCTNIND", "BNFCRYNM", "BNFCRYICNO", "BNFCRYACCTNO", "DPRTMNTCODE", "QUANTITY", "EUROCNTRY", "CNTRCTREFNO", "UPDATEDTTM", "UPDATEUSER", "UPDATESYSTEM", "VERSIONSTAMP", "NEWSRLNO", "NEWREMGRPNO", "REISSUEAMT", "REISSUEAMTCURRENCYCDKY" FROM "SONEDBA"."MBBRMTOUTWRDTRAN";
GO

SELECT "MBBRMTSETTINGKY", "CURRENCYCD", "RMTTYP", "CMMSSNPERCENT", "CBLCHRG", "CBLTYP", "CSTMRTYP", "STAFF", "MINCMMSSN", "MAXCMMSSN", "CMMSSN", "RATEVRNC", "SRVCCHRG", "UPDATESYSTEM", "UPDATEUSER", "UPDATEDTTM", "VERSIONSTAMP" FROM "SONEDBA"."MBBRMTSETTING";
GO

SELECT "FSTBASETRANKY", "ISSUANCEDT", "REMGROUPNO", "SERIALNO", "ARCISOCURRENCYCDKY", "ICNO", "ISSUANCEAMT", "APPLCNTNM", "PAYEENM", "REISSUANCEQTY", "AGNTCD", "DRAWEEBRANCHID", "CRACCNTNO", "UPDATEDTTM", "UPDATESYSTEM", "UPDATEUSER", "VERSIONSTAMP" FROM "SONEDBA"."MBBRMTTRAN";
GO

SELECT "MBBRMTSQNCKY", "PRODUCTCD", "SQNCNO", "UPDATEDTTM", "UPDATEUSER", "UPDATESYSTEM", "VERSIONSTAMP" FROM "SONEDBA"."MBBRMTSQNC_BU0";
GO

SELECT "MBBRMTSQNCKY", "BRANCHID", "PRODUCTCD", "SQNCNO", "UPDATEDTTM", "UPDATEUSER", "UPDATESYSTEM", "VERSIONSTAMP" FROM "SONEDBA"."MBBRMTSQNC";
GO



select distinct a.ID, c.NAME, b.HOSTBRNCHCD, b.SUBBRNCHCD  
from FSTORG a  
inner join PSOORG b on a.CORORGKY = b.CORORGKY 
inner join CORORG c on a.CORORGKY = c.CORORGKY 
order by HOSTBRNCHCD


select * from FSTJOURNALENTRY t where t.fstjournalentryky=2257506


*MBBReversePostChequeDepositSG

SELECT a0.FSTJournalEntryKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.rqstuid, a0.supervisor, a0.local_journal_nr, a0.supervisor2, a0.tx_amount, a0.hostsupervisor2, a0.message, a0.fstopendrawerky, a0.arcprincipalky, a0.tx_name, a0.syncfailinfo, a0.transreferenceno, a0.luid, a0.drawer_id, a0.datetime, a0.reversed, a0.trangrptyp, a0.branch_id, a0.businessdate, a0.statuscd, a0.entry_name, a0.esbstatsdscrptn, a0.businesstime, a0.amloreferenceno, a0.tx_id, a0.pymntmd, a0.vrfctnmthd, a0.transactiontype, a0.cororgky, a0.hosttllrid, a0.session_id, a0.journal_nr, a0.opendrawerluid, a0.postngdttm, a0.lateflg, a0.status, a0.tx_account, a0.hostsupervisor, a0.supervisorovrrdmsg, a0.origmode, a0.grptransreferenceno, a0.local_trans_id, a0.peer, a0.compartmentname, a0.fstbasetranky, a0.op_id, a0.grpnm FROM FSTJournalEntry a0 WHERE a0.local_trans_id = ?
 ('e87618af-a2d1c420-e980e980-af497f99')

select * from ARCOPERATION where name like 'TX_MBB_BOF%'


select * from arcgrant 

select * from fstprincipal 

select * from arcprincipal

select userid, group, entitlement from (select arcprincipal.name userid, arcprincipalgrp.name group, arcoperation.name
 entitlement from sonedba.fstprincipal fstprincipal inner join sonedba.arcprincipal arcprincipal on
 fstprincipal.arcprincipalky = arcprincipal.arcprincipalky inner join sonedba.arcprincipalgrp arcgroup 
on fstprincipal.arcprincipalky = arcgroup.arcprincipalky inner join sonedba.arcprincipal group 
on arcgroup.arcprincipalkygrp = group.arcprincipalky inner join sonedba.arcgrant arcgrant on 
group.arcprincipalky = arcgrant.arcprincipalky and arcgrant.arcoperationky <> 82 inner 
join sonedba.arcoperation arcoperation on arcgrant.arcoperationky = arcoperation.arcoperationky 
inner join sonedba.arctarget arctarget on arcgrant.arctargetky = arctarget.arctargetky and
 arctarget.name = 'EMERGENCY' inner join sonedba.arcprincipal arcprincipalgrp on 
arcgroup.arcprincipalkygrp = arcprincipalgrp.arcprincipalky and arcprincipal.name= 'ramesh') as entitlement order by userid, group, entitlement for read only with ur

SELECT "ARCGRANTKY", "ARCTARGETKY", "ARCPRINCIPALKY", "ARCOPERATIONKY", "ARCCHANNELKY", "ARCQUALFRSETKY", "ISPOSITIVE", "UPDATEUSER", "UPDATEDTTM", "UPDATESYSTEM", "VERSIONSTAMP" FROM "SONEDBA"."ARCGRANT";
GO

SELECT "MBBRVRSLXMLKY", "FSTJOURNALENTRYKY", "RQSTUID", "RVRSLXML", "UPDATEDTTM", "UPDATEUSER", "UPDATESYSTEM", "VERSIONSTAMP" FROM "SONEDBA"."MBBRVRSLXML";
GO

SELECT "MBBRVRSLXMLKY", "FSTJOURNALENTRYKY", "RQSTUID", "RVRSLXML", "UPDATEDTTM", "UPDATEUSER", "UPDATESYSTEM", "VERSIONSTAMP" FROM "SONEDBA"."MBBRVRSLXML";
GO


select * from fstjournalentry where OP_ID='TRYEYE' and businessdate ='2014-09-17' for read only with ur

select * from mbbexcptnlog where trandt ='2014-09-17' and updateuser ='TRYEYE' for read only with ur


select * from mbbejinqrylg where opid='TRYEYE' and DATE(inqrydttm) ='2014-09-17' for read only with ur
select * from mbbejinqrylg where opid='TRYEYE' and DATE(inqrydttm) ='2014-09-17' for read only with ur

SELECT "MBBEXCPTNLOGKY", "TRANDT", "TRANDTLMSG", "VRFDIND", "COMMENTS", "PSOTRANSLEGINFOKY", "FSTJOURNALENTRYKY", "LOGTYP", "UPDATEDTTM", "UPDATEUSER", "UPDATESYSTEM", "VERSIONSTAMP", "OP_ID", "BRANCH_ID" FROM "SONEDBA"."MBBEXCPTNLOG";
GO

SELECT "MBBEJINQRYLGKY", "MBBINQRYLGID", "FSTBASETRANKY", "BRANCHID", "WRKSTTNID", "OPID", "HOSTTLLRID", "SUPERVISOR", "HOSTSUPERVISOR", "FNCTNNM", "ACCTNO", "CIFNO", "CSTID", "CSTIDTYP", "INQRYTYP", "BSNSSSVCID", "RQSTUID", "ACCSSNO", "PSSBKNO", "ATMCRDNO", "STATUS", "MESSAGE", "HOSTRSPNS", "RLTDTRANS", "INQRYDTTM", "STATUSCD", "SUPERVISOROVRRDMSG", "UPDATEDTTM", "UPDATESYSTEM", "UPDATEUSER", "VERSIONSTAMP", "BSNSSREGNO", "CSTMRNM", "DTOFBIRTHINC", "SYNCFAILINFO" FROM "SONEDBA"."MBBEJINQRYLG";
GO


FSTBASETRANKY
2267504
SELECT "FSTBASETRANKY", "TRANSREFERENCENO", "HOSTTRANSREFERENCENO", "HOSTSUPERVISOR", "AMLOREFERENCENO", "SUCCESSTXINDEX", "AUTOREVERSEINDEX", "HASEJREVERSEDRECORD", "TRANSACTIONCODE", "UPDATEDTTM", "UPDATEUSER", "VERSIONSTAMP", "MNEMONICCODE", "TRANSACTIONGROUP", "USERID", "SOUSERID", "HSOUSERID", "TRANSNAMETRANSCODE", "TRANSNAMEBLPOSTING", "TRANSACCTNUMBER", "TRANSACTIONBLAMOUNTCURRKY", "TRANSACTIONBLAMOUNT", "AUTOREVERSESTATUS", "ACCOUNTSFOREJ", "DESTINATIONACCOUNT", "SOURCEACCOUNT", "OLDLUIDFETCHINFO", "TRANSACTIONTYPE", "BRANCHID", "OPID", "SWEEPACCTNUMBER", "ORIGMODE", "BNKPLC", "ACCTNM", "CUSTTYP", "ENDTM", "ISEXSTNGCUST", "PRODUCT", "SCRNTXNREFNO", "SOUSERID2", "STARTTM", "VRFCTNMTHD", "BNKNM", "CDVNO", "CHQNO", "CIFNO", "GRPTRANSREFERENCENO", "PYMNTMD", "HOSTSUPERVISOR2", "HOSTTLLRID", "GRPNM", "AMLATYP", "LATEFLG", "MISCTYP", "TRANGRPTYP", "SOURCEACCOUNTNO", "ISPRINTED", "BULKMODE", "ACCSSNOCNT", "ATMCRDCNT", "CDVUNMATCHEDIND", "AMLACSHTRANDTLS", "WORKSTATIONID" FROM "SONEDBA"."PSOBASETRAN";
GO

SELECT "FSTBASETRANKY", "TRANSREFERENCENO", "HOSTTRANSREFERENCENO", "HOSTSUPERVISOR", "AMLOREFERENCENO", "SUCCESSTXINDEX", "AUTOREVERSEINDEX", "HASEJREVERSEDRECORD", "TRANSACTIONCODE", "UPDATEDTTM", "UPDATEUSER", "VERSIONSTAMP", "MNEMONICCODE", "TRANSACTIONGROUP", "USERID", "SOUSERID", "HSOUSERID", "TRANSNAMETRANSCODE", "TRANSNAMEBLPOSTING", "TRANSACCTNUMBER", "TRANSACTIONBLAMOUNTCURRKY", "TRANSACTIONBLAMOUNT", "AUTOREVERSESTATUS", "ACCOUNTSFOREJ", "DESTINATIONACCOUNT", "SOURCEACCOUNT", "OLDLUIDFETCHINFO", "TRANSACTIONTYPE", "BRANCHID", "OPID", "SWEEPACCTNUMBER", "ORIGMODE", "BNKPLC", "ACCTNM", "CUSTTYP", "ENDTM", "ISEXSTNGCUST", "PRODUCT", "SCRNTXNREFNO", "SOUSERID2", "STARTTM", "VRFCTNMTHD", "BNKNM", "CDVNO", "CHQNO", "CIFNO", "GRPTRANSREFERENCENO", "PYMNTMD", "HOSTSUPERVISOR2", "HOSTTLLRID", "GRPNM", "AMLATYP", "LATEFLG", "MISCTYP", "TRANGRPTYP", "SOURCEACCOUNTNO", "ISPRINTED", "BULKMODE", "ACCSSNOCNT", "ATMCRDCNT", "CDVUNMATCHEDIND", "AMLACSHTRANDTLS", "WORKSTATIONID" FROM "SONEDBA"."PSOBASETRAN";
GO

select * from fstbasetran order by updatedttm desc

INSERT INTO PSOBaseTran (FSTBaseTranKY, versionStamp, acctnm, destinationaccount, cdvno, bnkplc, userid, endtm, grpnm, branchid,
 transacctnumber, bulkmode, accountsforej, origmode, hosttransreferenceno, grptransreferenceno, autoreverseindex, transactioncode,
 transactiontype, scrntxnrefno, autoreversestatus, sourceaccount, sweepacctnumber, transreferenceno, amlatyp,
 amloreferenceno, pymntmd, transnametranscode, isexstngcust, hasejreversedrecord, hosttllrid, oldluidfetchinfo, chqno,
 product, cifno, souserid2, vrfctnmthd, starttm, hostsupervisor2, souserid, opid, isprinted, lateflg, hostsupervisor, 
custtyp, trangrptyp, hsouserid, successtxindex, transactionBLAmount, TRANSACTIONBLAMOUNTCURRKY, transnameblposting,workstationId) VALUES 
(2265005, 1, null, null, null, null, null, null, 'GRPOPENDRAWER', '133', null, null, '', 'Online', null, null, null, null, null, null, null,
 '', null, '0133141014021094', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ramesh',
 null, null, null, null, 'TOPGRPOPENDRAWER', null, null, null, null, null,49485)

update psobaseTran set workstationId =34343 where FSTBaseTranKY= '2267504'

INSERT INTO FSTBaseTran (FSTBaseTranKy, versionStamp, updateUser, updateDttm, sessBalAdj,
 SESSBALCURRENCYKY, custidtype, datetime, custid, ispersonorg, reversed, name,
 processstatus, sessionid, cororgky, businessdate, localtransid, opendrawerluid,
 status, fstopendrawerky, corpersonky) VALUES (2267505, 1, 'ramesh', '2014-10-14 12:45:58.664', null,
 null, null, '2014-10-14 12:45:19.520', null, null, '0', 'SignOn', 'processing', 
null, null, '2014-10-14', 'cf984720-a2d1c420-84e084e0-bc1886c8',
 '91b16ee0-a2d1c420-4ee84ee8-87b6ef71', 'memo', 85002, null)


SELECT "FSTBASETRANKY", "TRANSREFERENCENO", "HOSTTRANSREFERENCENO", "HOSTSUPERVISOR", "AMLOREFERENCENO", "SUCCESSTXINDEX", "AUTOREVERSEINDEX", "HASEJREVERSEDRECORD", "TRANSACTIONCODE", "UPDATEDTTM", "UPDATEUSER", "VERSIONSTAMP", "MNEMONICCODE", "TRANSACTIONGROUP", "USERID", "SOUSERID", "HSOUSERID", "TRANSNAMETRANSCODE", "TRANSNAMEBLPOSTING", "TRANSACCTNUMBER", "TRANSACTIONBLAMOUNTCURRKY", "TRANSACTIONBLAMOUNT", "AUTOREVERSESTATUS", "ACCOUNTSFOREJ", "DESTINATIONACCOUNT", "SOURCEACCOUNT", "OLDLUIDFETCHINFO", "TRANSACTIONTYPE", "BRANCHID", "OPID", "SWEEPACCTNUMBER", "ORIGMODE", "BNKPLC", "ACCTNM", "CUSTTYP", "ENDTM", "ISEXSTNGCUST", "PRODUCT", "SCRNTXNREFNO", "SOUSERID2", "STARTTM", "VRFCTNMTHD", "BNKNM", "CDVNO", "CHQNO", "CIFNO", "GRPTRANSREFERENCENO", "PYMNTMD", "HOSTSUPERVISOR2", "HOSTTLLRID", "GRPNM", "AMLATYP", "LATEFLG", "MISCTYP", "TRANGRPTYP", "SOURCEACCOUNTNO", "ISPRINTED", "BULKMODE", "ACCSSNOCNT", "ATMCRDCNT", "CDVUNMATCHEDIND", "AMLACSHTRANDTLS", "WORKSTATIONID" FROM "SONEDBA"."PSOBASETRAN";
GO

VARCHAR(32)

SELECT * FROM FSTLMSIBXENTRY WITH UR
SELECT * FROM FSTLMSMSG WITH UR

SELECT a0.ARCEnumKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.isoneonly, a0.ranking, a0.extrefcode, a0.enumvalue, a0.isremovable, a0.enumtypeenum, a0.arcsystemcontextky, a0.msgcode, a0.link, a0.fetchid, a0.category FROM ARCEnum a0 WHERE a0.category = 'UsdCFTDPrdEnum'

SELECT "FSTBASETRANKY", "TRANSREFERENCENO", "HOSTTRANSREFERENCENO", "HOSTSUPERVISOR", "AMLOREFERENCENO", "SUCCESSTXINDEX", "AUTOREVERSEINDEX", "HASEJREVERSEDRECORD", "TRANSACTIONCODE", "UPDATEDTTM", "UPDATEUSER", "VERSIONSTAMP", "MNEMONICCODE", "TRANSACTIONGROUP", "USERID", "SOUSERID", "HSOUSERID", "TRANSNAMETRANSCODE", "TRANSNAMEBLPOSTING", "TRANSACCTNUMBER", "TRANSACTIONBLAMOUNTCURRKY", "TRANSACTIONBLAMOUNT", "AUTOREVERSESTATUS", "ACCOUNTSFOREJ", "DESTINATIONACCOUNT", "SOURCEACCOUNT", "OLDLUIDFETCHINFO", "TRANSACTIONTYPE", "BRANCHID", "OPID", "SWEEPACCTNUMBER", "ORIGMODE", "BNKPLC", "ACCTNM", "CUSTTYP", "ENDTM", "ISEXSTNGCUST", "PRODUCT", "SCRNTXNREFNO", "SOUSERID2", "STARTTM", "VRFCTNMTHD", "BNKNM", "CDVNO", "CHQNO", "CIFNO", "GRPTRANSREFERENCENO", "PYMNTMD", "HOSTSUPERVISOR2", "HOSTTLLRID", "GRPNM", "AMLATYP", "LATEFLG", "MISCTYP", "TRANGRPTYP", "SOURCEACCOUNTNO", "ISPRINTED", "BULKMODE", "ACCSSNOCNT", "ATMCRDCNT", "CDVUNMATCHEDIND", "AMLACSHTRANDTLS", "WORKSTNID" FROM "SONEDBA"."PSOBASETRAN";
GO

SELECT "SOURCEACCOUNTNO" FROM "SONEDBA"."PSOBASETRAN";
GO

SELECT "FSTBASETRANKY", "INVSTMNTACCTNO", "PRODUCTTYP", "SUBSCRTYP", "FUNDID", "FUNDIDDESC", "BONDID", "BONDIDDESC", "FELDISCNT", "SETTLMNTMODE", "DBTACCTNO", "GLREFNO", "DRAWERTEXT", "EXITFEE", "FUNDSWTCHFROM", "FUNDSWTCHFROMDESC", "FUNDSWTCHTO", "FUNDSWTCHTODESC", "UNITSWTCH", "REDEEMAMT", "UPDATEDTTM", "UPDATEUSER", "UPDATESYSTEM", "VERSIONSTAMP" FROM "SONEDBA"."MBBTPPTRAN";
GO

SELECT "PSOTRANSLEGINFOKY", "FSTBASETRANKY", "LEGNUMBER", "ACCOUNTNO", "AMOUNT", "AMOUNTCURRKY", "TRANSID", "TRANSCODE", "TRANSCODESWEEP", "FUNCTIONNAME", "REQUESTUID", "REQUESTUIDREV", "REVERSESCENARIO", "ISREVERSED", "LEGSTATUS", "UPDATEDTTM", "UPDATESYSTEM", "UPDATEUSER", "VERSIONSTAMP", "SUPERVISOR", "HOSTSUPERVISOR", "HOSTRSPNSMSG", "HOSTSUPERVISOROVRRDMSG", "TRANSCODEDSCRPTN" FROM "SONEDBA"."PSOTRANSLEGINFO";
GO


SELECT a1.FSTForexArticleKY, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.buyinglimit, a1.buyingrate, a1.description, a1.sellingfee, a1.cororgky, a1.code, a1.factor, a1.buyingfee, a1.sellinglimit, a1.buyingdisabled, a1.itemtype, a1.minvalue, a1.mininventorylimit, a1.sellingrate, a1.pricequotation, a1.sellingdisabled, a0.versionStamp, a0.currency, a0.unitvalue, a0.isbuyingonly, a0.fstissuercodeky, a0.nationalcurrency FROM FSTInvArticle a0 INNER JOIN FSTForexArticle a1 ON a0.FSTForexArticleKY = a1.FSTForexArticleKY WHERE ((a1.cororgky = 1) AND (a0.fstissuercodeky = 2))

select * from FSTForexArticle
select * from FSTInvArticle 


select * from FSTDelivery where DATE(transtime) = '2014-11-24'
select * from FSTInventory where DATE(updatedttm) = '2014-11-24'
select * from fstbasetran where businessdate = '2014-11-24';





select 'TRANTYPE', FSTJOURNALENTRY.fstbasetranky, REMGRPNO, '', TX_NAME, STATUS,DATETIME from MBBRMTTRANTYP LEFT JOIN FSTJOURNALENTRY ON MBBRMTTRANTYP.FSTBASETRANKY = FSTJOURNALENTRY.FSTBASETRANKY where DATE(DATETIME) = current date
union all 
select 'OUTWARD', FSTJOURNALENTRY.fstbasetranky, REMGRPNO, NEWREMGRPNO, TX_NAME, STATUS,DATETIME from MBBRMTOUTWRDTRAN LEFT JOIN FSTJOURNALENTRY ON MBBRMTOUTWRDTRAN.FSTBASETRANKY = FSTJOURNALENTRY.FSTBASETRANKY where DATE(DATETIME) = current date
union all 
select 'INWARD', FSTJOURNALENTRY.fstbasetranky, REMGRPNO, '', TX_NAME, STATUS,DATETIME from MBBRMTINWARDTRAN LEFT JOIN FSTJOURNALENTRY ON MBBRMTINWARDTRAN.FSTBASETRANKY = FSTJOURNALENTRY.FSTBASETRANKY where DATE(DATETIME) = currentdate


select * from FSTDELIVERY where DELIVERINGDRAWERID =262626

update FSTDELIVERY set DELIVERYSTATUS =5 where DELIVERINGDRAWERID =262626



select * from fstdrawer where drawerid = 8888

select FSTINVENTORYKY, UPDATEUSER,STARTINGSERIALNR,ENDINGSERIALNR,ITEMTYPE,FSTDRAWERKY,ISBALANCED,SRLNOLENGTH from fstinventory where FSTDRAWERKY = 54502 

select * from fstforexarticle where fstforexarticleky in (1005, 1006, 1007)

select * from fstinvarticle

select * from FSTISSUERCODE


select * from FSTJOURNALENTRY

select * from MBBRMTSQNC

update mbbrmtsqnc set BRANCHID='133' where MBBRMTSQNCKY =5


SELECT a0.FSTInventoryKy, a0.updateUser, a0.versionStamp,  a0.startingserialnr, a0.fstdrawerky,
 a0.itemtype, a0.isbalanced, a0.srlnolength, a0.endingserialnr, a0.fstforexarticleky FROM FSTInventory a0 WHERE
 ((((((((((((a0.fstforexarticleky = 3502) AND (a0.fstdrawerky = 54502))) AND (a0.itemtype = 'MBBNegType02'))) AND (a0.prfxstrng IS NULL)))
 AND (a0.srlnolength = 5))) AND (a0.startingserialnr <= 13))) AND (a0.endingserialnr >= 13))
 (3502, 54502, 'MBBNegType02', 5, 13, 13)


SELECT ORGREL.CORORGKY1, ORGREL.CORORGKY2, PRNTORG.NAME, PRNTORG.ORGTYPEENUM, PRNTORG.ORGSTATUSENUM, PRNTORG.ISWORKGROUP, CHLDORG.NAME, 
CHLDORG.ORGTYPEENUM, CHLDORG.ORGSTATUSENUM, CHLDORG.ISWORKGROUP, CHLDRCCODE.FIID, BRANCH.ID, BRANCH.NAME2 AS BNAME, BRANCH.BANKCODE,
 BRANCH.SWIFTCODE, BRANCH.ISREQUIREOPEN, BRANCH.ISOPEN, BRANCH.ISORDERPROCESSING, BRANCH.DEFAULTEXTERNALSYSTEM, BRANCH.ONUSROUTINGNO,
 BRANCH.ISSERVICEORG, BRANCH.APPLICATIONCREATED FROM SONEDBA.CORORGORG ORGREL INNER JOIN SONEDBA.CORORG PRNTORG ON PRNTORG.CORORGKY=ORGREL.CORORGKY1
 INNER JOIN SONEDBA.CORORG CHLDORG ON CHLDORG.CORORGKY=ORGREL.CORORGKY2 AND CHLDORG.CORORGKYFI=1 INNER JOIN CORORG ORGFIL 
ON ORGFIL.CORORGKY=ORGREL.CORORGKY2 INNER JOIN ARCENUM ARCE ON ORGFIL.ORGTYPEENUM=ARCE.MSGCODE and ARCE.CATEGORY='subOrgTypeEnum' LEFT
 OUTER JOIN SONEDBA.CORFIIDENTITY CHLDRCCODE ON CHLDRCCODE.CORORGKY=ORGREL.CORORGKY2 LEFT OUTER JOIN SONEDBA.FSTORG BRANCH ON
 BRANCH.CORORGKY=ORGREL.CORORGKY2 ORDER BY ORGREL.CORORGKY1 ASC, CHLDORG.NAME ASC




SELECT * FROM FSTTOTAL T
WHERE FSTOPENDRAWERKY IN  ( 
							SELECT FSTOPENDRAWERKY FROM 
							(
							SELECT  P.*  ,  ROW_NUMBER() OVER(PARTITION BY FSTDRAWERKY ORDER BY UPDATEDTTM DESC) AS DEL  
							FROM FSTOPENDRAWER P 
							 WHERE EXISTS ( SELECT O.FSTOPENDRAWERKY 
											FROM SONEDBA.FSTOPENDRAWER O INNER JOIN SONEDBA.FSTDRAWER D 
											ON O.FSTDRAWERKY = D.FSTDRAWERKY 
											AND DATE(O.UPDATEDTTM) <= CURRENT_DATE - 8 DAYS 

											AND O.ISOPEN = '0' 
											AND D.ISBALANCED = 1 
											AND P.FSTOPENDRAWERKY = O.FSTOPENDRAWERKY)

							ORDER BY FSTDRAWERKY, UPDATEDTTM DESC

							) AS A WHERE DEL > 1

							);
----------------
DELETE FROM FSTTOTAL T
WHERE FSTOPENDRAWERKY IN  ( 
							SELECT FSTOPENDRAWERKY FROM 
							(
							SELECT  P.*  ,  ROW_NUMBER() OVER(PARTITION BY FSTDRAWERKY ORDER BY UPDATEDTTM DESC) AS DEL  
							FROM FSTOPENDRAWER P 
							 WHERE EXISTS ( SELECT O.FSTOPENDRAWERKY 
											FROM SONEDBA.FSTOPENDRAWER O INNER JOIN SONEDBA.FSTDRAWER D 
											ON O.FSTDRAWERKY = D.FSTDRAWERKY 
											AND DATE(O.UPDATEDTTM) <= CURRENT_DATE - 8 DAYS 

											AND O.ISOPEN = '0' 
											AND D.ISBALANCED = 1 
											AND P.FSTOPENDRAWERKY = O.FSTOPENDRAWERKY)

							ORDER BY FSTDRAWERKY, UPDATEDTTM DESC

							) AS A WHERE DEL > 1

							);



SELECT  ARCPRINCIPAL.NAME, ARCTARGET.NAME, FSTDRAWER.CURRENCY, FSTDRAWER.DESCRIPTION, FSTDRAWER.TYPE   
FROM ARCGRANT 
JOIN ARCTARGET ON ARCGRANT.ARCTARGETKY = ARCTARGET.ARCTARGETKY 
JOIN ARCPRINCIPAL ON ARCGRANT.ARCPRINCIPALKY =  ARCPRINCIPAL.ARCPRINCIPALKY
JOIN ARCTARGETTYPE ON ARCTARGET.ARCTARGETTYPEKY = ARCTARGETTYPE.ARCTARGETTYPEKY
JOIN FSTDRAWER ON ARCTARGET.NAME = cast(FSTDRAWER.DRAWERID as varchar(64))
WHERE ARCTARGETTYPE.NAME = 'DRAWER'

SELECT ARCPRINCIPAL.NAME, ARCTARGET.NAME, FSTDRAWER.CURRENCY, FSTDRAWER.DESCRIPTION, FSTDRAWER.TYPE  
FROM ARCGRANT 
JOIN ARCTARGET ON ARCGRANT.ARCTARGETKY = ARCTARGET.ARCTARGETKY 
JOIN ARCPRINCIPAL ON ARCGRANT.ARCPRINCIPALKY =  ARCPRINCIPAL.ARCPRINCIPALKY
JOIN ARCTARGETTYPE ON ARCTARGET.ARCTARGETTYPEKY = ARCTARGETTYPE.ARCTARGETTYPEKY
JOIN FSTDRAWER ON ARCTARGET.NAME = FSTDRAWER.DRAWERID 
WHERE ARCTARGETTYPE.NAME = 'DRAWER' AND ARCPRINCIPAL.NAME = 'BASTYS'
FOR READ ONLY WITH UR;




select * from fstdrawer where fstdrawerky in (1047,1064,1068,1075,1089,1091,1092,1532,1535,1538,1548,1574,1575,7003,7027,7042,7051,7071,7087,7091,7114,7121,7505,7522,7587,7591)


select * 
from sysibm.SQLFOREIGNKEYS
where PKTABLE_SCHEM='SONEDBA'
AND FKTABLE_SCHEM ='SONEDBA'
AND FKTABLE_NAME = 'FSTOPENDRAWER'




// Negotiable items drawer


select * from fstdrawer join fstorg on fstdrawer.fstorgky = fstorg.cororgky where fstorg.id = 133  for read only with ur;

select * from fstinventory for read only with ur

select * from fstdeliverytx join fstdelivery on fstdeliverytx.fkfstdeliveryky = fstdelivery.fstdeliveryky 
where date(transtime) = '2015-06-29' and deliveringbranchid = 421



select * from fstinvdelivdetai left join fstdelivery on fstinvdelivdetai.fstdeliveryky = fstdelivery.fstdeliveryky where date(transtime) = '2015-06-27' 
and deliveringbranchid = 421 for read only with ur;





select * from fstdrawer join fstorg on fstdrawer.fstorgky = fstorg.cororgky where fstorg.id = 133  and DRAWERID in (3333 , 4343434 )

select * from fstdeliverytx join fstdelivery on fstdeliverytx.fkfstdeliveryky = fstdelivery.fstdeliveryky 
where date(transtime) = '2015-10-22' and deliveringbranchid = 133

select * from fstinventory where UPDATEUSER = 'ramesh' and date( UPDATEDTTM ) = '2015-10-22' 


select * from FSTDELIVERY where Date(TRANSTIME) = '2015-07-01'

select * from fstinvdelivdetai where  date( UPDATEDTTM ) = '01/07/2015' 

select * from psoinvdelivdetai where date( UPDATEDTTM ) = '01/07/2015' 

select * from FSTJOURNALENTRY where Date(DATETIME) = '2015-07-01' and TX_NAME = 'MBBDeliveryNegotiable'


db2 -x "export to /home/bfesg1/FSTBASETRAN.del of del select * from sonedba.FSTBASETRAN where updateuser = 'B01BS42' with ur"

db2 -x "export to /home/bfesg1/PSOBASETRAN.del of del select * from sonedba.PSOBASETRAN where OPID = 'B01BS42' with ur"

db2 -x "export to /home/bfesg1/FSTJOURNALENTRY.del of del select * from sonedba.FSTJOURNALENTRY where OP_ID = 'B01BS42' with ur"

db2 -x "export to /home/bfesg1/FSTTOTAL.del of del select * from sonedba.FSTTOTAL  where OPID = 'B01BS42' with ur"

db2 -x "export to /home/bfesg1/FSTOPENDRAWER.del of del select * from SONEDBA.FSTOPENDRAWER where ARCPRINCIPALKY = (SELECT ARCPRINCIPALKY FROM SONEDBA.ARCPRINCIPAL WHERE NAME='B01BS42') with ur"

db2 -x "export to /home/bfesg1/DRAWER_DETAILS.del of del SELECT ARCPRINCIPAL.NAME, ARCTARGET.NAME, FSTDRAWER.CURRENCY, FSTDRAWER.DESCRIPTION, FSTDRAWER.TYPE FROM ARCGRANT JOIN ARCTARGET ON ARCGRANT.ARCTARGETKY = ARCTARGET.ARCTARGETKY JOIN ARCPRINCIPAL ON ARCGRANT.ARCPRINCIPALKY =  ARCPRINCIPAL.ARCPRINCIPALKY JOIN ARCTARGETTYPE ON ARCTARGET.ARCTARGETTYPEKY = ARCTARGETTYPE.ARCTARGETTYPEKY JOIN FSTDRAWER ON ARCTARGET.NAME = cast(FSTDRAWER.DRAWERID as char(64)) WHERE ARCTARGETTYPE.NAME = 'DRAWER' AND ARCPRINCIPAL.NAME = 'B01BS42' WITH UR";







select A.Name as userName , A.ARCPRINCIPALKY as tellerky, B.Name as groupName, B.ARCPRINCIPALKY as groupky from 
(select grp.ARCPRINCIPALKY usracrplky , grp.ARCPRINCIPALKYGRP grparcplky  from ARCPRINCIPALGRP grp ) gropInfo ,
ARCPRINCIPAL A, ARCPRINCIPAL B
where  gropInfo.usracrplky = A.ARCPRINCIPALKY  and gropInfo.grparcplky = B.ARCPRINCIPALKY  and B.Name='OFF-BROP-WM1' order by userName   with ur

select AG.ARCOPERATIONKY, AO.NAME from ARCGRANT AG INNER JOIN ARCOPERATION AO ON AG.ARCOPERATIONKY=AO.ARCOPERATIONKY WHERE AG.ARCPRINCIPALKY=(select ARCPRINCIPALKY from ARCPRINCIPAL where NAME='OFF-BROP-WM1') with ur



select FSTJOURNALENTRYKY,DRAWER_ID,OP_ID,TX_NAME,FOREX_DRAWER_ID,JOURNAL_NR from FSTJOURNALENTRY where JOURNAL_NR =2004

select * from fstdrawer where drawerid in (262626,2727272)

select * from fstopendrawer where fstdrawerky =56502



-----------------------

-- tO BALANCE THE DRAWERS

select userid, groupname from (select arcprincipal.name userid, group.name groupname 
from sonedba.fstprincipal fstprincipal inner join sonedba.arcprincipal arcprincipal on fstprincipal.arcprincipalky = arcprincipal.arcprincipalky 
and arcprincipal.name = 'D07BS33' 
inner join sonedba.arcprincipalgrp arcprincipalgrp on fstprincipal.arcprincipalky = arcprincipalgrp.arcprincipalky 
inner join sonedba.arcprincipal group on arcprincipalgrp.arcprincipalkygrp = group.arcprincipalky 
order by arcprincipal.name, group.name) for read only with ur

SELECT *  FROM FSTDRAWER WHERE DRAWERID IN (SELECT  ARCTARGET.NAME  
FROM ARCGRANT 
JOIN ARCTARGET ON ARCGRANT.ARCTARGETKY = ARCTARGET.ARCTARGETKY 
JOIN ARCPRINCIPAL ON ARCGRANT.ARCPRINCIPALKY =  ARCPRINCIPAL.ARCPRINCIPALKY
JOIN ARCTARGETTYPE ON ARCTARGET.ARCTARGETTYPEKY = ARCTARGETTYPE.ARCTARGETTYPEKY
JOIN FSTDRAWER ON ARCTARGET.NAME = cast(FSTDRAWER.DRAWERID as char(64))
WHERE ARCTARGETTYPE.NAME = 'DRAWER' AND ARCPRINCIPAL.NAME = 'D07BS33' AND FSTDRAWER.TYPE !=0)
FOR READ ONLY WITH UR;


UPDATE FSTDRAWER SET ISBALANCED=1 WHERE FSTDRAWERKY IN (76503,100008)



select * from FSTFOREXARTICLE WHERE UPDA;

select * from FSTINVARTICLE

select * from FSTISSUERCODE 

select * from FSTINVENTORY where FSTDRAWERKY in (5714,5736)

select * from FSTINVENTORY where ITEMTYPE in ('MBBNegType01','MBBNegType05') and updateuser ='ramesh'


select * from fstdrawer where drawerid=2



-- TAU
select * from fstdrawer where drawerid = 2016021920
select FSTOPENDRAWERKY,FSTDRAWERKY,BUSINESSDATE,ISOPEN,ARCPRINCIPALKY from fstopendrawer where FSTDRAWERKY=59505
 Teller Id    OFFCRTYP    FSTOPENDRAWERKY     FSTDRAWERKY     BUSINESSDATE    ISOPEN     ARCPRINCIPALKY   
   BO1BS23     null          461041              13503           3/8/2016         1          47057                
   BR01BS3     1             461047              13503           3/8/2016         1          28055                  

select FSTTOTALKY,FSTOPENDRAWERKY,BUSINESSDATE,OPID,BUCKETNAME,AMOUNT from fsttotal where FSTOPENDRAWERKY=461041 
 FSTTOTALKY     FSTOPENDRAWERKY     BUSINESSDATE     OPID     BUCKETNAME     AMOUNT    
 -------------  ------------------  ---------------  -------  -------------  --------- 
 1929136        461041              3/8/2016         B01BS23  BeginningCash  0         
 1929137        461041              3/8/2016         B01BS23  NetCash        0  

select FSTTOTALKY,FSTOPENDRAWERKY,BUSINESSDATE,OPID,BUCKETNAME,AMOUNT from fsttotal where FSTOPENDRAWERKY=461047

 FSTTOTALKY     FSTOPENDRAWERKY     BUSINESSDATE     OPID     BUCKETNAME       AMOUNT    
 -------------  ------------------  ---------------  -------  ---------------  --------- 
 1929172        461047              3/8/2016         BR01BS3  BeginningCash    0         
 1929173        461047              3/8/2016         BR01BS3  NetCash          50        
 1929198        461047              3/8/2016         BR01BS3  AdjustedNetCash  50       




select ARCPRINCIPALKY,UPDATEUSER,OFFCRTYP from PSOPRINCIPAL where ARCPRINCIPALKY = 47057

select ARCPRINCIPALKY,UPDATEUSER,OFFCRTYP from PSOPRINCIPAL where ARCPRINCIPALKY=(select ARCPRINCIPALKY from arcprincipal where name = 'B01BS23');
select ARCPRINCIPALKY,UPDATEUSER,OFFCRTYP from PSOPRINCIPAL where UPDATEUSER = 'B01BS23'


SELECT a0.MBBSTCKCNTREGKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.fstdrawerky, a0.dttm, a0.psoprincipalky, a0.supervisor FROM 
MBBSTCKCNTRGSTR a0 WHERE date(a0.dttm) >= '2015-12-01' AND date(a0.dttm) < '2016-04-01' 

SELECT a1.ARCPrincipalKy, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.authstatusenum, a1.name, a0.versionStamp, a0.supervisorlevel, a0.issupervisor, a0.cororgky, a0.currentterminal, a0.validdatefrom, a0.validdateto, a0.isloginanywhere FROM FSTPRINCIPAL
 a0 INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy WHERE a0.ARCPrincipalKy = 92052 (92052)

SELECT a0.ARCPrincipalKy, a2.userid FROM (FSTPRINCIPAL a0 INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy) INNER JOIN (ARCIdentity a2 INNER JOIN 
ARCChannel a3 ON a2.arcchannelky = a3.ARCChannelKy) ON a0.ARCPrincipalKy = a2.arcprincipalky WHERE ((a0.ARCPrincipalKy IN(92052)) AND (a3.channelnamemsgcd = 'ARCChnNmFToF')) (92052)

SELECT a0.FSTDrawerKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.drawerid, a0.isvault, a0.fstorgky, a0.balanceamount, a0.subtype, a0.description, a0.balanceuser,
 a0.lastupdateoperator, a0.minamount, a0.balancetime, a0.orderdrawer, a0.currency, a0.isopen, a0.deleted, a0.type, a0.maxamount, a0.mutilated, a0.lastupdate, a0.isbalanced, a0.marked FROM
 FSTDrawer a0 WHERE a0.FSTDrawerKy IN(7506) (7506)

SELECT a0.FSTDrawerCompmntKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.fstdrawerky, a0.mutilated, a0.maxamount, a0.compartmentname,
 a0.balanceamount, a0.startingamount, a0.isbalanced, a0.marked, a0.minamount, a0.fstdrawerky FROM FSTDrawerCompmnt a0 WHERE (a0.fstdrawerky IN(7506)) (7506)


SELECT a1.COROrgKy, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.isprospect, a1.arcprincipalky, a1.taxid, a1.orgimprtnceenum, a1.cororgkyfi, a1.issupplier, 
a1.isworkgroup, a1.orgstatusenum, a1.name, a1.orgtypeenum, a1.industrycdenum, a0.versionStamp, a0.name2, a0.isopen, a0.isrequireopen, a0.id, a0.defaultexternalsystem, 
a0.isorderprocessing, a0.onusroutingno, a0.bankcode, a0.isserviceorg, a0.swiftcode, a0.applicationcreated FROM FSTORG a0 INNER JOIN COROrg a1 ON a0.COROrgKy = a1.COROrgKy
 WHERE (a0.COROrgKy = 14851574) (14851574)

SELECT a1.CORPhoneKy, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.issmsenabled, a1.isbusiness, a1.usagehoursenum, a1.description, a1.cororgky, a1.cororgkyfi,
 a1.extension, a1.phonetypeenum, a1.phonestatusenum, a1.nbr, a1.countrycd, a1.areacitycd, a1.phonelocationenum, a1.corpersonky, a1.ispreferred, a0.COROrgKy FROM COROrg a0 
INNER JOIN CORPhone a1 ON a0.COROrgKy = a1.cororgky WHERE ((a0.COROrgKy IN(14851574)) AND
 (((a1.ispreferred = 'true') AND (a1.phonetypeenum = 'CORCommPho')))) (14851574, true)


SELECT a1.CORPhysAddrKy, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.description, a1.county, a1.cororgky, a1.arccountrycdky, a1.city, a1.dwellingunit, a1.cororgkyfi, a1.addressline1, a1.addressline2, a1.addressline3, a1.boxnbr, a1.physaddrtypeenum, a1.arcstatecdky, a1.postcode, a1.addrstatusenum, a1.contactrule, a1.township, a1.corpersonky, a1.ispreferred, a0.COROrgKy FROM COROrg a0 INNER JOIN
 CORPhysAddr a1 ON a0.COROrgKy = a1.cororgky WHERE ((a0.COROrgKy IN(?)) AND (a1.ispreferred = ?)) (14851574, true)
SELECT a1.CORPhoneKy, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.issmsenabled, a1.isbusiness, a1.usagehoursenum, a1.description, a1.cororgky, a1.cororgkyfi, a1.extension, 
a1.phonetypeenum, a1.phonestatusenum, a1.nbr, a1.countrycd, a1.areacitycd, a1.phonelocationenum, a1.corpersonky, a1.ispreferred, a0.COROrgKy FROM COROrg a0 INNER JOIN CORPhone a1 ON 
a0.COROrgKy = a1.cororgky WHERE ((a0.COROrgKy IN(14851574)) AND
 (((a1.ispreferred = 'true') AND (a1.phonetypeenum = 'CORCommFax')))) (14851574, true)

SELECT a0.COROrgKy, a1.CORElecAddrKy, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.elecaddrstsenum, a1.elecaddrtypeenum, a1.description, a1.address, a1.corpersonky,
 a1.cororgkyfi, a1.cororgky, a1.ispreferred FROM COROrg a0 INNER JOIN CORElecAddr a1 ON a0.COROrgKy = a1.cororgky WHERE ((a0.COROrgKy IN(14851574)) AND (((a1.ispreferred = 'true') AND
 (a1.elecaddrtypeenum = 'CORCommUrl')))) (14851574, true)

SELECT a2.fiid, a0.COROrgKy FROM FSTORG a0 INNER JOIN (COROrg a1 INNER JOIN CORFiIdentity a2 ON a1.COROrgKy = a2.cororgky) ON a0.COROrgKy = a1.COROrgKy WHERE ((a0.COROrgKy IN(14851574)) AND
 (((a2.fiidtypeenum = 'FSTFiIdBranch') OR (a2.fiidtypeenum = 'PSOSupportHub')))) (14851574)



select * from fstopendrawer  join fstdrawer on fstopendrawer.fstdrawerky = fstdrawer.fstdrawerky join fstorg on fstdrawer.fstorgky = fstorg.cororgky where
 fstorg.id = 422 for read only with ur;



SELECT a1.Name FROM 
MBBSTCKCNTRGSTR a0 INNER JOIN ARCPrincipal a1 ON a0.PSOPRINCIPALKY = a1.ARCPrincipalKy WHERE date(a0.dttm) >= '2015-12-01' AND date(a0.dttm) < '2016-04-01' 

SELECT a1.NAME as TellerID,a2.DRAWERID,a3.Translation as DrawerType,a0.DTTM as Date,a0.SUPERVISOR as SupervisorID  FROM 
MBBSTCKCNTRGSTR a0 left JOIN ARCPrincipal a1 ON a0.PSOPRINCIPALKY = a1.ARCPrincipalKy left JOIN FSTDRAWER a2 on a2.FSTDRAWERKY=a0.FSTDRAWERKY left JOIN ARCMESSAGE a3 on a3.MSGCODE= a2.subtype WHERE 
date(a0.dttm) >= '2015-12-01' AND date(a0.dttm) < '2016-04-01' 

select * from MBBSTCKCNTRGSTR where date(dttm) >= '2015-12-01' AND date(dttm) < '2016-04-01' 

select * from PSOPRINCIPAL where arcPRINCIPALKY=92052

select * from ARCMESSAGE order by translation desc



select * from SONEDBA.VWMBBNEGITEMSACTLOG
select * from ARCPrincipal where ARCPrincipalKy in (80050,12097)

select * from ARCGROUP where ARCPrincipalKy in (80050,12097)

select * from FSTPRINCIPAL where ARCPrincipalKy in (80050,12097)

select * from ARCIDENTITY where ARCPRINCIPALKY in (80050,12097)

select * from ARCChannel where ARCCHANNELKY =(select ARCCHANNELKY from ARCIdentity where ARCPRINCIPALKY =80050)

select * from ARCChannel where ARCCHANNELKY =(select ARCCHANNELKY from ARCIdentity where ARCPRINCIPALKY =12097)

SELECT a0.ARCPrincipalKy, a2.userid FROM (FSTPRINCIPAL a0 INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy) INNER JOIN (ARCIdentity a2 INNER JOIN ARCChannel
 a3 ON a2.arcchannelky = a3.ARCChannelKy) ON a0.ARCPrincipalKy = a2.arcprincipalky WHERE 
((a0.ARCPrincipalKy IN(12097,80050)) AND (a3.channelnamemsgcd = 'ARCChnNmFToF')) (92052)


12097




SELECT a0.ARCPrincipalKy, a2.userid FROM (FSTPRINCIPAL a0 INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy) INNER JOIN 
(ARCIdentity a2 INNER JOIN ARCChannel a3 ON a2.arcchannelky = a3.ARCChannelKy) ON a0.ARCPrincipalKy = a2.arcprincipalky WHERE ((a0.ARCPrincipalKy IN(2052,2053,2054,3051,3054,3055,3058,3059,3060,3062,7050,9051,9052,9054,9055,9056,9059,9062,9064,9068,9072,9073,10050,10051,10052,10053,10054,10055,10056,10062,10063,10066,11052,11054,11060,11061,11064,11065,11067,11069,11070,11071,11077,11079,11082,11083,11090,11091,11094,11103,11104,11105,12050,12052,12053,12056,12057,12058,12059,12060,12063,12064,12065,12069,12070,12073,12081,12082,12083,12084,12086,12087,12093,12094,12095,12097,12098,12099,12100,12101,12103,12106,12107,12108,12109,12110,13053,13058,13059,13061,13062,13067,14051,14054,14055,14057,14059,14060,14061,14063,14064,14066,15050,16050,16051,17050,23050,23051,24051,25050,25054,26050,26052,27050,28051,28052,29050,32051,37050,39050,40050,41050,44050,44052,45050,47050,48050,49050,50050,52050,53058,53059,54058,54059,55050,55054,55055,55056,55057,56050,56052,57053,57055,58051,59050,59052,59055,59057,59058,61050,61051,61052,61054,61055,61064,62050,62051,62052,62056,63050,63053,63054,63055,64051,64052,66050,66053,67050,68052,68071,68081,69086,70051,75051,76050,76062,77050,77054,77057,78052,80050,80051,82050,82051,83050,83051,85050,87050,88050,88052,89053,90051,90058,90059,90068,90069,90071,91054,91057)) AND 
(a3.channelnamemsgcd = 'ARCChnNmFToF'))


SELECT a1.ARCPrincipalKy, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.authstatusenum, a1.name, a0.versionStamp, a0.cororgky, a0.validdateto, a0.issupervisor, a0.validdatefrom, a0.currentterminal, a0.isloginanywhere, a0.supervisorlevel FROM FSTPRINCIPAL a0 
INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy WHERE a0.ARCPrincipalKy IN(2052,2053,2054,3051,3054,3055,3058,3059,3060,3062,7050,9051,9052,9054,9055,9056,9059,9062,9064,9068,9072,9073,10050,10051,10052,10053,10054,10055,10056,10062,10063,10066,11052,11054,11060,11061,11064,11065,11067,11069,11070,11071,11077,11079,11082,11083,11090,11091,11094,11103,11104,11105,12050,12052,12053,12056,12057,12058,12059,12060,12063,12064,12065,12069,12070,12073,12081,12082,12083,12084,12086,12087,12093,12094,12095,12097,12098,12099,12100,12101,12103,12106,12107,12108,12109,12110,13053,13058,13059,13061,13062,13067,14051,14054,14055,14057,14059,14060,14061,14063,14064,14066,15050,16050,16051,17050,23050,23051,24051,25050,25054,26050,26052,27050,28051,28052,29050,32051,37050,39050,40050,41050,44050,44052,45050,47050,48050,49050,50050,52050,53058,53059,54058,54059,55050,55054,55055,55056,55057,56050,56052,57053,57055,58051,59050,59052,59055,59057,59058,61050,61051,61052,61054,61055,61064,62050,62051,62052,62056,63050,63053,63054,63055,64051,64052,66050,66053,67050,68052,68071,68081,69086,70051,75051,76050,76062,77050,77054,77057,78052,80050,80051,82050,82051,83050,83051,85050,87050,88050,88052,89053,90051,90058,90059,90068,90069,90071,91054,91057)


SELECT a0.ARCPrincipalKy, a2.userid FROM (FSTPRINCIPAL a0 INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy) INNER JOIN 
(ARCIdentity a2 INNER JOIN ARCChannel a3 ON a2.arcchannelky = a3.ARCChannelKy) ON a0.ARCPrincipalKy = a2.arcprincipalky WHERE (
(a0.ARCPrincipalKy IN(select PSOPRINCIPALKY from MBBSTCKCNTRGSTR where date(dttm) >= '2015-01-01' AND date(dttm) < '2016-04-01'))
 AND (a3.channelnamemsgcd = 'ARCChnNmFToF'))





select * from ARCPrincipal where ARCPrincipalKy in (100052)

select * from ARCGROUP where ARCPrincipalKy in (100052)

select * from FSTPRINCIPAL where ARCPrincipalKy in (100052)

select * from ARCIDENTITY where ARCPRINCIPALKY in (100052)

select * from PSOPrincipal where ARCPRINCIPALKY in (100052)

select * from ARCChannel where ARCCHANNELKY =(select ARCCHANNELKY from ARCIdentity where ARCPRINCIPALKY =100052)


select * from CORAUDIT


select * from CORAFFILIATEFI


SELECT a0.CORCustomerKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.cororgkyfi, a0.cororgkyprovider, a0.enterpriseid, a0.customervalueenum,
 a0.corpersonky, a0.cororgky FROM CORCustomer a0 WHERE UPPER(a0.enterpriseid) = 'CUSTIDN' ('CUSTIDN')

select * from CORPERSON

select * from ARCNoteSegment

select * from ARCNOTE where TABLEKEY=16739769

SELECT a0.CORPersonKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.isprospect, a0.nbrchildren, a0.taxid, a0.psnimprtnceenum, 
a0.arccountrycdky, a0.cororgkyfi, a0.suffixenum, a0.demgrphcenum, a0.psnstatusenum, a0.occupationenum, a0.middlename, a0.genderenum,
 a0.edulvlenum, a0.arcprincipalky, a0.titleenum, a0.maritalstatusenum, a0.persontypeenum, a0.givenname, a0.eduareaenum, a0.familyname,
 a0.homeownstatenum, a0.arclocalecdky, a0.arcchannelky, a0.birthdt FROM CORPerson a0 WHERE ((((a0.givenname = 'User') AND (a0.familyname = 'USER')))
 AND (a0.cororgkyfi IN(1))) ('User', 'USER', 1)

SELECT * FROM CORPERSON WHERE CORPERSONKY=16739769


select * from ARCPRINCIPAL


select * from UTLSEQNUMGNRTR



select * from TSTPARENT;
select * from TSTChild1;
select * from TSTChild2;

CREATE TABLE TSTChild1
(
TSTChild1Ky INT PRIMARY KEY not null,
child1Column varchar(255) not null
);



ALTER TABLE TSTParent add COLUMN child1Column  VARCHAR(32);

call sysproc.admin_cmd('reorg table TSTParent')



CREATE TABLE SONEDBA.TSTPARENT ( 
    PARENTCOLUMN	VARCHAR(100) ,
    UPDATEDTTM  	TIMESTAMP NOT NULL DEFAULT CURRENT TIMESTAMP,
    UPDATESYSTEM	VARCHAR(13),
    UPDATEUSER  	VARCHAR(32),
    VERSIONSTAMP	SMALLINT NOT NULL DEFAULT 1,
    TSTPARENTKY 	INTEGER  NOT NULL,
    PRIMARY KEY(TSTPARENTKY)
)
GO


CREATE TABLE SONEDBA.TSTPARENT ( 
    PARENTCOLUMN	VARCHAR(100) ,
    UPDATEDTTM  	TIMESTAMP NOT NULL DEFAULT CURRENT TIMESTAMP,
    UPDATESYSTEM	VARCHAR(13),
    UPDATEUSER  	VARCHAR(32),
    VERSIONSTAMP	SMALLINT NOT NULL DEFAULT 1,
    TSTPARENTKY 	INTEGER  NOT NULL,
    PRIMARY KEY(TSTPARENTKY)
)
GO

CREATE TABLE SONEDBA.TSTPARENT ( 
    PARENTCOLUMN	VARCHAR(100) ,
    UPDATEDTTM  	TIMESTAMP NOT NULL DEFAULT CURRENT TIMESTAMP,
    UPDATESYSTEM	VARCHAR(13),
    UPDATEUSER  	VARCHAR(32),
    VERSIONSTAMP	SMALLINT NOT NULL DEFAULT 1,
    TSTPARENTKY 	INTEGER  NOT NULL,
    PRIMARY KEY(TSTPARENTKY)
)
GO

DROP TABLE TSTPARENT;




select * from MBBSTCKCNTRGSTR where date(dttm) >= '2015-12-01' AND date(dttm) < '2016-04-01' 


SIT DATA - nEGOTioble items -BO1BS21 
select * from fstdrawer where drawerid in (700240131,701140107)

select * from FSTOPENDRAWER where fstdrawerky = 38006,13003

update sonedba.FSTOPENDRAWER set isopen='1' where fstdrawerky in(38006,13003)




select * from PSOPRINCIPAL where psoprincipalky 



select a0.ISSUPERVISOR from fstprincipal a0 join  ARCPRINCIPAL a1 on a0.ARCPRINCIPALKY=a1.ARCPRINCIPALKY where a1.name = 'ramesh'

select a1.NAME from fstprincipal a0 join  CORORG a1 on a0.CORORGKY=a1.CORORGKY where a0.ARCPRINCIPALKY in(92052)



SELECT a1.ARCPrincipalKy, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.authstatusenum, a1.name, a0.versionStamp, a0.cororgky, a0.validdateto, a0.issupervisor,
 a0.validdatefrom, a0.currentterminal, a0.isloginanywhere, a0.supervisorlevel FROM FSTPRINCIPAL a0 
INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy WHERE a0.ARCPrincipalKy IN

select * from ARCPRINCIPAL where name ='BSABRM'

select * from fstterminal where name = 'L130300018'
select * from fstorg where id=133
select * from CORORG where CORORGKY=14851574

select * from fstprincipal where CORORGKY=14851574

// 4491 - pcr638 
// find the currency echange rate from select * from MBBRMTFOREXRATE

select a0.ARCISOCURRENCYCDKY,a0.SELLRATE,a1.TEXTCURRCD from MBBRMTFOREXRATE a0 right join ARCISOCURRENCYCD a1 on
 a0.ARCISOCURRENCYCDKY =a1.ARCISOCURRENCYCDKY where a1.TEXTCURRCD in('FIM','IDR','IEP','KRW','LKR','LUF','PKR','PTE','SAR','TWD','XEU')

 ARCISOCURRENCYCDKY     SELLRATE     TEXTCURRCD    
 ---------------------  -----------  ------------- 
 76                     0.0329       IDR           
 98                     2.32         LKR           
 133                    3.33         PKR           
 142                    81.26        SAR           
 166                    9.91         TWD           
 92                     3.712        KRW           
 (null)                 (null)       FIM           
 (null)                 (null)       IEP           
 (null)                 (null)       LUF           
 (null)                 (null)       PTE

select * from ARCCOUNTRYCD WHERE ISOALPHA3CD in ('CCY','FIM','IDR','IEP','KRW','LKR','LUF','PKR','PTE','SAR','TWD','XEU')
select * from ARCISOCURRENCYCD WHERE TEXTCURRCD in ('FIM','IDR','IEP','KRW','LKR','LUF','PKR','PTE','SAR','TWD','XEU')

snsert into ARCISOCURRENCYCD

select * from ARCISOCURRENCYCD where TEXTCURRCD in ('FIM','IEP','LUF') 
SELECT * FROM MBBRMTFOREXRATE

34 columns - 

INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,
                             FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,
                             DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,
                             INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,
                             TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES 

(
(SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),203,NULL,NULL,100,
 NULL,NULL,NULL,0,0,
0,0,0,0,0,
0,0,0,1,0,
0,0,0,0,0,
0,CURRENT TIMESTAMP,'system','MBB',1,
NULL,NULL,NULL,NULL
);



select * from MBBRMTRGLNKTRAN
select * from MBBRMTTRANTYP


select * from FSTDRAWER where drawerid=201602190

select * from FSTOPENDRAWER where fstdrawerky=59504


select * from FSTDRAWERCOMPMNT where FSTDRAWERKY=59504

select * from fsttotal where FSTOPENDRAWERKY = 109002




INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),203,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);



 DELETE FROM MBBRMTFOREXRATE WHERE ARCISOCURRENCYCDKY in(76,98,133,142,166,92,205,204,203,206);



INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),76,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0.000101,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
 
 INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),98,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0.009207,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
 
 INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),133,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0.012823,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
 
 INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),142,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0.358345,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
 
 
 INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),166,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0.041647,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
 
 
 INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),92,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0.001177,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
 
 
 INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),205,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
 
 INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),204,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
 
 
 INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),203,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
 
 
 INSERT INTO MBBRMTFOREXRATE (MBBRMTFOREXRATEKY,ARCISOCURRENCYCDKY,BRANCHID,FOREXDSCRPTN,FOREXUNIT,FOREXUSER,FOREXDT,FOREXTIME,DSCRTNTYMRGNSELLTTOD,DSCRTNTYMRGNBUYTT,DSCRTNTYMRGNBUYOD,STAFFMRGNSELLTTOD,STAFFMRGNBUYTT,STAFFMRGNBUYOD,RATESELLTTOD,
                             RATEBUYTT,RATEBUYOD,RVLTNRATE,SELLRATE,BUYRATE,CNTRCTACCTRATE,INTRSTRATE,FRGNCURRENCYNOTESELLRATE,FRGNCURRENCYNOTEBUYRATE,TRVLLRCHQSELLRATE,TRVLLRCHQBUYRATE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP,
                             STAFFMRGSELLFC,STAFFMRGBUYFC,STAFFMRGSELLTC,STAFFMRGBUYTC)
 VALUES ( (SELECT CAST(COALESCE(MAX(MBBRMTFOREXRATEKY),0)+1 AS INTEGER) FROM MBBRMTFOREXRATE),206,NULL,NULL,100,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,CURRENT TIMESTAMP,'system','MBB',1,NULL,NULL,NULL,NULL);
			


select * from FSTJOURNALENTRY where op_id = 'rameshco'


select * from FSTOPENDRAWER where ARCPRINCIPALKY = 99052

select * from ARCPRINCIPAL where name = 'rameshco' 	



delete from FSTJOURNALENTRY where op_id = 'rameshco'	
delete from 

select * from FSTOPENDRAWER where fstopendrawerky = 51502		


select * from fsttotal where fstopendrawerky = 51502

select a1.FSTOPENDRAWERKY from fstopendrawer a1 join fsttotal a2 on a1.FSTOPENDRAWERKY != a2.FSTOPENDRAWERKY where a1.isopen ='1' and a1.BUSINESSDATE ='2016-06-29' for read only with ur;

select * from FSTOPENDRAWER where FSTOPENDRAWERKY not in (select od.FSTOPENDRAWERKY from fstopendrawer od, FSTTOTAL t
 where od.FSTOPENDRAWERKY=t.FSTOPENDRAWERKY and od.isopen ='1' and od.BUSINESSDATE ='2016-06-29')



-- Tofind the branch
select * from FSTTERMINAL
select * from fstorg


select * from fstdrawer where drawerid=201602240

select * from FSTOPENDRAWER where fstdrawerky=5209



select  * from FSTDRAWER where FSTDRAWERKY not in  (select od.FSTDRAWERKY from fstdrawer od, fstopendrawer fp
 where od.FSTDRAWERKY=fp.FSTDRAWERKY )  and isopen ='1' and type in (0,3,20) and FSTORGKY =9;

update FSTDRAWER set ISOPEN ='0' where FSTDRAWERKY not in  (select od.FSTDRAWERKY from fstdrawer od, fstopendrawer fp
 where od.FSTDRAWERKY=fp.FSTDRAWERKY )  and isopen ='1' and type in (0,3,20) and FSTORGKY =9;


--Qualifieres
-------------------


SELECT a1.ARCQualfrSetKy, a1.updateUser, a1.updateDttm, a1.versionStamp, a1.arcnmdqualfrsetky, a1.arcoperationky, a0.versionStamp, a0.name FROM ARCNmdQualfrSet a0 INNER JOIN ARCQualfrSet a1 ON a0.ARCQualfrSetKy = a1.ARCQualfrSetKy WHERE a0.name = 'Administrators_TX_MBB_REM_FTT_ONLINE' ('')

select * from ARCNmdQualfrSet where NAME= 'Application Admin_TX_MBB_REM_FTT_ONLINE'
// groupid_functionname



select * from ARCQUALFRSET ORDER BY ARCQUALFRSETKY DESC

 ARCQUALFRSETKY     ARCOPERATIONKY     ARCNMDQUALFRSETKY     UPDATEDTTM             UPDATEUSER     UPDATESYSTEM     VERSIONSTAMP    
 -----------------  -----------------  --------------------  ---------------------  -------------  ---------------  --------------- 
 6127               701                (null)                8/29/2016 10:56:16 AM  Admin          (null)           1               
 6126               701                (null)                8/29/2016 10:56:16 AM  Admin          (null)           1               
 6125               701                (null)                8/29/2016 10:56:12 AM  Admin          (null)           1  

select * from ARCQUALIFIER ORDER BY ARCQUALFRSETKY  DESC

select * from ARCNmdQualfrSet ORDER BY ARCQUALFRSETKY DESC
NAME= 'Application Admin_TX_MBB_REM_FTT_ONLINE'

TX_MBB_CSHDPWTP


-------- new queries

select * from CORAUDIT WHERE DATE(AUDITDTTM)=current date;

select * from CORAUDIT order by CORAUDITKY desc;

SELECT * FROM PSOPRINCIPAL WHERE ARCPRINCIPALKY = (select ARCPRINCIPALKY from ARCPRINCIPAL where name='RAMESH');




--unposted transactions
---------------------
select * from ARCPRINCIPAL;
select * from FSTJOURNALENTRY where BUSINESSDATE ='2021-12-22' and status='unposted';
--2770539

update FSTJOURNALENTRY set status='success' where fstjournalentryky=2770539;

update FSTJOURNALENTRY set status='success' where BUSINESSDATE ='2021-12-22' and status='unposted';

SELECT * FROM FSTJOURNALENTRY 
WHERE TX_NAME LIKE 'MBBMiscCreditSG_MISCCR_%' AND 
BUSINESSDATE BETWEEN '2017-01-01' AND '2021-12-16'

commit;
-----------------------------------------
