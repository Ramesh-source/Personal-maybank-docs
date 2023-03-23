
select * from PSOORG where cororgky = 14851574;
 update SONEDBA.PSOORG set BRNCHBUSNSSDT = current date where cororgky = 14851574;

//update SONEDBA.PSOORG set BRNCHBUSNSSDT = '2016-12-29' where cororgky = 14851574;

update SONEDBA.PSOORG set BRNCHCLSDT = current timestamp - 2 day where cororgky = 14851574;

select * from SONEDBA.FSTOpenDrawer where fstdrawerky=  31002;
//select * from fstdrawer where fstdrawerky=31002

//update SONEDBA.FSTOpenDrawer set BUSINESSDATE = current date  where FSTDRAWERKY = 31002;
update SONEDBA.FSTOpenDrawer set BUSINESSDATE = current date  where FSTDRAWERKY = 31002;
update SONEDBA.FSTOpenDrawer set BUSINESSDATE = current date  where FSTDRAWERKY = 59507;






select * from FSTFOREXARTICLE WHERE DATE(UPDATEDTTM)=current date;

-----------------------------------------
select * from fstdrawer where drawerid=201602240

select * from FSTOPENDRAWER where fstdrawerky=59507


--to check the branchcode

select f.ID,c.NAME as BranchName,c.NAME__,c.CORORGKY from CORORG c join fstorg f  on c.CORORGKY=f.CORORGKY;

select A0.ID,A1.NAME as BranchName,A1.NAME__,A1.CORORGKY from CORORG A1 join fstorg A0  on A1.CORORGKY=A0.CORORGKY;

select * from fstterminal where name = 'L130300018'
select * from fstorg where id=133
select * from CORORG where CORORGKY=14851574



// To check the GL ref nos
SELECT * FROM ARCMESSAGE
SELECT * FROM ARCENUM

select * from PSOORG where DATE(UPDATEDTTM) = current date HOSTBRNCHCD in ('133','555')

------------------------------------------------


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

select * from FSTJOURNALENTRY where BRANCH_ID='410' order by DATETIME desc
select * from FSTJOURNALENTRY where REVERSED=1 and STATUS='failed' and BUSINESSDATE > '2017-11-01';


select * from FSTJOURNALENTRY where BUSINESSDATE > '2023-01-30';

select * from FSTDRAWER where drawerid in (800141012,800141014);
select * from FSTDRAWER where type=20  in (800141012,800141014);
select * from fstopendrawer where fstdrawerky in (select fstdrawerky from FSTDRAWER where drawerid in (800141012,800141014));

select * from FSTJOURNALENTRY where drawer_id = 2 

update FSTOPENDRAWER set ISOPEN='0'  where fstopendrawerky in (3346317,3346738);

select a1.drawerid,a2.name from FSTDRAWER a1,ARCPRINCIPAL a2,fstopendrawer a3 where a1.fstdrawerky=a3.fstdrawerky and a2.arcprincipalky = a3.arcprincipalky and 
a1.fstorgky in (select fstorgky from fstorg where id = 133) and a3.isopen ='1';

fstdrawerky in (select fstdrawerky from fstopendrawer where isopen='1') and
 fstorgky in (select fstorgky from fstorg where id = 401);




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
where  gropInfo.usracrplky = A.ARCPRINCIPALKY  and gropInfo.grparcplky = B.ARCPRINCIPALKY  and B.Name='Administrators' order by userName   with ur

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
//and arcprincipal.name in('B01BS15') 
inner join sonedba.arcprincipalgrp arcprincipalgrp on fstprincipal.arcprincipalky = arcprincipalgrp.arcprincipalky 
inner join sonedba.arcprincipal group on arcprincipalgrp.arcprincipalkygrp = group.arcprincipalky 
order by arcprincipal.name, group.name) for read only with ur



*** find the usergroups and entitlement
SELECT A0.NAME AS USERGROUP,A3.NAME AS ENTITLEMENT FROM (ARCPRINCIPAL A0 INNER JOIN ARCGROUP A1 ON A1.ARCPRINCIPALKY = A0.ARCPRINCIPALKY  LEFT OUTER JOIN (ARCGRANT A2 INNER JOIN ARCOPERATION A3 ON A2.ARCOPERATIONKY = A3.ARCOPERATIONKY) ON A0.ARCPRINCIPALKY = A2.ARCPRINCIPALKY) WHERE A3.NAME NOT LIKE 'TX%' ORDER BY A0.NAME, A3.NAME
---------------------------------------------------------------------------


-- userid's ,groupname by branch

select APL.NAME,  APL1.NAME as GROUP from ARCPRINCIPAL APL, ARCPRINCIPALGRP AGP, ARCPRINCIPAL APL1
WHERE APL.ARCPRINCIPALKY = AGP.ARCPRINCIPALKY
and  AGP.ARCPRINCIPALKYGRP = APL1.ARCPRINCIPALKY
AND APL.NAME 

IN (SELECT APK1.Name as Name1 from ARCPRINCIPAL APK1
WHERE APK1.ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM FSTPRINCIPAL WHERE CORORGKY  = 14851574))
order by APL.NAME asc
;


select APL.NAME,  APL1.NAME as GROUP from ARCPRINCIPAL APL, ARCPRINCIPALGRP AGP, ARCPRINCIPAL APL1
WHERE APL.ARCPRINCIPALKY = AGP.ARCPRINCIPALKY
and  AGP.ARCPRINCIPALKYGRP = APL1.ARCPRINCIPALKY
AND APL.NAME 
IN (SELECT APK1.Name as Name1 from ARCPRINCIPAL APK1
WHERE APK1.ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM FSTPRINCIPAL WHERE CORORGKY  in (select CORORGKY from fstorg where id=401))) order by APL.NAME asc;



  14851574))
order by APL.NAME asc
;



--Find the GroupName in the TAM by branch
-------------------------------------
select userid, groupname from (select arcprincipal.name userid, group.name groupname 
from sonedba.fstprincipal fstprincipal inner join sonedba.arcprincipal arcprincipal on fstprincipal.arcprincipalky = arcprincipal.arcprincipalky 
and fstprincipal.cororgky in (select cororgky from fstorg where id =133)
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
WHERE ARCTARGETTYPE.NAME = 'DRAWER' AND ARCPRINCIPAL.NAME = 'B01BS15'
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


// purge script
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

// account numbers

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


// currency

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



// change the status - Deliver nagotiable items
update FSTDELIVERY set DELIVERYSTATUS =5 where DELIVERINGDRAWERID =750941525;


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


-- suspect account  114013003054
--164128127074
select * from MBBFRNTLNRSCAMLIST



select * from FSTPRINCIPAL where ARCPRINCIPALKY=101052

select * from ARCPRINCIPAL where name='ramesh460'

select * from 


SELECT * FROM FSTPRINCIPAL a0
 INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy WHERE a1.name = 'ramesh';       --('ramesh')

SELECT a0.ARCPrincipalKy, a2.userid FROM (FSTPRINCIPAL a0 INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy) 
INNER JOIN (ARCIdentity a2 INNER JOIN ARCChannel a3 ON a2.arcchannelky = a3.ARCChannelKy) ON a0.ARCPrincipalKy = a2.arcprincipalky
 WHERE ((a0.ARCPrincipalKy IN(92052)) AND (a3.channelnamemsgcd = 'ARCChnNmFToF')) (92052)

 ALTER TABLE PSOPRINCIPAL ADD COLUMN CASHTRANSTATUS SMALLINT  NOT NULL DEFAULT 0;
ALTER TABLE PSOPRINCIPAL ADD COLUMN NONCASHTRANSTATUS SMALLINT  NOT NULL DEFAULT 0;

ALTER TABLE SONEDBA.PSOPRINCIPAL DROP COLUMN CASHTRANSTATUS;

CALL SYSPROC.ADMIN_CMD('REORG TABLE PSOPRINCIPAL')

select * from PSOPRINCIPAL where CASHTRANSTATUS=1;



select * from fstdrawer where drawerid in (460,111)

select * from MBBCASHDRAWERTRNSFROUT 

UPDATE MBBCASHDRAWERTRNSFROUT SET DLVRYSTATUS='De' where FSTBASETRANKY =2596051
SELECT * FROM MBBRMTFOREXRATE

UPDATE ARCMESSAGE SET TRANSLATION='EH  INTEREST ON DEPOSITS,DEBT SECURITIES AND MONEY MARKET INSTRUMENTS' , UPDATEDTTM=CURRENT TIMESTAMP WHERE MSGCODE='MBBOPCd010';



select * from MBBRVRSLXML where DATE(UPDATEDTTM) = '2016-12-27' and RQSTUID='fa06c8a0-ddf1-4b8e-8dd8-00cb32d97ef5' order by RQSTUID desc


SELECT a0.MBBRVRSLXMLKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.rvrslxml, a0.fstjournalentryky, a0.rqstuid FROM MBBRVRSLXML a0 WHERE a0.rqstuid = '7e7a007d-8ff4-4105-a4d2-06926a184aff' ('7e7a007d-8ff4-4105-a4d2-06926a184aff')

     

select * from MBBRMTOUTWRDTRAN
-- agent info   MBBAGENTINFRMTN

select * from MBBAGENTINFRMTN

INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,
PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),
'ANZ BANKING GROUP LTD (CORRO : MBBERSINSI)',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'AUD'),'ANZBAU3M','FDD','AU',NULL,1,NULL,
'115203',NULL,'BSB 013024 ACC 211201AUD00001',CURRENT TIMESTAMP,'system','MBB',1);

INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,
PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),
'ANZ BANKING GROUP LTD (CORRO : MBBERSINSI)',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'AUD'),'ANZBAU3M','FDD','AU',NULL,2,NULL,
'115203',NULL,'BSB 013024 ACC 211201AUD00001',CURRENT TIMESTAMP,'system','MBB',1);

INSERT INTO MBBAGENTINFRMTN (MBBAGENTINFRMTNKY,AGENTNM,CURRENCYCD,AGENTCD,AGNTIND,CNTRY,DSCRPTN,DRFTTYP,PAYBRNCHCD,NOSTROACCOUNTNO,VOSTROACCOUNTNO,
PLACE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN),
'ANZ BANKING GROUP LTD (CORRO : MBBERSINSI)',(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'AUD'),'ANZBAU3M','FDD','AU',NULL,3,NULL,
'115203',NULL,'BSB 013024 ACC 211201AUD00001',CURRENT TIMESTAMP,'system','MBB',1);

select * from VWMBBUSERACCESSFNTX

SELECT a0.CORAuditKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.cororgkyfi, a0.auditdttm, a0.coraudittypeky, a0.xmlauditdata, a0.enterprisecustid, 
a0.sessionid, a0.loginid FROM CORAudit a0 INNER JOIN CORAuditType a1 ON a0.coraudittypeky = a1.CORAuditTypeKy WHERE ((((((a0.auditdttm >= '2012-12-01 00:00:00.000') AND (a0.auditdttm <= '2016-12-28 23:59:59.000')))
 AND (a1.auditfunctionenum = 'FSTAuFnGpDel'))) AND (a0.cororgkyfi IN(1))) 
('2016-12-28 00:00:00.000', '2016-12-28 23:59:59.000', 'FSTAuFnGpDel', 1)


-- to check the limit setting in  tam 
select * from ARCCONFIGURATION 


---
select * from FSTDRAWER where DRAWERID =201602193

select * from FSTOPENDRAWER where  FSTDRAWERKY=59506
select * from FSTTOTAL where FSTOPENDRAWERKY=109003

select * from FSTDRAWERCOMPMNT where fstdrawerky=59506

select * from FSTBALANCEPOS

select * from fsttotal where OPID='ramesh';
update FSTTOTAL set AMOUNT=0 where OPID='ramesh';

select * from FSTDRAWERCOMPMNT where fstdrawerky=59504;
update FSTDRAWERCOMPMNT  set BALANCEAMOUNT=0,STARTINGAMOUNT=0 where FSTDRAWERKY=59506;

select * from FSTBALANCEPOS where FSTDRAWERKY=59506;
update FSTBALANCEPOS set AMOUNT =0 WHERE FSTDRAWERKY=59506;

select * from FSTCASHTEMPLATE;
select fstdrawerky from fstopendrawer where FSTOPENDRAWERKY  in (1752959,1756146,2777305,2779836,2729335)

select * from MBBDRAWERCOMPMNT where FSTDRAWERCOMPMNTKY in (62010)
update MBBDRAWERCOMPMNT set MSCLLNSBILLS=0,MSCLLNSCOINS=0 where UPDATEUSER ='ramesh'//FSTDRAWERCOMPMNTKY in (62510,60509);



select * from fstdrawer where drawerid in (2016022630 ,2016022605)

select * from FSTINVARTICLE

select * from FSTISSUERCODE 

select * from FSTINVENTORY where FSTDRAWERKY in (60003)
update FSTINVENTORY set STARTINGSERIALNR=0,ENDINGSERIALNR=0 where FSTDRAWERKY =60003

select * from FSTINVENTORY where ITEMTYPE in ('MBBNegType01','MBBNegType05') and updateuser ='ramesh'


select * from fstdrawer where drawerid in (1770)

select * from FSTDELIVERYTX

select * from FSTDELIVERY

select * from FSTINVENTORY where FSTDRAWERKY in (49502)
update FSTINVENTORY set STARTINGSERIALNR=0,ENDINGSERIALNR=0,SRLNOLENGTH=1 where FSTDRAWERKY =60003

select * from FSTINVENTORY where ITEMTYPE in ('MBBNegType01','MBBNegType05') and updateuser ='ramesh'


//SGD & forex drawers zeorrised

select * from fsttotal;
update FSTTOTAL set AMOUNT=0;

select * from FSTDRAWERCOMPMNT;
update FSTDRAWERCOMPMNT  set BALANCEAMOUNT=0,STARTINGAMOUNT=0;

select * from FSTBALANCEPOS;
update FSTBALANCEPOS set AMOUNT =0;

select * from MBBDRAWERCOMPMNT;
update MBBDRAWERCOMPMNT set MSCLLNSBILLS=0,MSCLLNSCOINS=0;




// Negotiable drawers

select * from FSTINVENTORY;
update FSTINVENTORY set STARTINGSERIALNR=0,ENDINGSERIALNR=0,SRLNOLENGTH=1;

select * from FSTDELIVERYTX;
delete from FSTDELIVERYTX;

select * from FSTDELIVERY;
delete from FSTDELIVERY;

select * from PSODELIVERINVITEMS;
delete from PSODELIVERINVITEMS;

select * from PSOINVSTOCKINQUIRY;
delete from  PSOINVSTOCKINQUIRY;

select * from fstdrawer where drawerid in (201602190,8888,2016022630,2016021920,201602193);
update fstdrawer set ISBALANCED =1 WHERE drawerid in (201602190,8888,2016022630,2016021920,201602193);

SELECT * FROM FSTOPENDRAWER WHERE fstdrawerky = 59504

select * from FSTDRAWERCOMPMNT WHERE fstdrawerky = 59504
update FSTDRAWERCOMPMNT set ISBALANCED =1 WHERE FSTDRAWERKY in (59504,59506);





-------------------------- REMITTANCE GROUP NO
SELECT a0.MBBRMTSQNCKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.branchid, a0.sqncno, a0.productcd FROM MBBRMTSQNC a0 WHERE ((a0.productcd = ?) AND (a0.branchid = ?)) (0, '133')

 5                133          0             990065     12/16/2016 2:18:29 PM  ramesh         MBB              65
select * from MBBRMTSQNC where PRODUCTCD=5 order by UPDATEDTTM desc;

Remittance Group No. : 033201602990065
Txn Name : MBBSGOutwardAndIssuanceCOTX
select * from FSTJOURNALENTRY order by BUSINESSDATE desc ='2016-12-16'
Productcd = 0 - Function Name - OutwardAndIssuanceCO
Productcd=  6 - Function Name - RegionalLink
Productcd = 4 - Function Name - OutwardFTT
Product codes - to generate the remittance seqnos
0 - co,1 dd,2 fn,3 tc,4 tt, 5 meps,6 regional link
----------------------------------------------------------

select * from fsttotal ft left outer join FSTOPENDRAWER fo on ft.FSTOPENDRAWERKY = fo.FSTOPENDRAWERKY and fo.isopen ='1'


SELECT FSTOPENDRAWER.*  FROM FSTOPENDRAWER WHERE NOT EXISTS(SELECT FSTOPENDRAWERKY FROM fsttotal WHERE FSTOPENDRAWER.FSTOPENDRAWERKY = fsttotal.FSTOPENDRAWERKY 
                             AND FSTOPENDRAWER.isopen = '1')



select * from fsttotal where fstopendrawerky =1502
select * from fstopendrawer where fstdrawerky=12503

SELECT FSTOPENDRAWER.*  FROM FSTOPENDRAWER JOIN FSTTOTAL ON FSTOPENDRAWER.FSTOPENDRAWERKY not in FSTTOTAL.FSTOPENDRAWERKY AND FSTOPENDRAWER.ISOPEN = '1'
 WHERE FSTTOTAL.FSTOPENDRAWERKY IS NULL

select * from fstdrawer where TYPE not in (0,3)

select FSTOPENDRAWERKY from fstdrawer join fstopendrawer on fstdrawer.FSTDRAWERKY=fstopendrawer.FSTDRAWERKY where fstopendrawer.isopen in '1' and fstdrawer.type in (0,3)
and fstopendrawer.fstopendrawerky not in (select FSTOPENDRAWERKY from fsttotal)

select fstopendrawer.fstopendrawerky from fstdrawer join
 fstopendrawer on fstdrawer.fstdrawerky=fstopendrawer.fstdrawerky where fstopendrawer.isopen='1' and fstdrawer.type=3
and fstopendrawer.fstopendrawerky not in (select fstopendrawerky from fsttotal)

select * from fsttotal where fstopendrawerky=107008

select * from fstdrawer where drawerid=6661
update fstdrawer set type=39 where drawerid=6661;
39

select * from fstopendrawer where fstdrawerky=12503
update fstopendrawer set isopen ='0' where fstopendrawerky=101003


select distinct drawerid from fstdrawer join fstopendrawer on fstdrawer.fstdrawerky=fstopendrawer.fstdrawerky 
where fstdrawer.isopen='1' and fstdrawer.type =0 and fstdrawer.fstorgky=2004 and fstdrawer.currency='SGD' and fstopendrawer.fstopendrawerky not in (select fstopendrawerky from fsttotal)

update fstdrawer set isopen='0' where  drawerid= (select distinct drawerid from fstdrawer join fstopendrawer on fstdrawer.fstdrawerky=fstopendrawer.fstdrawerky 
where fstdrawer.isopen='1' and fstdrawer.type =0 and fstdrawer.drawerid=***** and fstdrawer.fstorgky=2004 and fstdrawer.currency='SGD' and fstopendrawer.fstopendrawerky not in (select fstopendrawerky from fsttotal))


select * from FSTTOTAL where fstopendrawerky in (441503,1301966,361632)
select * from ARCPRINCIPAL where arcprincipalky in (3051,44050,3062)

select * from fstopendrawer  join fstdrawer on fstopendrawer.fstdrawerky = fstdrawer.fstdrawerky join fstorg on fstdrawer.fstorgky = fstorg.cororgky
where fstopendrawer.fstopendrawerky in (441503,1301966,361632) for read only with ur

select * from fstdrawer where drawerid=201602190
select * from PSOORG where cororgky = 14851574;
select * from PSOORG where BRNCHBUSNSSDT = '2017-01-17';
update
select * from fstopendrawer where fstdrawerky = 59504
update fstopendrawer set BUSINESSDATE=2017-01-13 121503

select fstopendrawer.fstopendrawerky ,fstdrawer.drawerid,fstdrawer.currency,fstdrawer.updateuser,fstopendrawer.arcprincipalky,fstopendrawer.businessdate from fstdrawer
 join fstopendrawer on fstdrawer.fstdrawerky=fstopendrawer.fstdrawerky 
where fstdrawer.isopen='1' and fstdrawer.type =0 and fstdrawer.currency='SGD' and fstopendrawer.fstopendrawerky not in (select fstopendrawerky from fsttotal)

select * from fstdrawer where isopen='1' and type =0 and currency='SGD' 

select * from fsttotal where fstopendrawerky=6002


select * from fstdrawer where fstdrawerky =(select fstdrawerky from fstopendrawer where isopen='1' and fstopendrawerky not in 
(select fstopendrawerky from fsttotal))

select * from fstopendrawer  join fstdrawer on fstopendrawer.fstdrawerky = fstdrawer.fstdrawerky join fstorg on fstdrawer.fstorgky = fstorg.cororgky
where fstopendrawer.fstopendrawerky in (6002,1301966,361632) for read only with ur


select * from fstopendrawer  join fstdrawer on fstopendrawer.fstdrawerky = fstdrawer.fstdrawerky join fstorg on fstdrawer.fstorgky = fstorg.cororgky
where fstorg.id in (133) for read only with ur

select * from fstorg where id=133


select * from psoorg

select * from fstdrawer where drawerid = ()


select TX_NAME,TX_AMOUNT,TX_ACCOUNT,OP_ID, DATETIME from FSTJOURNALENTRY where DRAWER_ID = ****** AND DATE(DATETIME)='2017-01-19' AND TX_AMOUNT is not null


select TX_NAME,TX_AMOUNT,TX_ACCOUNT,OP_ID,DATETIME from FSTJOURNALENTRY where DRAWER_ID = 67434 AND DATE(DATETIME)='2017-01-19' AND TX_AMOUNT is not null

select FSTTOTAL.OPID,FSTTOTAL.BUSINESSDATE,FSTTOTAL.BUCKETNAME,FSTTOTAL.AMOUNT,FSTTOTAL.COMPARTMENTNAME FROM FSTTOTAL join FSTOPENDRAWER on FSTTOTAL.FSTOPENDRAWERKY = FSTOPENDRAWER.FSTOPENDRAWERKY
where FSTTOTAL.BUSINESSDATE='2017-01-19' AND FSTOPENDRAWER.FSTDRAWERKY IN (select FSTDRAWERKY from FSTDRAWER WHERE DRAWERID =201602190)


select * from fstopendrawer where fstopendrawerky=107508

SELECT * FROM FSTDRAWER WHERE CURRENCY='SGD'


select * from FSTJOURNALENTRY where DRAWER_ID = 800140413 AND BUSINESSDATE between '2017-03-16' and '2017-03-21'

select * from fstdrawer where drawerid=800140413;

select * from fstopendrawer where fstdrawerky = (select fstdrawerky from fstdrawer where drawerid =800140413);

select * from fsttotal where businessdate = '2017-01-19'

select * from ARCCONFIGURATION


select * from fstorg where id=133

SMVIAH


select distinct drawerid from fstdrawer join fstopendrawer on fstdrawer.fstdrawerky=fstopendrawer.fstdrawerky 
where fstdrawer.isopen='1' and fstdrawer.type =0 and fstdrawer.fstorgky=2004 and fstdrawer.currency='SGD' and fstopendrawer.fstopendrawerky not in (select fstopendrawerky from fsttotal)

select * from fstprincipal where ARCPRINCIPALKY=2

select * from ARCPRINCIPAL

update fstdrawer set isopen='0' where  drawerid= (select distinct drawerid from fstdrawer join fstopendrawer on fstdrawer.fstdrawerky=fstopendrawer.fstdrawerky 
where fstdrawer.isopen='1' and fstdrawer.type =0 and fstdrawer.drawerid in (800140212,800140213,705740207) and fstdrawer.fstorgky=2004 and fstdrawer.currency='SGD' and fstopendrawer.fstopendrawerky not in (select fstopendrawerky from fsttotal))

update fstdrawer set isopen='0' where drawerid in (800140212,800140213,705740207) and fstdrawer.fstorgky=2004

Select * from fstdrawer where drawerid in (800140212,800140213,705740207) and fstorgky=2004;


select FSTTOTAL.OPID,FSTTOTAL.BUSINESSDATE,FSTTOTAL.BUCKETNAME,FSTTOTAL.AMOUNT,FSTTOTAL.COMPARTMENTNAME,FSTTOTAL.TRANSTIME FROM FSTTOTAL join FSTOPENDRAWER on FSTTOTAL.FSTOPENDRAWERKY = FSTOPENDRAWER.FSTOPENDRAWERKY
where FSTTOTAL.BUSINESSDATE='2017-01-19' AND FSTOPENDRAWER.FSTDRAWERKY IN (select FSTDRAWERKY from FSTDRAWER WHERE DRAWERID =******)



select * from FSTTOTAL where opid='ramesh' 


//Change the drawers status Open To Close
select * from fstdrawer where isopen =1;
update fstdrawer set isopen =0 where isopen =1;

//Change the drawer balance status to Balanced.
select * from fstdrawer where isbalanced=0;
update fstdrawer set isbalanced=1 where isbalanced=0;

//Change the Opendrawer status Open to Close
select * from FSTOPENDRAWER where isopen='1';
update FSTOPENDRAWER set isopen ='0' where isopen='1';

//Making zero for the transaction count for all the drawers
select * from fsttotal where transcount !=0
update fsttotal set transcount=0 where transcount !=0 and opid !='ramesh'

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'HostDateFlag', 'N', 'ep_etca_1', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'BranchEodFlag', 'Y', 'ep_etca_1', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');


select * from ARCCONFIGURATION where propertyname='HostDateFlag';

select * from ARCCONFIGURATION where propertyname='BranchEodFlag';
update ARCCONFIGURATION set PROPERTYVALUE='Y',DOMAIN='ep' where propertyname='BranchEodFlag';



select * from FSTDRAWER where drawerid in (700040105,700040201,700040202,700040215,700040217,700040218,700040219,700043302,700140113,700240133,700240140,700240143,700240149,700340001,700340002,700340003,700340004,700440133,700440134,700640141,
700640142,700740105,700940107,700940108,700940109,701140131,702440104,702440105,703240111,703440125,703440126,800640126,800940105,800940106,800940134,7034401118) and
isbalanced='1'
select * from fstdrawer where drawerid=1770



SELECT ARCTARGET.NAME  
FROM ARCGRANT 
JOIN ARCTARGET ON ARCGRANT.ARCTARGETKY = ARCTARGET.ARCTARGETKY 
JOIN ARCPRINCIPAL ON ARCGRANT.ARCPRINCIPALKY =  ARCPRINCIPAL.ARCPRINCIPALKY
JOIN ARCTARGETTYPE ON ARCTARGET.ARCTARGETTYPEKY = ARCTARGETTYPE.ARCTARGETTYPEKY
JOIN FSTDRAWER ON ARCTARGET.NAME = cast(FSTDRAWER.DRAWERID as char(64))
WHERE ARCTARGETTYPE.NAME = 'DRAWER' AND ARCPRINCIPAL.NAME = 'ramesh'
FOR READ ONLY WITH UR;


select * from fstdrawer where drawerid in (1770,2016022605,2016022630,8888,201602190,2016021920,201602193,27092016,201701250)

update fstdrawer set isbalanced =1 where drawerid in (1770,2016022605,2016022630,8888,201602190,2016021920,201602193,27092016,201701250) 


select * from fstdelivery



select * from fstdrawer where drawerid =34511

select * from FSTDRAWERCOMPMNT


select * from FSTJOURNALENTRY where BUSINESSDATE='2017-02-06' and BRANCH_ID='409'


INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'ClientDate', 'Y20161229', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'ClientDate', 'Y20161229', 'ep_etca_1', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'ClientDate', 'Y20161229', 'ep_etca', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');



INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'ClientDt', 'Y20161229', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'ClientDt', 'Y20161229', 'ep_etca_1', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'ClientDt', 'Y20161229', 'ep_etca', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

update ARCCONFIGURATION set PROPERTYVALUE='Y20161229' where PROPERTYNAME='ClientDate';
commit;

select * from ARCCONFIGURATION where PROPERTYNAME='ClientDt'



INSERT INTO MBBRMTSQNC (MBBRMTSQNCKY, BRANCHID, PRODUCTCD, SQNCNO, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP) 
values ((select max (MBBRMTSQNCKY)+1 from MBBRMTSQNC), '440', 0, 0, CURRENT TIMESTAMP, 'SYSTEM','MBB',1);

INSERT INTO MBBRMTSQNC (MBBRMTSQNCKY, BRANCHID, PRODUCTCD, SQNCNO, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP) 
values ((select max (MBBRMTSQNCKY)+1 from MBBRMTSQNC), '440', 1, 0, CURRENT TIMESTAMP, 'SYSTEM','MBB',1);

INSERT INTO MBBRMTSQNC (MBBRMTSQNCKY, BRANCHID, PRODUCTCD, SQNCNO, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP) 
values ((select max (MBBRMTSQNCKY)+1 from MBBRMTSQNC), '440', 2, 0, CURRENT TIMESTAMP, 'SYSTEM','MBB',1);

INSERT INTO MBBRMTSQNC (MBBRMTSQNCKY, BRANCHID, PRODUCTCD, SQNCNO, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP) 
values ((select max (MBBRMTSQNCKY)+1 from MBBRMTSQNC), '440', 3, 0, CURRENT TIMESTAMP, 'SYSTEM','MBB',1);

INSERT INTO MBBRMTSQNC (MBBRMTSQNCKY, BRANCHID, PRODUCTCD, SQNCNO, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP) 
values ((select max (MBBRMTSQNCKY)+1 from MBBRMTSQNC), '440', 4, 0, CURRENT TIMESTAMP, 'SYSTEM','MBB',1);

INSERT INTO MBBRMTSQNC (MBBRMTSQNCKY, BRANCHID, PRODUCTCD, SQNCNO, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP) 
values ((select max (MBBRMTSQNCKY)+1 from MBBRMTSQNC), '440', 5, 0, CURRENT TIMESTAMP, 'SYSTEM','MBB',1);

INSERT INTO MBBRMTSQNC (MBBRMTSQNCKY, BRANCHID, PRODUCTCD, SQNCNO, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP) 
values ((select max (MBBRMTSQNCKY)+1 from MBBRMTSQNC), '440', 6, 0, CURRENT TIMESTAMP, 'SYSTEM','MBB',1);

delete from MBBRMTSQNC where BRANCHID='440';


select * from ARCCONFIGURATION where PROPERTYNAME='DeskTopDateFlag'

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'DeskTopDateFlag', 'Y', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'DeskTopDateFlag', 'Y', 'ep_etca_1', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'DeskTopDateFlag', 'Y', 'ep_etca', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

commit;


select JOURNAL_NR,TX_NAME,OP_ID,BRANCH_ID,SUPERVISOR,ENTRY_NAME,STATUS,DATETIME from FSTJOURNALENTRY where date(DATETIME)=current date order by JOURNAL_NR desc


select * from ARCMESSAGE


update ARCCONFIGURATION set PROPERTYVALUE ='Y20161229',UPDATEDTTM=current timestamp where PROPERTYNAME='ClientDt'
select * from FSTOpenDrawer
UPDATEDTTM

select * from arcenum where CATEGORY='agentFTT'
----------------------
--BOF  - STORE AND FOREARD PROCESS TRANSACTION
select * from MBBSTOREFWDFILEINFO where BUSSINDATE= 1802;
select * from MBBSTOREFWDUPLDDAT where  MBBSTOREFWDFILEINFOKY= 1802;

delete from  MBBSTOREFWDUPLDDAT where  MBBSTOREFWDFILEINFOKY= 1802;
delete from MBBSTOREFWDFILEINFO where MBBSTOREFWDFILEINFOKY= 1802;


-- Choose the transaction to delete
select * from MBBSTOREFWDFILEINFO where BUSSINDATE between '2017-07-28' and '2017-07-29';
select * from MBBSTOREFWDUPLDDAT where DATE(UPDATEDTTM) = '2017-07-28' and DATE(UPDATEDTTM) = '2017-07-29';


--BOF  - select the record to delete *STORE AND FOREARD PROCESS TRANSACTION
select * from MBBSTOREFWDFILEINFO where MBBSTOREFWDFILEINFOKY= 1802;
select * from MBBSTOREFWDUPLDDAT where  MBBSTOREFWDFILEINFOKY= 1802;

-- ** Delete the transactions related the bussinessdate
delete from  MBBSTOREFWDUPLDDAT where  MBBSTOREFWDFILEINFOKY= 1802;
delete from MBBSTOREFWDFILEINFO where MBBSTOREFWDFILEINFOKY= 1802;

--------------------------------------



select * from fsttotal where OPID='MPJTYT' and BUSINESSDATE='2017-03-10';
select * from FSTJOURNALENTRY where OP_ID='MPJTYT' and BUSINESSDATE='2017-03-10'


select * from fsttotal where BRANCHID='407' and BUSINESSDATE between '2017-04-21' and '2017-04-22' WITH UR;
select * from FSTJOURNALENTRY where BRANCH_ID='407' and BUSINESSDATE between '2017-04-21' and '2017-04-22' WITH UR;

select * from FSTDRAWER =

select * from PSOPRINCIPAL;

select * from BATAUDIT

select * from ARCPRINCIPAL where name like 'ram%'



select * from CORAudit where DATE(AUDITDTTM)='2017-03-20';
select * from CORAuditType;



select * from fstdrawer where drawerid in (776342108,800142114,800142128,776342107,800142112,800142113,810142115,820142115,776342101,800142101,776342102,
776342103,800142103,776342104,800142104,776342105,800142105,776342106,800142107,800142111,800142106,800142102,800142116,776342117,
800142117,888842107,888842108,888842106,888842102);

select * from fstopendrawer where fstdrawerky in  



update fstdrawer set isbalanced=1 where drawerid in(800141713,759541707);


select * from fstdrawer where drawerid in (810141715,800141712,800141713,759541707,759541708,800141714,800141728,800141716,
759541701,759541702,800141702,759541703,800141703,759541704,800141705,759541706,800141707,800141711,759541705,830141715,
800141701,800141704,759541717,800141717,888841705,888841717,800141706,820141715,888841706,888841702)


SELECT a0.FSTOpenDrawerKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.fstdrawerky, a0.fstterminalky, a0.cdmregupdateid, a0.isopen, a0.luid, a0.arcprincipalky, a0.isonlineopen, a0.businessdate FROM FSTOpenDrawer a0 WHERE ((((a0.fstdrawerky = 5067)
 AND (a0.isopen = '1'))) AND (a0.arcprincipalky = 12050))


select * from fstdrawer where drawerid in (800141712,749641407,810140815,744541307,810140815,800141307);



 update FSTOpenDrawer set isopen='1' where fstdrawerky = 5067 and arcprincipalky = 12050 and businessdate='20170320';
select * from fstopendrawer where fstdrawerky in (7509,7510,7013,7513,7033,7035,7036,7530,7037,7038,7040,7544,7064,7065,7555,7130,7136,7623,7141,7145,7150,7034,38114,38648,421,5,42691,7082,68517,68518);


select * from fstdrawer where drawerid in (810141615,820141615,800141614,800141628,800141601,800141603,800141604,800141605,800141606,800141607,800141611,
800141616,756841607,800141612,800141613,756841601,756841602,756841603,756841604,756841605,756841606,800141602,756841617,800141617,888841605,
888841617,756841608,888841606,888841602);


update FSTOpenDrawer set isopen='0' where fstdrawerky = 7065 and arcprincipalky != 13059;


select * from fstdrawer where fstdrawerky =59504

select * from fstopendrawer where fstdrawerky =59504 order by UPDATEDTTM desc


select * from fstorg where id in (406,406,407,410,413,414,417,421);


select * from FSTJOURNALENTRY where OP_ID='ramesh' and BUSINESSDATE='2017-03-23'


select * from fstdrawer where drawerid=201602193;
select * from fstopendrawer where fstdrawerky=59506


select * from fstdrawer where drawerid in (201602190,27092016,201701250);

select * from fst

select * from fstopendrawer where fstdrawerky in (59504,61505,62002) and isopen='1';



select * from coraudit where DATE(AUDITDTTM) between '2017-03-26' and '2017-03-31';

select * from fstdrawer where drawerid=2

select * from fstopendrawer where fstdrawerky =7506;

update fstdrawer set isopen='1' where drawerid=2;


select fstopend


select * from FSTJOURNALENTRY where BRANCH_ID = '416' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select * from FSTJOURNALENTRY where BUSINESSDATE between '2017-03-30' and '2017-03-31' and OP_ID='TRCSFR';

select * from FSTJOURNALENTRY where BRANCH_ID = '401';

select BRANCH_ID as MAYNBANKTOWER,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '401' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay') and BUSINESSDATE = current date;

select BRANCH_ID as MAYNBANKTOWER,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '401' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');

select * from FSTDRAWER where isbalanced =0;

select * from fstdrawer where fstdrawerky in (select distinct fstdrawerky from fstopendrawer where isopen ='1');

select * from fstopendrawer where fstdrawerky=55002;





select * from FSTJOURNALENTRY where BUSINESSDATE=current date and TX_NAME in ()



select BRANCH_ID as MAYNBANKTOWER,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '401' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as ROBINSONRD,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '402' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as TAMPINESS,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '403' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as WOODLANDS,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '404' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as HDBHUB,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '405' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as BTTimah,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '406' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as JurangPoing,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '407' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as BALESTIER,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '408' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as NORTHBRIDGE,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '409' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as AMK,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '410' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as CLEMENTI,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '411' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as NEX,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '412' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as BEDOK,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '413' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as GEYLANGSERAI,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '414' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as MARINEPARADE,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '415' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as CHOACHUKANG,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '416' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as CHINATOWN,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '417' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as HOLLANDV,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '418' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as JURANGEAST,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '419' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as YISHUN,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '420' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as TEXTILECENTRE,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '421' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as KOVAN,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '422' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as CAPSKOVAN,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '431' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as CAPSMT,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '432' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');
select BRANCH_ID as FINANCEOPERATIONS,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where BRANCH_ID = '433' AND TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay');


select DRAWERID from fstdrawer where ISBALANCED=0 and fstorgky in (select fstorgky from fstorg where id=401);

SELECT A1.NAME FROM FSTPRINCIPAL A0 JOIN ARCPRINCIPAL A1 ON A1.ARCPRINCIPALKY=A0.ARCPRINCIPALKY WHERE A0.CORORGKY IN (SELECT CORORGKY FROM FSTORG WHERE ID=401);
SELECT BRANCH_ID,DRAWER_ID,OP_ID as NAME,DATETIME,TX_NAME FROM FSTJOURNALENTRY WHERE DATE(BUSINESSDATE)=CURRENT DATE AND TX_NAME IN ('MBBEndOfDay','MBBForceBranchEndOfDay','MBBBranchEndOfDay') AND BRANCH_ID='401';

SELECT DRAWERID FROM FSTDRAWER WHERE ISBALANCED=0 AND FSTORGKY in (SELECT FSTORGKY FROM FSTORG WHERE ID=401);

SELECT DRAWERID FROM FSTDRAWER WHERE ISBALANCED=0 AND FSTORGKY in (SELECT FSTORGKY FROM FSTORG WHERE ID=401);



SELECT A1.NAME FROM FSTOPENDRAWER A0 JOIN ARCPRINCIPAL A1 ON A1.ARCPRINCIPALKY=A0.ARCPRINCIPALKY WHERE A0.ISOPEN='1' AND A0.BUSINESSDATE = CURRENT DATE
  AND A0.FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE FSTORGKY IN (SELECT FSTORGKY FROM FSTORG WHERE ID=133));




-SCRIPT FOR TO VERIFY TELLER EOD AND BRANCH EOD;
   1)-- SCRIPT FOR TO FIND THE TELLER ID'S IN BRANCH;
    SELECT A1.NAME FROM FSTPRINCIPAL A0 JOIN ARCPRINCIPAL A1 ON A1.ARCPRINCIPALKY=A0.ARCPRINCIPALKY WHERE A0.CORORGKY IN (SELECT CORORGKY FROM FSTORG WHERE ID=401);
   2)-- SCRIPT FOR TO KNOW THE WHICH TELLER PERFORM THE BRANCH EOD ON THE CURRENT DATE
    SELECT BRANCH_ID,DRAWER_ID,OP_ID as NAME,DATETIME,TX_NAME FROM FSTJOURNALENTRY WHERE DATE(BUSINESSDATE)=CURRENT DATE AND TX_NAME IN ('MBBEndOfDay','MBBForceBranchEndOfDay','MBBBranchEndOfDay') AND BRANCH_ID='401';


-SCRIPT FOR TO VERIFY WHICH DRAWER DOESNOT BALANCE IN BRANCH.
   SELECT DRAWERID FROM FSTDRAWER WHERE ISBALANCED=0 AND FSTORGKY in (SELECT FSTORGKY FROM FSTORG WHERE ID=401);







-SCRIPT FOR TO FIND WHICH TELLER DOESNOT PERFORMED THE EOD PROPERLY IN BRANCH ON THE CURRENT DATE;
 SELECT A1.NAME FROM FSTOPENDRAWER A0 JOIN ARCPRINCIPAL A1 ON A1.ARCPRINCIPALKY=A0.ARCPRINCIPALKY WHERE A0.ISOPEN='1' AND A0.BUSINESSDATE = CURRENT DATE
  AND A0.FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE FSTORGKY IN (SELECT FSTORGKY FROM FSTORG WHERE ID=401));




SELECT A0.ID as BRANCHID ,A2.NAME AS TELLERID,A3.DRAWERID FROM FSTORG A0 JOIN FSTPRINCIPAL A1 ON A0.CORORGKY=A1.CORORGKY
JOIN ARCPRINCIPAL A2 ON A1.ARCPRINCIPALKY=A2.ARCPRINCIPALKY JOIN FSTDRAWER A3 ON
A3.FSTORGKY=A0.CORORGKY AND A3.ISBALANCED=0 JOIN FSTOPENDRAWER A4 ON A4.FSTDRAWERKY=A3.FSTDRAWERKY
AND A4.BUSINESSDATE = CURRENT DATE WITH UR

       SELECT A0.ID,A2.NAME,A3.DRAWERID FROM FSTORG A0 JOIN FSTPRINCIPAL A1 ON A0.CORORGKY=A1.CORORGKY
       JOIN ARCPRINCIPAL A2 ON A1.ARCPRINCIPALKY=A2.ARCPRINCIPALKY JOIN FSTDRAWER A3 ON
       A3.FSTORGKY=A0.CORORGKY AND A3.ISBALANCED=0 JOIN FSTOPENDRAWER A4 ON A4.FSTDRAWERKY=A3.FSTDRAWERKY
       AND A2.ARCPRINCIPALKY=A4.ARCPRINCIPALKY AND A4.BUSINESSDATE = CURRENT DATE AND A0.ID =401 WITH UR;

     SELECT A1.NAME FROM FSTOPENDRAWER A0 JOIN ARCPRINCIPAL A1 ON A1.ARCPRINCIPALKY=A0.ARCPRINCIPALKY WHERE A0.ISOPEN='1' AND A0.BUSINESSDATE = CURRENT DATE
     AND A0.FSTDRAWERKY IN (SELECT B0.DRAWERID FROM FSTDRAWER B0 INNER JOIN FSTORG B1 ON B0.FSTORGKY = B1.CORORGKY WHERE B1.ID=401);

SELECT BRANCH_ID,DRAWER_ID,OP_ID as NAME,DATETIME,TX_NAME FROM FSTJOURNALENTRY WHERE DATE(BUSINESSDATE)=CURRENT DATE AND TX_NAME IN ('MBBEndOfDay','MBBForceBranchEndOfDay','MBBBranchEndOfDay') AND BRANCH_ID='401';







SELECT DISTINCT(A3.DRAWERID) FROM FSTORG A0 JOIN FSTPRINCIPAL A1 ON A0.CORORGKY=A1.CORORGKY
       JOIN ARCPRINCIPAL A2 ON A1.ARCPRINCIPALKY=A2.ARCPRINCIPALKY JOIN FSTDRAWER A3 ON
       A3.FSTORGKY=A0.CORORGKY AND A3.ISBALANCED=0 JOIN FSTOPENDRAWER A4 ON A4.FSTDRAWERKY=A3.FSTDRAWERKY
       AND A2.ARCPRINCIPALKY=A4.ARCPRINCIPALKY AND A4.BUSINESSDATE = CURRENT DATE AND A0.ID =401 WITH UR;


    SELECT BRANCH_ID,DRAWER_ID,OP_ID as NAME,DATETIME,TX_NAME FROM FSTJOURNALENTRY WHERE DATE(BUSINESSDATE)=CURRENT DATE AND TX_NAME IN ('MBBForceBranchEndOfDay','MBBBranchEndOfDay') AND BRANCH_ID='401' WITH UR;

SELECT A1.NAME FROM FSTOPENDRAWER A0 JOIN ARCPRINCIPAL A1 ON A1.ARCPRINCIPALKY=A0.ARCPRINCIPALKY WHERE A0.ISOPEN='1' AND A0.BUSINESSDATE = CURRENT DATE
     AND A0.FSTDRAWERKY IN (SELECT B0.DRAWERID FROM FSTDRAWER B0 INNER JOIN FSTORG B1 ON B0.FSTORGKY = B1.CORORGKY WHERE B1.ID=401) WITH UR;



select * from fstopendrawer where businessdate in ('2017-03-16','2017-03-17','2017-03-18','2017-03-19','2017-03-20','2017-03-21') and fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=800140412);
select * from fstopendrawer where businessdate in ('2017-03-16','2017-03-17','2017-03-18','2017-03-19','2017-03-20','2017-03-21') and fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=800140413);
select * from fstopendrawer where businessdate in ('2017-03-16','2017-03-17','2017-03-18','2017-03-19','2017-03-20','2017-03-21') and fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=800141713);
select * from fstopendrawer where businessdate in ('2017-03-16','2017-03-17','2017-03-18','2017-03-19','2017-03-20','2017-03-21') and fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=800141013);
select * from fstopendrawer where businessdate in ('2017-03-16','2017-03-17','2017-03-18','2017-03-19','2017-03-20','2017-03-21') and fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=744641307);
select * from fstopendrawer where businessdate in ('2017-03-16','2017-03-17','2017-03-18','2017-03-19','2017-03-20','2017-03-21') and fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=800141413);
select * from fstopendrawer where businessdate in ('2017-03-16','2017-03-17','2017-03-18','2017-03-19','2017-03-20','2017-03-21') and fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=800142113);




select * from fstopendrawer where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid in(800142112,800142113));

select * from fstopendrawer where ARCPRINCIPALKY = 12050;





SELECT BRANCH_ID,DRAWER_ID,OP_ID as NAME,DATETIME,TX_NAME FROM FSTJOURNALENTRY WHERE TX_NAME IN ('MBBForceBranchEndOfDay') AND DATE(BUSINESSDATE)='2017-03-27' WITH UR;


SELECT * FROM CORAUDIT WHERE XMLAUDITDATA LIKE '%AsignedDrawer%' and DATE(AUDITDTTM)= '2017-03-27'






  SELECT A0.ID,A2.NAME FROM FSTORG A0 JOIN FSTPRINCIPAL A1 ON A0.CORORGKY=A1.CORORGKY
       JOIN ARCPRINCIPAL A2 ON A1.ARCPRINCIPALKY=A2.ARCPRINCIPALKY JOIN FSTDRAWER A3 ON
       A3.FSTORGKY=A0.CORORGKY  JOIN FSTOPENDRAWER A4 ON A4.FSTDRAWERKY=A3.FSTDRAWERKY
       AND A2.ARCPRINCIPALKY=A4.ARCPRINCIPALKY AND A4.ISOPEN='1' AND A4.BUSINESSDATE = '2017-03-27' WITH UR;


 --

SELECT DISTINCT A2.NAME FROM FSTORG A0 JOIN FSTPRINCIPAL A1 ON A0.CORORGKY=A1.CORORGKY
       JOIN ARCPRINCIPAL A2 ON A1.ARCPRINCIPALKY=A2.ARCPRINCIPALKY JOIN FSTDRAWER A3 ON
       A3.FSTORGKY=A0.CORORGKY  JOIN FSTOPENDRAWER A4 ON A4.FSTDRAWERKY=A3.FSTDRAWERKY
       AND A2.ARCPRINCIPALKY=A4.ARCPRINCIPALKY AND A4.ISOPEN='1' AND A4.BUSINESSDATE = '2017-03-27' WITH UR;


select BRANCH_ID as MAYNBANKTOWER,TX_NAME AS BEOD,BUSINESSDATE from FSTJOURNALENTRY where 
TX_NAME not in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay') AND DATE(BUSINESSDATE)='2017-03-27' WITH UR;




SELECT A0.ID FROM FSTORG A0 JOIN PSOORG A1 ON A0.CORORGKY = A1.CORORGKY AND A0.ISOPEN=1 AND BRNCHBUSNSSDT='2017-03-28';

SELECT * FROM FSTORG;
SELECT * FROM PSOORG;

SELECT * FROM MBBRMTSQNC;


SELECT DISTINCT A2.NAME FROM FSTORG A0 JOIN FSTPRINCIPAL A1 ON A0.CORORGKY=A1.CORORGKY
       JOIN ARCPRINCIPAL A2 ON A1.ARCPRINCIPALKY=A2.ARCPRINCIPALKY JOIN FSTDRAWER A3 ON
       A3.FSTORGKY=A0.CORORGKY  JOIN FSTOPENDRAWER A4 ON A4.FSTDRAWERKY=A3.FSTDRAWERKY
       AND A2.ARCPRINCIPALKY=A4.ARCPRINCIPALKY AND 




       SELECT distinct A2.NAME FROM FSTORG A0 JOIN FSTPRINCIPAL A1 ON A0.CORORGKY=A1.CORORGKY
       JOIN ARCPRINCIPAL A2 ON A1.ARCPRINCIPALKY=A2.ARCPRINCIPALKY JOIN FSTDRAWER A3 ON
       A3.FSTORGKY=A0.CORORGKY AND A3.ISBALANCED=1 JOIN FSTOPENDRAWER A4 ON A4.FSTDRAWERKY=A3.FSTDRAWERKY
       AND A2.ARCPRINCIPALKY=A4.ARCPRINCIPALKY AND A3.DRAWERID in (700440102) WITH UR;


select * from fstdrawer where drawerid=700440102


select * from FSTJOURNALENTRY where TX_NAME in ('MBBForceBranchEndOfDay','MBBBranchEndOfDay') and BUSINESSDATE between '2017-03-23' and '2017-03-29';

select * from fstopendrawer where arcprincipalky=28051 and businessdate='2017-03-20';



select * from MBBAGENTINFRMTN where AGENTCD in ('MBBEBNBB0','CHASUS330');

update MBBAGENTINFRMTN set AGENTCD='MBBEBNB0' where AGENTCD='MBBEBNBB0';
update MBBAGENTINFRMTN set AGENTCD='CHASUS30' where AGENTCD='CHASUS330';

select AGENTNM, AGENTCD,AGNTIND from MBBAGENTINFRMTN where AGENTCD in ('MBBEBNB0','CHASUS30');


select * from fstdrawer where fstorgky=14851574

select * from fstorg where id=133;

update fstdrawer set isbalanced=1 where fstorgky=14851574;

update fstopendrawer set isopen='0' where fstdrawerky in (select fstdrawerky from fstdrawer where fstorgky=14851574 );



select * from ARCPRINCIPAL where name='syam4444';
select * from ARCPRINCIPAL where ARCPRINCIPALKY=4049
select * from FSTPRINCIPAL where ARCPRINCIPALKY=6049;
select * from PSOPRINCIPAL where ARCPRINCIPALKY=6049;
select * from ARCIDENTITY where ARCPRINCIPALKY=56054;
select * from ARCUSERAUTHNTICN where ARCIDENTITYKY=11006 AND DATE (LASTLOGINDTTM)='2017-04-08'
update ARCUSERAUTHNTICN set LASTLOGINDTTM=current timestamp WHERE ARCIDENTITYKY=56013;


SELECT * FROM FSTOPENDRAWER WHERE ARCPRINCIPALKY=58054;
UPDATE FSTOPENDRAWER SET ISOPEN='1' WHERE FSTOPENDRAWERKY=40002;


SELECT * FROM FSTDRAWER WHERE FSTDRAWERKY NOT IN (SELECT FSTDRAWERKY FROM FSTOPENDRAWER) AND ISOPEN='1' AND CURRENCY ='SGD'

SELECT A0.DRAWERID,A0.FSTDRAWERKY,A0.FSTORGKY,A1.ARCPRINCIPALKY  FROM FSTDRAWER A0 JOIN FSTOPENDRAWER A1 ON A0.FSTDRAWERKY =A1.FSTDRAWERKY WHERE A1.ISOPEN='1' AND A1.BUSINESSDATE  < '2017-03-25'



SELECT A0.DRAWERID,A0.FSTDRAWERKY,A0.FSTORGKY,A3.NAME,A0.ISBALANCED,A1.ISOPEN,A1.BUSINESSDATE  FROM FSTDRAWER A0 JOIN FSTOPENDRAWER A1 ON A0.FSTDRAWERKY =A1.FSTDRAWERKY JOIN ARCPRINCIPAL A3 ON A1.ARCPRINCIPALKY=A3.ARCPRINCIPALKY 
WHERE A1.ISOPEN='1' AND A1.BUSINESSDATE  < '2017-03-29' WITH UR;




SELECT A2.CORORGKY, COUNT(A1.NAME)  FROM FSTPRINCIPAL A0 JOIN ARCPRINCIPAL A1 ON A0.ARCPRINCIPALKY = A1.ARCPRINCIPALKY INNER JOIN CORORG A2 ON A0.CORORGKY = A2.CORORGKY 
WHERE A0.ISSUPERVISOR = '1'  GROUP BY A2.CORORGKY;


select * from ARCGRANT;

select * from ARCGROUP;

SMVIAH

SELECT * FROM FSTDRAWER WHERE FSTORGKY=1504;

SELECT * FROM FSTOPENDRAWER WHERE ARCHPRINCPLEKY =83050;

SELECT * FROM CORAUDIT WHERE DATE(AUDITDTTM) ='2017-06-02'WITH UR; and '2017-05-29';

select * from FSTDRAWERCOMPMNT where BALANCEAMOUNT=58.19;
select * from fsttotal where amount=58.19;





select * from fstdrawer where fstdrawerky in (select fstdrawerky from fstopendrawer where FSTOPENDRAWERKY  in (1752959,1756146,2777305,2779836,2729335));

select * from fstopendrawer where FSTOPENDRAWERKY  in (1752959,1756146,2777305,2779836,2729335);

SELECT * FROM ARCTARGET WHERE ARCTARGETKY IN (
SELECT ARCTARGETKY  FROM ARCGRANT WHERE ARCPRINCIPALKY=111) FETCH FIRST 100 ROWS ONLY WITH UR;


select * from FSTDRAWER where fstorg 

--using the below query can get the branch  tellers.
select * from FSTTOTAL where OPID in (select A.Name from ARCPRINCIPAL A join PSOPRINCIPAL P on A.ARCPRINCIPALKY =P.ARCPRINCIPALKY join FSTPRINCIPAL F on P.ARCPRINCIPALKY=F.ARCPRINCIPALKY where F.CORORGKY=1505 and 
F.ISSUPERVISOR='0' and P.HOSTUSERID !='') and BUSINESSDATE between '2017-05-27' and '2017-05-29';

select A.Name from ARCPRINCIPAL A join PSOPRINCIPAL P on A.ARCPRINCIPALKY =P.ARCPRINCIPALKY join FSTPRINCIPAL F on P.ARCPRINCIPALKY=F.ARCPRINCIPALKY where  
F.ISSUPERVISOR='0' and P.HOSTUSERID !='';

select * from PSOPRINCIPAL where HOSTUSERID !='';
select * from FSTPRINCIPAL where ;


select * from ARCPRINCIPAL A join PSOPRINCIPAL P on A.ARCPRINCIPALKY =P.ARCPRINCIPALKY join FSTPRINCIPAL F on P.ARCPRINCIPALKY=F.ARCPRINCIPALKY where F.CORORGKY=1505 WITH UR;



select * from fsttotal where BUSINESSDATE='2017-06-02';

select * from FSTJOURNALENTRY where BUSINESSDATE='2017-06-29';

select * from fstopendrawer where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid in (742541307,81041303));


select * from MBBRMTOUTWRDTRAN WHERE DATE(UPDATEDTTM)='2017-06-02';

SELECT * FROM MBBRMTTRANSTYP WHERE DATE(UPDATEDTTM)='2017-06-02';


select * from FSTStockTx;

select * from FSTDELIVERY;
select * from FSTDELIVERYTX;
FSTInvStockTxDet
 FSTInvStockTx

select * from FSTINVENTORY where UPDATEUSER='ramesh'

select * from FSTInvGlAdjust;


select BRANCH_ID, ITEMTYPE, CODETRAVELERCHECK, DESCRIPTION, UPDATEDTTM, PRFXSTRNG, STARTINGSN, ENDINGSN, SRLNOLENGTH, OP_ID,TX_NAME 
from VWMBBNEGITEMSACTLOG  WHERE BRANCH_ID = '133';


SELECT * FROM FSTInvGlAdjust a0 INNER JOIN ((PSOBaseTran a1 INNER JOIN FSTBaseTran a2 ON a1.FSTBaseTranKY = a2.FSTBaseTranKy))
 ON a0.FSTInvGlAdjustKy = a1.FSTBaseTranKY WHERE ((a0.branchid = 133) AND (((a0.type = 'Void') OR (a2.name = 'AdjustmentNegotiableAPI')))) (133)


select * from FSTINVGLADJUST;

select * from fstdrawer where drawerid=8888;
update fstdrawer set VERSIONSTAMP=141 where drawerid=8888;

select BRANCH_ID, ITEMTYPE, CODETRAVELERCHECK, DESCRIPTION, UPDATEDTTM, PRFXSTRNG, STARTINGSN, ENDINGSN, SRLNOLENGTH, OP_ID,TX_NAME from VWMBBNEGITEMSACTLOG  WHERE BRANCH_ID = '133';


select * from MBBPOSTALCD;

update MBBPOSTALCD set FILETTM=current timestamp


INSERT INTO MBBPOSTALCD (MBBPOSTALCDKY,POSTALCD,ADDRSSTYP,ADDRSSFORMAT,BLCKBLDGNO,STOREYNO,UNITNO,STREETNM,BLDGNM,POBOX,STATECTYNM,CNTRYCD,FILETTM,
UPDATEUSER,VERSIONSTAMP,UPDATESYSTEM,UPDATEDTTM) values(2,427475,null,'S',210,null,null,'STILL ROA',
null,null,'SINGAPORE','SIN',current timestamp,'SYSTEM',0,'MBB',current timestamp);


SELECT a0.MBBSTCKCNTREGKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.fstdrawerky, a0.dttm, a0.psoprincipalky, a0.supervisor FROM MBBSTCKCNTRGSTR a0 WHERE ((a0.dttm >= ?) AND (a0.dttm < ?)) ('2016-12-01', '2017-04-01')



select * from ARCPRINCIPAL where name='00012';

select * from FSTPRINCIPAL where ARCPRINCIPALKY =87056;

select * from PSOPRINCIPAL where ARCPRINCIPALKY =87056;


select * from fstdrawer where drawerid=67434;

select * from fstopendrawer where fstdrawerky=46506;

update fstopendrawer set isopen ='1' where FSTOPENDRAWERKY=110503;



select * from FSTJOURNALENTRY where BRANCH_ID='406' and BUSINESSDATE between '2017-06-12' and '2017-06-13' WITH UR;

select * from fsttotal where BRANCHID='406' and BUSINESSDATE between '2017-06-12' and '2017-06-13' WITH UR;

select SUPERVISOROVRRDMSG from FSTJOURNALENTRY where LUID='5723fe3d-d03b-4f64-9bda-e1b4d06fb1ce';

select SUPERVISOROVRRDMSG from FSTJOURNALENTRY where SUPERVISOROVRRDMSG !='';

select * from ARCPRINCIPAL A join PSOPRINCIPAL P on A.ARCPRINCIPALKY =P.ARCPRINCIPALKY join FSTPRINCIPAL F on P.ARCPRINCIPALKY=F.ARCPRINCIPALKY where F.CORORGKY= 2505 WITH UR;

SELECT * FROM CORAUDIT WHERE DATE(AUDITDTTM)  between '2017-08-26' and '2017-08-28' WITH UR;



select * from fstdrawer where drawerid=67434;

select * from fstopendrawer where DATE(UPDATEDTTM)='2017-06-20';

update fstopendrawer set isopen ='1' where FSTOPENDRAWERKY=110503;

select * from fstdrawer where FSTORGKY=2505 WITH UR;

select * from fstopendrawer where fstdrawerky in (select fstdrawerky from fstdrawer where fstorgky=2505) and BUSINESSDATE='2017-06-14' WITH UR;

select * from fsttotal where amount ='19.50';

select * from FSTDRAWERCOMPMNT where BALANCEAMOUNT='19.50';

select * from fsttotal where BRANCHID ='406' WITH UR;


select * from fstterminal where name ='L130300018';

update fstterminal set name ='L130300018AA' where name ='L130300018';





select * from fstdrawer where drawerid=5353;

select * from fstopendrawer where fstdrawerky =14002;

select * from fsttotal where FSTOPENDRAWERKY =143511;
update fsttotal set AMOUNT=3005.55 where FSTOPENDRAWERKY =143511;

select * from cororg where NAME like 'Test*'

select * from fstdrawer where drawerid=1254;

select * from mbbdrawer where DRAWERID=1254;


select * from fstopendrawer where fstdrawerky =14003;

select * from fsttotal where BRANCHID='535';

select * from cororg where NAME = 'Testing'

select * from fstorg where CORORGKY=14854578;

select * from fsttotal where BUCKETNAME='BeginningCash' and BRANCHID='535';
select * from fsttotal where BUCKETNAME='NetCash' and BRANCHID='535';


select * from CORAudit where CORAuditKy=13555031

SELEC

UPDATE FSTDrawer SET versionStamp = ?, updateUser = ?, updateDttm = ?, drawerid = ?, isvault = ?, fstorgky = ?, balanceamount = ?, subtype = ?, description = ?, balanceuser = ?, lastupdateoperator = ?, minamount = ?, balancetime = ?, orderdrawer = ?, currency = ?, isopen = ?, deleted = ?, type = ?, maxamount = ?, mutilated = ?, lastupdate = ?, isbalanced = ?, marked = ? WHERE FSTDrawerKy = ? AND versionStamp = ? (5, 'Admin', '2017-06-15 13:36:24.816', 1254, false, 14854578, 0.000, null:12, null:12, null:12, null:12, null:3, null:93, false, 'SGD', true, false, 0, null:3, null:3, null:2, true, null:3, 14003, 4)

select * from fstdrawer where drawerid=5028;



INSERT INTO PSOPrincipal (PSOPrincipalKy, versionStamp, updateUser, updateDttm, arcprincipalky, offcrtyp, reliffrom, islatemopoon, tllrtyp, tllrmmoidno, 
supervisormmoidno, hostuserid, sessnpsswrd, iscashclsd, supervisortllridno, relifbrnchky, telleridstatus, relifgrpky, islatechqon, tllrtransmode, level,
 employerid, latestatusfrgcurrency, iseodperfrmd, chfcshrtllridno, relifto, latestatuslclcurrency) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
 (10713, 1, 'Admin', '2017-06-16 11:44:01.143', null:-5, null:4, null:93, false, null:12, '234234234', null:93, '234', null:12, false, null:12, null:4, '1', null:4, false, null:12, null:4, 'ramesh1', null:4, 0, null:12, null:93, null:4);

UPDATE PSOPrincipal SET versionStamp = ?, updateUser = ?, updateDttm = ?, arcprincipalky = ?, offcrtyp = ?, reliffrom = ?, islatemopoon = ?, tllrtyp = ?, tllrmmoidno = ?,
 supervisormmoidno = ?, hostuserid = ?, sessnpsswrd = ?, iscashclsd = ?, supervisortllridno = ?, relifbrnchky = ?, telleridstatus = ?, relifgrpky = ?, islatechqon = ?,
 tllrtransmode = ?, level = ?, employerid = ?, latestatusfrgcurrency = ?, iseodperfrmd = ?, chfcshrtllridno = ?, relifto = ?, latestatuslclcurrency = ? WHERE PSOPrincipalKy = ?
 AND versionStamp = ? (6, 'Admin', '2017-06-16 11:43:38.233', 4049, null:4, null:93, null:5, '4', '234234234', null:12, '2342', null:12, false, null:12, null:4, '1', null:4,
 null:5, null:12, null:4, '', null:4, 0, null:12, null:93, null:4, 2102, 5);


select * from PSOPRINCIPAL where ARCPRINCIPALKY=104052;

select * from FSTPRINCIPAL where ARCPRINCIPALKY=104052;
select * from ARCPRINCIPAL where name ='ramesh1';


INSERT INTO PSOPrincipal (PSOPrincipalKy, versionStamp, updateUser, updateDttm, arcprincipalky, offcrtyp, reliffrom, islatemopoon, tllrtyp, tllrmmoidno, 
supervisormmoidno, hostuserid, sessnpsswrd, iscashclsd, supervisortllridno, relifbrnchky, telleridstatus, relifgrpky, islatechqon, tllrtransmode, level,
 employerid, latestatusfrgcurrency, iseodperfrmd, chfcshrtllridno, relifto, latestatuslclcurrency) VALUES (10713, 1, 'Admin', '2017-06-16 11:44:01.143',104052, null, null, 0,
 null, '234234234', null, '234', null, 0, null, null, '1', null, 0, null, null, 
'ramesh1', null, 0, null, null, null);



select * from fstopendrawer where isopen='1' with ur;


select * from fstopendrawer where fstdrawerky=63005

select * from FSTJOURNALENTRY where BRANCH_ID='406' and BUSINESSDATE = '2017-06-13' WITH UR;

select * from MBBEJINQRYLG where DATE(INQRYDTTM)='2017-06-13' WITH UR;

select UPDATEDTTM from FSTJOURNALENTRY where  BUSINESSDATE between '2017-06-20' and '2017-06-21' WITH UR;

select * from FSTJOURNALENTRY where BRANCH_ID='419' and BUSINESSDATE between '2017-06-20' and '2017-06-21' WITH UR;

select * from fsttotal where BRANCHID='406' WITH UR;

select * from fstdrawer where FSTORGKY=3008;

select * from fstopendrawer where fstdrawerky in (select fstdrawerky from fstdrawer where FSTORGKY=3008);







SELECT a0.ARCMessageKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.msgcontextdesc, a0.arclocalecdky, a0.msgcode, a0.translation, a0.arcsystemcontextky, 
a0.msgcategoryenum FROM ARCMessage a0 WHERE a0.msgcode in ('MBBHSOCode105','MBBHSOCode106');


select * from cororg 
select * from psoorg where cororgky=14854578

#MSG#  |2017-06-29 10:54:05,517|ramesh1||     UpdateDatabaseSqlExecutor.invokeExecutor(PersistencePeer peer, PersistenceStatement stmt, List objs)%|1|0|1 rows affected|Prepared: UPDATE PSOOrg SET versionStamp = ?, updateUser = ?, updateDttm = ?, engtitleenum = ?, hostbrnchcd = ?, subbrnchcd = ?, isbrnchcashtranopen = ?, brnchtyp = ?, bnmbrcode = ?, TCCMMSSN = ?, TCCMMSSNCURRKY = ?, noofusr = ?, iseodperfrmd = ?, orglocaltitleenum = ?, noofshfts = ?, csstyp = ?, localname = ?, strtngusrid = ?, boothid = ?, ipaddrss = ?, brnchopndt = ?, isklmain = ?, isnonspck = ?, engtitleother = ?, BRNCHCSHHLDNGLMTAMT = ?, BRNCHCSHHLDNGLMTAMTCURRKY = ?, issaftraexprd = ?, bnkngtyp = ?, entitytype = ?, servicelevel = ?, isuts = ?, brnchbusnssdt = ?, brnchclsdt = ?, localtitleother = ?, controllerid = ?, registerdttm = ? WHERE COROrgKy = ? AND versionStamp = ? (23, 'ramesh1', '2017-06-29 10:54:05.516', null:12, '1122', null:12, true, 1, null:12, 10.00, 147, null:4, true, null:12, null:4, 1, null:12, '', ' ', null:12, '2013-08-05 00:00:00.000', 0, 0, null:12, 0.00, 147, 1, 0, 'Branch', null:12, 0, '2017-06-29 00:00:00.000', '2013-08-04 00:00:00.000', null:12, null:12, null:93, 14854578, 22)

select * from MBBRVRSLXML where DATE(UPDATEDTTM)='2017-07-04' with ur;

SELECT * FROM FSTBASETRAN WHERE BUSINESSDATE ='2017-07-04' with ur;

SELECT * FROM PSOBASETRAN WHERE DATE(UPDATEDTTM)='2017-07-04' with ur;

select * from MBBSTOREFWDFILEINFO;
select * from MBBSTOREFWDUPLDDAT;


select * from ARCENUM where MSGCODE like 'MBBPayAtBr%';
select * from arcmessage where MSGCODE like 'MBBPayAtBr%';

select * from MBBAGENTINFRMTN;

select * from MBBMSTRTYPE;
select * from MBBMSTRPARAM;


INSERT INTO SONEDBA.MBBMSTRTYPE(MBBMSTRTYPEKY, TYPE, DESCRIPTION, PARENTTYPEKY, ISAMOUNT, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRTYPEKY),0) FROM SONEDBA.MBBMSTRTYPE) + 1,
 'REM_AGENT_CODES', 'Agent', 0, 'N',CURRENT TIMESTAMP, 'MBB', 'system',1);

  INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM,UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP)
 VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='REM_AGENT_CODES'),'FTT','','AUST & NEW ZEALAND BANK',10, CURRENT TIMESTAMP, 'MBB', 'system',1);


 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP)
 VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1,
 (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='REM_AGENT_CODES'), '	FTT	','		','	AUST & NEW ZEALAND BANK	',	10	, CURRENT TIMESTAMP, 'MBB', 'system',1);

 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP)
 VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='REM_AGENT_CODES'), 'FDD','1',"(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'AUD')",	20	, CURRENT TIMESTAMP, 'MBB', 'system',1);

 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='REM_AGENT_CODES'), '	FDD	','	2	','	BANK OF AMERICA MERRILL LYNCH	',	220	, CURRENT TIMESTAMP, 'MBB', 'system',1);



-- referece for agentcode insertion
INSERT INTO MBBAGENTINFRMTN
(MBBAGENTINFRMTNKY, AGENTNM, CURRENCYCD, AGENTCD, AGNTIND, CNTRY, DSCRPTN, DRFTTYP, PAYBRNCHCD, NOSTROACCOUNTNO, VOSTROACCOUNTNO, PLACE, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP) 
VALUES ((SELECT CAST(COALESCE(MAX(MBBAGENTINFRMTNKY),0)+1 AS INTEGER) FROM MBBAGENTINFRMTN), 
'AUST & NEW ZEALAND BANK', (SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'AUD'), 'ANZBAU3M', 'FDD', 'AU', NULL, 2, NULL, '115203', NULL, 'MELBOURNE', CURRENT TIMESTAMP,'system','MBB',1);

 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,DESCRIPTION4,DESCRIPTION5,
SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1,
 (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='REM_AGENT_CODES'), '	FDD	','	2	','	BANK OF AMERICA MERRILL LYNCH	',
(SELECT CAST(ARCISOCURRENCYCDKY AS INTEGER) FROM ARCISOCURRENCYCD WHERE TEXTCURRCD = 'AUD')	,'	US	','	NEW YORK	','	115104	','		',	220	, CURRENT TIMESTAMP, 'MBB', 'system',1);



SELECT * FROM ARCISOCURRENCYCD;


 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,DESCRIPTION4,DESCRIPTION5,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='REM_AGENT_CODES'), '	FTT	','		','	AUST & NEW ZEALAND BANK	','	AUD	','	AU	','	MELBOURNE	','	115203	','		',	10	, CURRENT TIMESTAMP, 'MBB', 'system',1);


  INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER,
 VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'),
 '	SVC	','	2	','	1	','	El Salvador Colon	',	220	, CURRENT TIMESTAMP, 'MBB', 'system',1);

INSERT INTO SONEDBA.MBBMSTRTYPE(MBBMSTRTYPEKY, TYPE, DESCRIPTION, PARENTTYPEKY, ISAMOUNT, UPDATESYSTEM, UPDATEUSER) VALUES((SELECT COALESCE(MAX(MBBMSTRTYPEKY),0)
 FROM MBBMSTRTYPE) + 1, 'REM_TT_CURRENCY_TYPE', 'Telegraphic Transfer Currency Type', (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'N', 'MBB', 'system');




 INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, EFFDATE2, STATUSFLAG, UPDATESYSTEM, UPDATEUSER,
 VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, 
(SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='AUD'
 AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT TIMESTAMP, 'MBB', 'system',1);


INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP)
 VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 
	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='AUD' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	,
 CURRENT DATE, '1','MBB', 'system',1);


INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM,
 UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1,
 (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), '	AUD	','	2	','	1	','	Australian Dollar	',	90	, CURRENT TIMESTAMP, 'MBB', 'system',1);

INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, EFFDATE2, STATUSFLAG, 
UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1,
 (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 
(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='	AUD	' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY')), 
CURRENT DATE, NULL, '1', 'MBB', 'system', 1);



--- pAY aT bRANCH


INSERT INTO SONEDBA.MBBMSTRTYPE(MBBMSTRTYPEKY, TYPE, DESCRIPTION, PARENTTYPEKY, ISAMOUNT, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRTYPEKY),0) FROM SONEDBA.MBBMSTRTYPE) + 1,
 'PAYMENT_AT_BRANCH', 'Payment At Branch', 0, 'N',CURRENT TIMESTAMP, 'MBB', 'system',1);
 
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	001	','	MAIN BRANCH	',	10	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	002	','	ROBINSON ROAD BRANCH	',	20	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	003	','	TAMPINES BRANCH	',	30	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	004	','	WOODLANDS BRANCH	',	40	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	005	','	Maybank@HDBHub BRANCH	',	50	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	006	','	BUKIT TIMAH BRANCH	',	60	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	007	','	JURONG POINT BRANCH	',	70	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	008	','	BALESTIER PLAZA BRANCH	',	80	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	009	','	NORTH BRIDGE ROAD BRANCH	',	90	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	010	','	ANG MO KIO BRANCH	',	100	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	011	','	CLEMENTI BRANCH	',	110	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	012	','	Maybank@nex BRANCH	',	120	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	013	','	BEDOK BRANCH	',	130	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	014	','	GEYLANG SERAI BRANCH	',	140	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	015	','	MARINE PARADE BRANCH	',	150	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	016	','	CHOA CHU KANG BRANCH	',	160	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	017	','	CHINATOWN BRANCH	',	170	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	018	','	HOLLAND VILLAGE BRANCH	',	180	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	019	','	JURONG EAST BRANCH	',	190	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	020	','	YISHUN BRANCH	',	200	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	021	','	TEXTILE CENTRE BRANCH	',	210	, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='PAYMENT_AT_BRANCH'), '	022	','	KOVAN BRANCH	',	220	, CURRENT TIMESTAMP, 'MBB', 'system',1);





-- cURRENCY


--Currency
--MBBMSTRTYPE

INSERT INTO SONEDBA.MBBMSTRTYPE(MBBMSTRTYPEKY, TYPE, DESCRIPTION, PARENTTYPEKY, ISAMOUNT, UPDATESYSTEM, UPDATEUSER) VALUES((SELECT COALESCE(MAX(MBBMSTRTYPEKY),0) FROM MBBMSTRTYPE) + 1, 'CURRENCY', 'Global Currency List', 0, 'N', 'MBB', 'system');
INSERT INTO SONEDBA.MBBMSTRTYPE(MBBMSTRTYPEKY, TYPE, DESCRIPTION, PARENTTYPEKY, ISAMOUNT, UPDATESYSTEM, UPDATEUSER) VALUES((SELECT COALESCE(MAX(MBBMSTRTYPEKY),0) FROM MBBMSTRTYPE) + 1, 'REM_TT_CURRENCY_TYPE', 'Telegraphic Transfer Currency Type', (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'N', 'MBB', 'system');
 
 
 --MBBMSTRPARAM

INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ADP','0','0','Andorran Peseta',10, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'AED','2','1','UAE Dirham',20, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'AFA','2','1','Afghanistan Afghani',30, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ALL','2','1','Albania Lek',40, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'AMD','2','1','Armenian Dram',50, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ANG','2','1','Netherlands Antillian Guilder',60, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'AOA','2','1','Angola Kwanza',70, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ARS','2','1','Argentine Peso',80, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'AUD','2','1','Australian Dollar',90, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'AWG','2','1','Aruban Guilder',100, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'AZM','2','1','Azerbaijanian Manat',110, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BAD','2','1','Bosnia',120, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BBD','2','1','Barbados Dollar',130, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BDT','2','1','Bangladesh Taka',140, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BGL','2','1','Bulgarian Lev (BGL variant)',150, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BGN','2','1','Bulgarian Lev (BGN variant)',160, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BHD','3','1','Bahraini Dinar',170, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BIF','0','1','Burundi Franc',180, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BMD','2','1','Bermuda Dollar',190, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BND','2','1','Brunei Dollar',200, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BOB','2','1','Bolivia Boliviano',210, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BOV','2','1','Bolivia Mvdol (funds code)',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BRL','2','1','Brazilian Real',230, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BSD','2','1','Bahamian Dollar',240, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BTN','2','1','Bhutan Ngultrum',250, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BWP','2','1','Botswana Pula',260, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BYB','0','1','Belarussian Ruble (BYB variant)',270, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BYR','0','1','Belarussian Ruble (BYR variant)',280, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'BZD','2','1','Belize Dollar',290, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CAD','2','1','Canadian Dollar',300, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CDF','2','1','Franc Congolais',310, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CHF','2','1','Swiss Franc',320, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CLF','2','1','Chile Unidades de formento',330, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CLP','2','1','Chilean Peso',340, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CNY','2','1','Yuan Renminbi',350, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'COP','2','1','Colombian Peso',360, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CRC','2','1','Costa Rican Colon',370, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CUP','2','1','Cuban Peso',380, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CVE','2','1','Cape Verde Escudo',390, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CYP','2','1','Cyprus Pound',400, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CZK','2','1','Czech Koruna',410, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'DJF','0','1','Djibouti Franc',420, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'DKK','2','1','Danish Krone',430, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'DOP','2','1','Dominican Peso',440, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'DZD','2','1','Algerian Dinar',450, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ECS','2','0','Equador Sucre',460, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ECV','2','1','Equador Unidad de Valor Constante (UVC) (funds code)',470, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'EEK','2','1','Estonia Kroon',480, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'EGP','2','1','Egyptian Pound',490, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ERN','2','1','Eritrea Nakfa',500, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ETB','2','1','Ethiopian Birr',510, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'EUR','2','1','European Union euro',520, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'FJD','2','1','Fiji Dollar',530, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'FKP','2','1','Falkland Islands Pound',540, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'FRF','2','0','French Franc',550, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'GBP','2','1','Pound Sterling',560, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'GEL','2','1','Georgia Lari',570, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'GHC','2','1','Ghana Cedi',580, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'GIP','2','1','Gibraltar Pound',590, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'GMD','2','1','Gambia Dalasi',600, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'GNF','0','1','Guinea Franc',610, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'GTQ','2','1','Guatemala Quetzal',620, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'GWP','2','1','Guinea-Bissau Peso',630, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'GYD','2','1','Guyana Dollar',640, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'HKD','2','1','Hong Kong Dollar',650, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'HNL','2','1','Honduras Lempira',660, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'HRK','2','1','Croatian Kuna',670, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'HTG','2','1','Haiti Gourde',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'HUF','2','1','Hungary Forint',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'IDR','0','1','Indonesia Rupiah',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ILS','2','1','New Israeli Sheqel',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'INR','2','1','Indian Rupee',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'IQD','3','1','Iraqi Dinar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'IRR','2','1','Iranian Rial',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ISK','2','1','Iceland Krona',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'JMD','2','1','Jamaican Dollar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'JOD','3','1','Jordanian Dinar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'JPY','0','1','Japan Yen',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'KES','2','1','Kenyan Shilling',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'KGS','2','1','Kyrgyzstan Som',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'KHR','2','1','Cambodia Riel',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'KMF','0','1','Comoro Franc',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'KPW','2','1','North Korean Won',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'KRW','0','1','Republic of Korea Won',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'KWD','3','1','Kuwaiti Dinar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'KYD','2','1','Cayman Islands Dollar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'KZT','2','1','Kazakhstan Tenge',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'LAK','2','1','Lao People''s Democratic Republic Kip',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'LBP','2','1','Lebanese Pound',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'LKR','2','1','Sri Lanka Rupee',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'LRD','2','1','Liberian Dollar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'LSL','2','1','Lesotho Loti',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'LTL','2','1','Lithuanian Litus',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'LVL','2','1','Latvian Lats',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'LYD','3','1','Libyan Dinar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MAD','2','1','Moroccan Dirham',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MDL','2','1','Moldovan Leu',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MGF','0','1','Malagasy Franc',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MKD','2','1','Macedonia Denar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MMK','2','1','Myanmar Kyat',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MNT','2','1','Mongolia Tugrik',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MOP','2','1','Macau Pataca',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MRO','2','1','Mauritania Ouguiya',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MTL','2','1','Maltese Lira',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MUR','2','1','Mauritius Rupee',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MVR','2','1','Maldives Rufiyaa',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MWK','2','1','Malawi Kwacha',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MXN','2','1','Mexican Peso',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MXV','2','1','Mexican Unidad de Inversion (UDI)',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MYR','2','1','Malaysian Ringgit',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'MZM','2','1','Mozambique Metical',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'NAD','2','1','Namibia Dollar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'NGN','2','1','Nigeria Naira',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'NIO','2','1','Cordoba Oro',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'NOK','2','1','Norwegian Krone',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'NPR','2','1','Nepalese Rupee',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'NZD','2','1','New Zealand Dollar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'OMR','3','1','Rial Omani',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'PAB','2','1','Panama Balboa',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'PEN','2','1','Peru Nuevo Sol',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'PGK','2','1','Papua New Guinea Kina',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'PHP','2','1','Phillipine Peso',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'PKR','2','1','Pakistan Rupee',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'PLN','2','1','Poland Zloty',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'PYG','0','1','Paraguay Guarani',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'QAR','2','1','Qatari Rial',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ROL','2','1','Romania Leu',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'RUB','2','1','Russian Ruble (RUB variant)',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'RUR','2','1','Russian Ruble (RUR variant)',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'RWF','0','1','Rwanda Franc',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SAR','2','1','Saudi Riyal',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SBD','2','1','Solomon Islands Dollar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SCR','2','1','Seychelles Rupee',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SDD','2','1','Sudanese Dinar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SEK','2','1','Swedish Krona',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SGD','2','1','Singapore Dollar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SHP','2','1','Saint Helena Pound',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SIT','2','1','Slovenia Tolar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SKK','2','1','Slovak Koruna',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SLL','2','1','Sierra Leone Leone',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SOS','2','1','Somali Shilling',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SRG','2','1','Suriname Guilder',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'STD','2','1','Sao Tome and Principe Dobra',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SVC','2','1','El Salvador Colon',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SYP','2','1','Syrian Pound',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'SZL','2','1','Swaziland Lilangeni',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'THB','2','1','Thailand Baht',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TJR','0','1','Tajik Ruble',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TMM','2','1','Turkmenistan Manat',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TND','3','1','Tunisian Dinar',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TOP','2','1','Tonga Pa''anga',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TPE','0','1','Timor Escudo',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TRL','2','0','Turkish Lira',220, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TRY','0','1','New Turkish Lira',221, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TTD','2','1','Trinidad and Tobago Dollar',222, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TWD','2','1','New Taiwan Dollar',223, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'TZS','2','1','Tanzanian Shilling',224, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'UAH','2','1','Ukraine Hryvnia',225, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'UGX','0','1','Uganda Shilling',226, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'USD','2','1','US Dollar',227, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'USN','2','1','US (next day funds code)',228, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'USS','2','1','US (same day funds code)',229, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'UYU','2','1','Peso Uruguayo',230, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'UZS','2','1','Uzbekistan Sum',231, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'VEB','2','1','Venezuela Bolivar',232, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'VND','2','1','Vietnam Dong',233, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'VUV','0','1','Vanuatu Vatu',234, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'WST','2','1','Samoa Tala',235, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XAF','0','1','CFA Franc BEAC',236, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XAG','0','1','Silver',237, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XAU','0','1','Gold',238, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XB5','0','1','European Unit of Account 17 (EUA-17)',239, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XBA','0','1','European Composite Unit (EURCO)',240, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XBB','0','1','European Monetary Unit (EMU-6)',241, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XBC','0','1','European Unit of Account 9 (EUA-9)',242, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XCD','2','1','East Caribbean Dollar',243, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XDR','0','1','International Monetary Fund SDR',244, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XFO','0','1','Gold-Franc',245, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XFU','0','1','UIC-Franc',246, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XOF','0','1','CFA Franc BCEAO',247, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XPD','0','1','Palladium',248, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XPF','0','1','CFP Franc',249, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XPT','0','1','Platinum',250, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XTS','0','1','Test Code',251, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'XXX','0','1','No Currency Transactions',252, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'YER','2','1','Yemeni Rial',253, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'YUM','2','1','Yugoslavian Dinar',254, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ZAR','2','1','South Africa Rand',255, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ZMK','2','1','Zambia Kwacha',256, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'ZWD','2','1','Zimbabwe Dollar',257, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'CNH','2','1','Chinese Rmb Offshore',258, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'FIM','2','1','Finnish markka',259, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'IEP','2','1','Irish pound',260, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'LUF','2','1','Luxembourgish franc',261, CURRENT TIMESTAMP, 'MBB', 'system',1);
 INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,SEQUENCEORDER, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, (SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='CURRENCY'), 'PTE','2','1','Portuguese escudo',262, CURRENT TIMESTAMP, 'MBB', 'system',1);


 -- MBBMSTRPARAMASSIGNED
 
 INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='AUD' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='BND' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='CAD' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='CHF' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='CNH' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='CNY' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='DKK' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='EUR' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='FIM' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='GBP' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='HKD' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='IDR' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='IEP' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='INR' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='JPY' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='LUF' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='MYR' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='NOK' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='NZD' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='PGK' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='PTE' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='SEK' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='SGD' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='THB' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);
INSERT INTO SONEDBA.MBBMSTRPARAMASSIGNED(MBBMSTRPARAMASSIGNEDKY, MBBMSTRTYPEKY, MBBMSTRPARAMKY, EFFDATE1, STATUSFLAG, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES ((SELECT COALESCE(MAX(MBBMSTRPARAMASSIGNEDKY),0) FROM MBBMSTRPARAMASSIGNED) + 1, (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='REM_TT_CURRENCY_TYPE'), 	(SELECT MBBMSTRPARAMKY FROM MBBMSTRPARAM WHERE PARAMCODE='USD' AND MBBMSTRTYPEKY = (SELECT MBBMSTRTYPEKY FROM MBBMSTRTYPE WHERE TYPE='CURRENCY'))	, CURRENT DATE,'1', 'MBB', 'system',1);

-----

-- AGENT CODES :MBBMSTRTYPE
-- AGENT CODES :MBBMSTRTYPE
  INSERT INTO SONEDBA.MBBMSTRTYPE(MBBMSTRTYPEKY, TYPE, DESCRIPTION, PARENTTYPEKY, ISAMOUNT, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRTYPEKY),0) FROM SONEDBA.MBBMSTRTYPE) + 1,
 'REM_FTT_AGENT_CODES', 'Agent Codes for FTT', 0, 'N',CURRENT TIMESTAMP, 'MBB', 'system',1);
 
  INSERT INTO SONEDBA.MBBMSTRTYPE(MBBMSTRTYPEKY, TYPE, DESCRIPTION, PARENTTYPEKY, ISAMOUNT, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRTYPEKY),0) FROM SONEDBA.MBBMSTRTYPE) + 1,
 'REM_FDD_AGENT_CODES_MBB', 'Agent Codes for FDD MBB Draft', 0, 'N',CURRENT TIMESTAMP, 'MBB', 'system',1);
 
 INSERT INTO SONEDBA.MBBMSTRTYPE(MBBMSTRTYPEKY, TYPE, DESCRIPTION, PARENTTYPEKY, ISAMOUNT, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRTYPEKY),0) FROM SONEDBA.MBBMSTRTYPE) + 1,
 'REM_FDD_AGENT_CODES_AGENT', 'Agent Codes for FDD Agent Draft', 0, 'N',CURRENT TIMESTAMP, 'MBB', 'system',1);
 
 INSERT INTO SONEDBA.MBBMSTRTYPE(MBBMSTRTYPEKY, TYPE, DESCRIPTION, PARENTTYPEKY, ISAMOUNT, UPDATEDTTM, UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRTYPEKY),0) FROM SONEDBA.MBBMSTRTYPE) + 1,
 'REM_FDD_AGENT_CODES_CRS', 'Agent Codes for FDD CRS Draft', 0, 'N',CURRENT TIMESTAMP, 'MBB', 'system',1);
 
 --MBBMSTRPARAM
 
   	
 


-- supervisers checking
select * from VWPSOOVERRIDEUSERS;

select A.Name as userName , A.ARCPRINCIPALKY as tellerky, B.Name as groupName, B.ARCPRINCIPALKY as groupky from 
(select grp.ARCPRINCIPALKY usracrplky , grp.ARCPRINCIPALKYGRP grparcplky  from ARCPRINCIPALGRP grp ) gropInfo ,
ARCPRINCIPAL A, ARCPRINCIPAL B
where  gropInfo.usracrplky = A.ARCPRINCIPALKY  and gropInfo.grparcplky = B.ARCPRINCIPALKY  and B.Name='MGR-BROP-SM1' order by userName   with ur
 


select * from VWMBBFDPLCMNTTRAN;
select * from VWMBBCSHDPSTTRAN;
select * from VWMBBTDINSTCRTNTRAN;


CREATE ALIAS ETDBLIU.VWMBBFDPLCMNTTRAN FOR SONEDBA.VWMBBFDPLCMNTTRAN;

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE VWMBBFDPLCMNTTRAN TO USER ETDBLIU;

REORG TABLE VWMBBFDPLCMNTTRAN;

COMMIT WORK;


CREATE ALIAS ETDBLIU.VWMBBCSHDPSTTRAN FOR SONEDBA.VWMBBCSHDPSTTRAN;

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE VWMBBCSHDPSTTRAN TO USER ETDBLIU;

REORG TABLE VWMBBCSHDPSTTRAN;

COMMIT WORK;


CREATE ALIAS ETDBLIU.VWMBBTDINSTCRTNTRAN FOR SONEDBA.VWMBBTDINSTCRTNTRAN;

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE VWMBBTDINSTCRTNTRAN TO USER ETDBLIU;

REORG TABLE VWMBBTDINSTCRTNTRAN;

COMMIT WORK;



select * from psoorg


SELECt * FROM ARCOPERATION WHERE NAME = 'FN_MBB_SUOFCATRX';

SELECT * FROM ARCGRANT WHERE ARCOPERATIONKY = 243;

select * from fstdrawer where drawerid in (779842207,800142212,800142213,779842208,800142214,800142228) with ur;

select * from fstopendrawer where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid in (779842207,800142212,800142213,779842208,800142214,800142228)) with ur;

select * from FSTJOURNALENTRY where op_id = 'BKTEYY' with ur;

select * from fsttotal where opid='BKTEYY' with ur;


select * from fstopendrawer where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid in (810142215, 820142215)) with ur;
SELECT * FROM PSOPRINCIPAL WHERE ARCPRINCIPALKY = (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='BKTEYY');


SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='ramesh1';

SELECT * FROM PSOPRINCIPAL WHERE ARCPRINCIPALKY=104052

select * from CORAUDIT
update FSTOPENDRAWER set isopen='1' where fstopendrawerky in (3086078,3085664);

select * from FSTOPENDRAWER where fstopendrawerky in (3086078,3085664);

update FSTOPENDRAWER set UPDATEDTTM =current timestamp - 1 day where fstopendrawerky in (3086078,3085664);

select * from fstdrawer where drawerid in(779842207,779842208);

update fstdrawer set isopen='1' where drawerid in(3085872,779842208);

select * from FSTOPENDRAWER where fstopendrawerky in (3085872,3085873);

update FSTOPENDRAWER set BUSINESSDATE=current date, isopen='1' where fstopendrawerky in (5002,3085872,3085873);




update FSTOPENDRAWER set UPDATEDTTM= current timestamp - 2 day , isopen='0' where fstopendrawerky in (3086078,3085664,3085665,3086079);



--BEFORE UPDATE--
--CHECK FOR Table BEFORE UPDATE TABLE
SELECT * FROM ARCENUM WHERE MSGCODE = 'MBBHpPrdML';

-- Update --
update ARCENUM set category = 'MBBHpApPrdEnum' where msgcode = 'MBBHpPrdML';
update ARCENUM set fetchid = 'hpApPrdEnum' where msgcode = 'MBBHpPrdML';


--AFTER UPDATE--
SELECT * FROM ARCENUM WHERE MSGCODE = 'MBBHpPrdML';





-- Loading new GLs in ARCENUM --
INSERT INTO SONEDBA.ARCENUM(ARCENUMKY, ARCSYSTEMCONTEXTKY, MSGCODE, CATEGORY, ENUMVALUE, ENUMTYPEENUM, RANKING, LINK, FETCHID, ISONEONLY, ISREMOVABLE, EXTREFCODE, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP)
  VALUES((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM), NULL, 'MBBGLCode072', 'GL1Enum', 72, 'ARCEnTyTreeLf', 72, NULL, 'GL1Enum', '0', '1', NULL, CURRENT TIMESTAMP, 'system', 'MBB', 1);

INSERT INTO SONEDBA.ARCENUM(ARCENUMKY, ARCSYSTEMCONTEXTKY, MSGCODE, CATEGORY, ENUMVALUE, ENUMTYPEENUM, RANKING, LINK, FETCHID, ISONEONLY, ISREMOVABLE, EXTREFCODE, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP)
  VALUES((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM), NULL, 'MBBGLCode265', 'GL1Enum', 264, 'ARCEnTyTreeLf', 264, NULL, 'GL1Enum', '0', '1', NULL, CURRENT TIMESTAMP, 'system', 'MBB', 1);

INSERT INTO SONEDBA.ARCENUM(ARCENUMKY, ARCSYSTEMCONTEXTKY, MSGCODE, CATEGORY, ENUMVALUE, ENUMTYPEENUM, RANKING, LINK, FETCHID, ISONEONLY, ISREMOVABLE, EXTREFCODE, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP)
  VALUES((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM), NULL, 'MBBGLCode077', 'GL1Enum', 77, 'ARCEnTyTreeLf', 77, NULL, 'GL1Enum', '0', '1', NULL, CURRENT TIMESTAMP, 'system', 'MBB', 1);  

INSERT INTO SONEDBA.ARCENUM(ARCENUMKY, ARCSYSTEMCONTEXTKY, MSGCODE, CATEGORY, ENUMVALUE, ENUMTYPEENUM, RANKING, LINK, FETCHID, ISONEONLY, ISREMOVABLE, EXTREFCODE, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP)
  VALUES((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM), NULL, 'MBBGLCode074', 'GL1Enum', 74, 'ARCEnTyTreeLf', 74, NULL, 'GL1Enum', '0', '1', NULL, CURRENT TIMESTAMP, 'system', 'MBB', 1);
 

-- Loading the new GLs in ARCMESSAGE -- 
  INSERT INTO SONEDBA.ARCMESSAGE(ARCMESSAGEKY, ARCLOCALECDKY, ARCSYSTEMCONTEXTKY, MSGCODE, TRANSLATION, MSGCATEGORYENUM, MSGCONTEXTDESC, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP)
  VALUES((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE), 1, NULL, 'MBBGLCode072', '511300 INTEREST ON FIXED DEPOSITS', 'ARCMsgEnum', NULL, CURRENT TIMESTAMP, 'system', 'MBB', 1);
  
INSERT INTO SONEDBA.ARCMESSAGE(ARCMESSAGEKY, ARCLOCALECDKY, ARCSYSTEMCONTEXTKY, MSGCODE, TRANSLATION, MSGCATEGORYENUM, MSGCONTEXTDESC, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP)
  VALUES((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE), 1, NULL, 'MBBGLCode265', '850015 DIVIDEND EXPENSE - TD-I', 'ARCMsgEnum', NULL, CURRENT TIMESTAMP, 'system', 'MBB', 1);

INSERT INTO SONEDBA.ARCMESSAGE(ARCMESSAGEKY, ARCLOCALECDKY, ARCSYSTEMCONTEXTKY, MSGCODE, TRANSLATION, MSGCATEGORYENUM, MSGCONTEXTDESC, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP)
  VALUES((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE), 1, NULL, 'MBBGLCode077', '511850 INTEREST ON TIME DEPOSITS - PCD', 'ARCMsgEnum', NULL, CURRENT TIMESTAMP, 'system', 'MBB', 1);

INSERT INTO SONEDBA.ARCMESSAGE(ARCMESSAGEKY, ARCLOCALECDKY, ARCSYSTEMCONTEXTKY, MSGCODE, TRANSLATION, MSGCATEGORYENUM, MSGCONTEXTDESC, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP)
  VALUES((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE), 1, NULL, 'MBBGLCode074', '511351 INTEREST ON TIME DEPOSITS - PPD', 'ARCMsgEnum', NULL, CURRENT TIMESTAMP, 'system', 'MBB', 1);






update FSTOPENDRAWER set isopen='0' where fstopendrawerky in (3088691,3088693,3089150,3089151);





select * from FSTJOURNALENTRY where BRANCH_ID='418' and BUSINESSDATE='2017-12-08' with ur;


select * from fsttotal where BRANCHID='421' with ur;

select * from FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=810142115) with ur;


select * from fstdrawer where drawerid = 404040;
update fstdrawer set ISOPEN='0' where drawerid = 404040;

select * from fstopendrawer where fstdrawerky =63004;

update fstopendrawer set isopen='0' where fstdrawerky =63004;



select * from FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=776242107) with ur;


select * from FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid=776242108,810142115,810142115) with ur;

SELECT ARCPRINCIPAL.NAME, ARCTARGET.NAME, FSTDRAWER.CURRENCY, FSTDRAWER.DESCRIPTION, FSTDRAWER.TYPE  
FROM ARCGRANT 
JOIN ARCTARGET ON ARCGRANT.ARCTARGETKY = ARCTARGET.ARCTARGETKY 
JOIN ARCPRINCIPAL ON ARCGRANT.ARCPRINCIPALKY =  ARCPRINCIPAL.ARCPRINCIPALKY
JOIN ARCTARGETTYPE ON ARCTARGET.ARCTARGETTYPEKY = ARCTARGETTYPE.ARCTARGETTYPEKY
JOIN FSTDRAWER ON ARCTARGET.NAME = cast(FSTDRAWER.DRAWERID as char(64))
WHERE ARCTARGETTYPE.NAME = 'DRAWER' AND ARCPRINCIPAL.NAME = 'TCYTYL'
FOR READ ONLY WITH UR;



SELECT * FROM MBBDRAWER A0 JOIN FSTDRAWER A1 ON A0.FSTDRAWERKY =A1.FSTDRAWERKY AND A1.TYPE=20;



--Check the entitlement
select * from ARCPRINCIPAL where NAME='OFF-BR-CO-O2' for read only with ur

select  * from ARCOPERATION where ARCOPERATIONKY in  
(select ARCOPERATIONKY from ARCGRANT where arcprincipalky=37558)  for read only with ur

////172.17.1.158  - LI UAT
etdbliu/1qaz2wsx
DB2
DB2

connect to SGETLIUT

set schema SONEDBA

EXPORT TO U17BS04usergroup1.csv OF DEL MODIFIED BY NOCHARDEL select userid, groupname from (select arcprincipal.name userid, group.name groupname 
from fstprincipal fstprincipal inner join arcprincipal arcprincipal on fstprincipal.arcprincipalky = arcprincipal.arcprincipalky 
and arcprincipal.name = 'U17BS04' 
inner join arcprincipalgrp arcprincipalgrp on fstprincipal.arcprincipalky = arcprincipalgrp.arcprincipalky 
inner join arcprincipal group on arcprincipalgrp.arcprincipalkygrp = group.arcprincipalky 
order by arcprincipal.name, group.name) for read only with ur;
;


EXPORT TO resultFstorg440.csv OF DEL MODIFIED BY NOCHARDEL select * from fstorg where iD=440;
EXPORT TO resultFstorg.csv OF DEL MODIFIED BY NOCHARDEL select * from fstorg where id in (413,440,406);

EXPORT TO arcOperationclkbrop.csv OF DEL MODIFIED BY NOCHARDEL  select * from ARCPRINCIPAL where NAME='CLK-BROP-CS1' for read only with ur

EXPORT TO resultFstorg440.csv OF DEL MODIFIED BY NOCHARDEL select  * from ARCOPERATION where ARCOPERATIONKY in  (select ARCOPERATIONKY from ARCGRANT where arcprincipalky=54)  for read only with ur




----------------------------
-- Negotioble items
SELECT * FROM FSTDRAWER WHERE DRAWERID= 800100114;

SELECT a0.FSTInventoryKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.srlnolength, a0.fstdrawerky, a0.isbalanced, a0.fstforexarticleky, a0.startingserialnr, a0.itemtype,
 a0.prfxstrng, a0.endingserialnr FROM FSTInventory a0 WHERE ((((((((((((a0.fstforexarticleky = 13005) AND (a0.fstdrawerky = 114979))) AND (a0.itemtype = 'MBBNegType05'))) AND (a0.prfxstrng IS NULL)))
 AND (a0.srlnolength = 9))) AND (a0.startingserialnr <= 192011231))) AND (a0.endingserialnr >= 192011231)) 

SELECT a0.FSTInventoryKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.srlnolength, a0.fstdrawerky, a0.isbalanced, a0.fstforexarticleky, a0.startingserialnr, a0.itemtype,
 a0.prfxstrng, a0.endingserialnr FROM FSTInventory a0 WHERE a0.fstdrawerky = 115000;



SELECT * FROM FSTInventory WHERE UPDATEUSER='U32BS01';
-------------------
-- PayAtBranch-

select * from ARCMESSAGE where MSGCODE LIKE 'MBBPayAtBr%'

----------

--hostsupervisormsg- tran
select * from ARCMESSAGE where MSGCODE LIKE 'MBBHSOCode%'


--- CASH in/ out Counter Denominations in TAM
--------------------
select * from FSTCashTemplate where CURRENCY='BND';

INSERT INTO FSTCashTemplate (FSTCashTemplateKy, versionStamp, updateUser, updateDttm, currency, description, order, templatetype, unit) VALUES 
 (526, 1, 'Admin', '2018-06-22 10:30:15.391', 'BND', '1 Cent Coin', 1, 1, 0.01);

------------------

select * from FSTJOURNALENTRY where BRANCH_ID='418' and BUSINESSDATE='2017-12-08' with ur;



-----------transleg info-

select * from PSOTRANSLEGINFO


-- negotiable items - insert
------------
SELECT * FROM FSTDRAWER WHERE DRAWERID= 800100114;

SELECT a0.FSTInventoryKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.srlnolength, a0.fstdrawerky, a0.isbalanced, a0.fstforexarticleky, a0.startingserialnr, a0.itemtype,
 a0.prfxstrng, a0.endingserialnr FROM FSTInventory a0 WHERE ((((((((((((a0.fstforexarticleky = 13005) AND (a0.fstdrawerky = 114979))) AND (a0.itemtype = 'MBBNegType05'))) AND (a0.prfxstrng IS NULL)))
 AND (a0.srlnolength = 9))) AND (a0.startingserialnr <= 192011231))) AND (a0.endingserialnr >= 192011231)) 

SELECT a0.FSTInventoryKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.srlnolength, a0.fstdrawerky, a0.isbalanced, a0.fstforexarticleky, a0.startingserialnr, a0.itemtype,
 a0.prfxstrng, a0.endingserialnr FROM FSTInventory a0 WHERE a0.fstdrawerky = 115000;


-----

INSERT INTO FSTForexArticle (FSTForexArticleKY, versionStamp, updateUser, updateDttm, buyinglimit, buyingrate, description, sellingfee, cororgky, code, factor, buyingfee, sellinglimit, buyingdisabled, itemtype, minvalue, mininventorylimit, sellingrate, pricequotation, sellingdisabled) VALUES
 (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) (5003, 1, 'Admin', '2018-06-26 17:14:28.301', null:3, 1.000000, 'MBBCO SUBSI', null:3, 14862581, 'MBBCO', 1.00, null:3, null:3, false, 'MBBNegType02', null:3, null:2, 1.000000, false, false)


SELECT * FROM FSTForexArticle WHERE CORORGKY in (SELECT CORORGKY FROM CORORG WHERE NAME in ('Default Affiliate','Maybank Singapore'));

select * from FSTISSUERCODE;
update FSTForexArticle set CORORGKY =(SELECT CORORGKY FROM CORORG WHERE NAME='Maybank Singapore Subsidary') WHERE 
CORORGKY  in (SELECT CORORGKY FROM CORORG WHERE NAME in ('Default Affiliate','Maybank Singapore');
SELECT * FROM CORORG WHERE CORORGKY in (14862580,14862581);


-- ISSUEER CODE
INSERT INTO FSTIssuerCode (FSTIssuerCodeKY, versionStamp, updateUser, updateDttm, cororgky, code, itemtype, description) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
 (3005, 1, 'Admin', '2018-06-28 13:36:30.574', 14862581, 'MBBCOS', 'MBBNegType02', 'MBBCOSUB');

SELECT * FROM FSTISSUERCODE


UPDATE FSTISSUERCODE SET CORORGKY =(SELECT CORORGKY FROM CORORG WHERE NAME='Maybank Singapore Subsidary') WHERE 
CORORGKY in (SELECT CORORGKY FROM CORORG WHERE NAME in('Default Affiliate','Maybank Singapore');


----------- outward ftt and mepts transaction--------

SELECT a0.FSTBASETRANKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.exchgrate, a0.cracctno, a0.dbtamount, a0.grpno, a0.issuancedate, a0.drw, a0.transactionname,
 a0.producttyp, a0.applicantname, a0.curr, a0.agentcode, a0.payeename, a0.serial, a0.qty, a0.benefname, a0.amount, a0.trandate, a0.icno, a0.dbtcurr, a0.branchid
 FROM VWMBBRMTOUTWRDTRAN a0 WHERE a0.transactionname = 'MBBSGOutwardFTTTX' AND a0.producttyp = '2' AND a0.branchid = '433' AND (a0.trandate > ?))) AND (a0.trandate < ?))
 ('MBBSGOutwardFTTTX', '2', '433', '2018-06-27 00:00:00.000', '2018-06-27 16:41:21.449')



----- UPDATING THE DATA FIELD LENGHT FOR COLUMN-

ALTER TABLE MBBRMTINWARDTRAN ALTER COLUMN BRNCHNM SET DATA TYPE VARCHAR(32);


----Outward Transactions data

select * from FSTJOURNALENTRY where tx_name like '%FDD%' AND MESSAGE like '%Type: MBB%' AND BUSINESSDATE >  '2018-05-20';
select * from FSTJOURNALENTRY where tx_name like '%FDD%' AND MESSAGE like '%Type: Agent%' AND BUSINESSDATE >  '2018-05-20';


SELECT * FROM MBBRMTOUTWRDTRAN

---------- store and forward date based ---

select * from MBBSTOREFWDFILEINFO where BUSSINDATE between '2023-01-31' and '2023-02-01';
select * from MBBSTOREFWDUPLDDAT where DATE(UPDATEDTTM) = '2018-07-03' and DATE(UPDATEDTTM) = '2018-07-03';

delete from MBBSTOREFWDFILEINFO where BUSSINDATE between '2018-07-03' and '2018-07-03';
delete from MBBSTOREFWDUPLDDAT where DATE(UPDATEDTTM) = '2018-07-03' and DATE(UPDATEDTTM) = '2018-07-03';






select * from MBBSTOREFWDFILEINFO where BUSSINDATE ='2018-05-02';
select * from MBBSTOREFWDUPLDDAT where MBBSTOREFWDFILEINFOKY in (7312);




















select * from MBBSTOREFWDFILEINFO where BUSSINDATE ='2018-05-02';
select * from MBBSTOREFWDUPLDDAT where DATE(UPDATEDTTM) = '2018-07-10';


delete from MBBSTOREFWDUPLDDAT where DATE(UPDATEDTTM) = '2018-07-10';
delete from MBBSTOREFWDFILEINFO where BUSSINDATE ='2018-05-02';























------------BRANCH ISERTION QUERIES -

select * from cororg

14862579


select * from cororgorg where cororgky2=14863080

INSERT INTO COROrgOrg (COROrgOrgKy, versionStamp, updateUser, updateDttm, cororgkyfi, enddttm, ranking, cororgky2, cororgky1, percentage, startdttm,
 orgorgtypeenum) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) (10509, 1, 'Admin', '2018-07-10 11:47:09.892', null:-5, null:93, null:4,
 14863080, 14862579, null:4, null:93, 'COROrRlTyPrnt');

INSERT INTO COROrg (COROrgKy, versionStamp, updateUser, updateDttm, isprospect, arcprincipalky, taxid, orgimprtnceenum, cororgkyfi, issupplier, isworkgroup,
 orgstatusenum, name, orgtypeenum, industrycdenum) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) (14863080, 1, 'Admin', '2018-07-10 11:47:08.164', false,
 null:-5, null:12, null:12, 1,
 false, false, 'COROrgStaAct', 'Testing Maybank Singapore', 'COROrgTypOffc', null:12);



INSERT INTO CORFiIdentity (CORFIIdentityKy, versionStamp, updateUser, updateDttm, cororgky, fiidtypeenum, fiid)
 VALUES (?, ?, ?, ?, ?, ?, ?) (12025, 1, 'Admin', '2018-07-10 11:47:08.207', 14863080, 'FSTFiIdBranch', '999');


INSERT INTO CORPhysAddr (CORPhysAddrKy, versionStamp, updateUser, updateDttm, description, county, cororgky, arccountrycdky, city, dwellingunit, cororgkyfi, addressline1, addressline2, addressline3, boxnbr,
 physaddrtypeenum, arcstatecdky, postcode, addrstatusenum, contactrule, township, corpersonky, ispreferred) VALUES 
(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) 
(63441214, 1, 'Admin', '2018-07-10 11:47:09.746', null:12, null:12, 14863080, null:-5, null:12, null:12, 1, null:12, null:12, 
null:12, null:12, null:12, null:-5, '345345', 'CORAddrStActv', null:12, null:12, null:-5, true);



INSERT INTO CORPhone (CORPhoneKy, versionStamp, updateUser, updateDttm, issmsenabled, isbusiness, usagehoursenum, description, cororgky,
 cororgkyfi, extension, phonetypeenum, phonestatusenum, nbr, countrycd, areacitycd, phonelocationenum, corpersonky, ispreferred) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) (41148998, 1, 'Admin', '2018-07-10 11:47:09.802', false, false, null:12, null:12, 14863080, 1, null:12,
 'CORCommFax', 'CORPhonStActv', null:12, null:12, null:12, null:12, null:-5, true)


INSERT INTO CORElecAddr (CORElecAddrKy, versionStamp, updateUser, updateDttm, elecaddrstsenum, elecaddrtypeenum, description, address, corpersonky, 
cororgkyfi, cororgky, ispreferred) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) 
(40256704, 1, 'Admin', '2018-07-10 11:47:09.851', 'COREAdrStActv', 'CORCommEma', null:12, null:12, null:-5, 1, 14863080, true)


INSERT INTO PSOOrg (COROrgKy, versionStamp, updateUser, updateDttm, engtitleenum, hostbrnchcd, subbrnchcd, isbrnchcashtranopen, brnchtyp, bnmbrcode, TCCMMSSN,
 TCCMMSSNCURRKY, noofusr, iseodperfrmd, orglocaltitleenum, noofshfts, csstyp, localname, strtngusrid, boothid, ipaddrss, brnchopndt, isklmain, isnonspck,
 engtitleother, BRNCHCSHHLDNGLMTAMT, BRNCHCSHHLDNGLMTAMTCURRKY, issaftraexprd, bnkngtyp, entitytype, servicelevel, isuts, brnchbusnssdt, brnchclsdt, localtitleother, controllerid, registerdttm) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) (14863080, 1, 'Admin', '2018-07-10 11:47:10.063', null:12, '999', '001', false, 1, null:12, 10, 147, null:4, false, null:12, null:4, 1,
 null:12, '', '', null:12, null:93, 0, 0, null:12, 0, 147, 1, 0, 'Branch', null:12, 0, null:93, null:93, null:12, null:12, null:93)


select * from CORFiIdentity;

------- REMOVE THE PERSON DELETE IN DB --
select * from ARCPRINCIPAL where name='R48CS01';


DELETE from ARCPRINCIPAL where name='R48CS01';

DELETE FROM PSOPRINCIPAL WHERE ARCPRINCIPALKY =108063;
DELETE FROM CORPERSON WHERE ARCPRINCIPALKY =108063;
SELECT * FROM CORPERSON WHERE ARCPRINCIPALKY =108063;
SELECT * FROM COREMPLOYEE WHERE CORPERSONKY=85019;
DELETE FROM COREMPLOYEE WHERE CORPERSONKY=85019;
SELECT * FROM PSOPERSON WHERE CORPERSONKY=85015;
DELETE  FROM PSOPERSON WHERE CORPERSONKY=85019;
DELETE FROM ARCGRANT WHERE ARCPRINCIPALKY =108063

SELECT * FROM ARCIDENTITY WHERE ARCPRINCIPALKY=108063
DELETE FROM ARCIDENTITY WHERE ARCPRINCIPALKY=108063


SELECT * FROM ARCUSERAUTHNTICN WHERE ARCIDENTITYKY=93024;

DELETE FROM ARCUSERAUTHNTICN WHERE ARCIDENTITYKY=93024;
----------------------------------------------------------------



--- Cash with drawal -atm pb limit checking -
select * from ARCCONFIGURATION where PROPERTYNAME = 'lcWithdrawalLimit';

update ARCCONFIGURATION set PROPERTYVALUE=7000000 where PROPERTYNAME = 'lcWithdrawalLimit';


----------- angent codes for branches--

BRANCH - Changes
  AGENTCD     
 ----------- 
 ANZBAU3M    
 BKKBTHBK    
 BKNZNZ22    
 BOFAUS3N    
 CHASUS33    
 DEUTDEFF    
 ICBKSGSGCLR 
 MBBEGB2L    
 MBBEHKHH    
 SMBCJPJT    
 UBSWCHZH 



----------- to find the remittance group no for outward ftt - Message field
select * from FSTJOURNALENTRY where TX_NAME='MBBSGOutwardFTTTX' AND branch_id = '432' order by datetime desc
s


SELECT * FROM FSTDRAWER WHERE DRAWERID=7777777777;

SELECT * FROM MBBDRAWER WHERE DRAWERID=7777777777;

SELECT * FROM FSTDRAWERCOMPMNT WHERE FSTDRAWERKY=7777777777

select * from ARCGROUP;

SELECT * FROM PSOPRINCIPAL



------- branches - userids - groups
select APL.NAME,PP.HOSTUSERID,APL1.NAME as GROUP from ARCPRINCIPAL APL, ARCPRINCIPALGRP AGP, ARCPRINCIPAL APL1,PSOPRINCIPAL PP
WHERE APL.ARCPRINCIPALKY = AGP.ARCPRINCIPALKY
and  AGP.ARCPRINCIPALKYGRP = APL1.ARCPRINCIPALKY
AND APL.ARCPRINCIPALKY = PP.ARCPRINCIPALKY
AND APL.NAME 
IN (SELECT APK1.Name as Name1 from ARCPRINCIPAL APK1
WHERE APK1.ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM FSTPRINCIPAL WHERE CORORGKY  in (select CORORGKY from fstorg where id=133))) order by APL.NAME asc;


---- Update the affiliate based on the branch
update CORORGORG set CORORGKY1 =(SELECT CORORGKY FROM CORORG where NAME in ('Maybank Singapore Branch')) where 
CORORGKY2 in (SELECT CORORGKY FROM CORORG where NAME in ('Branch-Maytower','Branch-HDBHUB')) 


-----------tau REJECTED DENOMINATIONS-

SELECT * FROM ARCCONFIGURATION where PROPERTYNAME like ('tauRejectdenominaions%');

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions133', '5,2', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions401', '5,2', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions402', '5,2', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions403', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions404', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions405', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions406', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions407', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions407', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions408', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions409', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions410', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions411', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions412', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions413', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions414', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions415', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions416', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions417', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions418', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions419', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions421', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions422', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions431', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions432', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions433', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions438', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions472', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions258', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');



select * from cororg;
select * from fstorg;






-------------------


-- SG Branch
delete from CORFIIDENTITY where COROrgKy = (select CORORGKY from CORORG where NAME = 'Maybank Singapore Branch');
delete from CORORGORG where cororgky2 = (select CORORGKY from CORORG where NAME = 'Maybank Singapore Branch');

delete from CORORGORG where cororgky1 = (select CORORGKY from CORORG where NAME = 'Maybank Singapore Branch');
update FSTFOREXARTICLE set CORORGKY=14862581 where CORORGKY=14862580;
update FSTISSUERCODE set CORORGKY=14862581 where CORORGKY=14862580;
 select * from FSTFOREXARTICLE where CORORGKY=14862581;
delete from FSTINVARTICLE where CORORGKY=14862580;
delete from CORORG where NAME = 'Maybank Singapore Branch';


//14863580 Branch-TestingBranch

select * from cororg;
select * from FSTISSUERCODE where CORORGKY=14862580;




select * from CORFIIDENTITY where NAME = 'Maybank Singapore Branch';

INSERT INTO COROrgOrg (COROrgOrgKy, cororgky1, cororgky2, orgorgtypeenum, updateDttm, updateUser, updateSystem, versionStamp)
	values ((SELECT COALESCE(MAX(COROrgOrgKy), 0) FROM COROrgOrg) + 1, (select CORORGKY from CORORG where NAME = 'Maybank Singapore Branch'),
(select CORORGKY from CORORG where NAME = 'Branch - PSC MT'), 'COROrRlTyPrnt', CURRENT_TIMESTAMP, 'system', 'MBB', 1 );










select * from fstjournalentry where BUSINESSDATE='2018-09-28';


select userid, groupname from (select arcprincipal.name userid, group.name groupname 
from sonedba.fstprincipal fstprincipal inner join sonedba.arcprincipal arcprincipal on fstprincipal.arcprincipalky = arcprincipal.arcprincipalky 
and arcprincipal.name in('ramesh','ramesh4') 
inner join sonedba.arcprincipalgrp arcprincipalgrp on fstprincipal.arcprincipalky = arcprincipalgrp.arcprincipalky 
inner join sonedba.arcprincipal group on arcprincipalgrp.arcprincipalkygrp = group.arcprincipalky 
order by arcprincipal.name, group.name) for read only with ur




SELECT ARCPRINCIPAL.NAME, ARCTARGET.NAME, FSTDRAWER.CURRENCY, FSTDRAWER.DESCRIPTION, FSTDRAWER.TYPE  
FROM ARCGRANT 
JOIN ARCTARGET ON ARCGRANT.ARCTARGETKY = ARCTARGET.ARCTARGETKY 
JOIN ARCPRINCIPAL ON ARCGRANT.ARCPRINCIPALKY =  ARCPRINCIPAL.ARCPRINCIPALKY
JOIN ARCTARGETTYPE ON ARCTARGET.ARCTARGETTYPEKY = ARCTARGETTYPE.ARCTARGETTYPEKY
JOIN FSTDRAWER ON ARCTARGET.NAME = cast(FSTDRAWER.DRAWERID as char(64))
WHERE ARCTARGETTYPE.NAME = 'DRAWER' AND ARCPRINCIPAL.NAME = 'ramesh'
FOR READ ONLY WITH UR;


-----------------------------------

SELECT * FROM PSOPRINCIPAL;


UPDATE PSOPRINCIPAL SET TLLRMMOIDNO='BCPKVN1MBS' WHERE  ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='BCPKVN1MBS');
UPDATE PSOPRINCIPAL SET TLLRMMOIDNO='BCPKVN2MBS' WHERE  ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='BCPKVN2MBS');
UPDATE PSOPRINCIPAL SET TLLRMMOIDNO='BCPKVN3MBS' WHERE  ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='BCPKVN3MBS');
UPDATE PSOPRINCIPAL SET TLLRMMOIDNO='BCPKVN4MBS' WHERE  ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='BCPKVN4MBS');
UPDATE PSOPRINCIPAL SET TLLRMMOIDNO='BCPKVN6MBS' WHERE  ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='BCPKVN6MBS');
UPDATE PSOPRINCIPAL SET TLLRMMOIDNO='RHRCALCMBS' WHERE  ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='RHRCALCMBS');
UPDATE PSOPRINCIPAL SET TLLRMMOIDNO='RQWRSHAMBS' WHERE  ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='RQWRSHAMBS');
UPDATE PSOPRINCIPAL SET TLLRMMOIDNO='RHRNGZZMBS' WHERE  ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='RHRNGZZMBS');
UPDATE PSOPRINCIPAL SET TLLRMMOIDNO='RHRACQJMBS' WHERE  ARCPRINCIPALKY IN (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='RHRACQJMBS');



---------------------
select * from FSTDELIVERYTX where
update FSTDELIVERYTX set DELIVERYSTATUS=5 where FSTBASETRANKY=2754048



//SCRIPT FOR set the CLIENT DATE as a HOST Date for the transactions.
update ARCCONFIGURATION set PROPERTYVALUE ='Y20161229' where PROPERTYNAME='ClientDt';



//Script for ByPassing the Hostdate validation

select * from ARCCONFIGURATION where PROPERTYNAME='HostDateFlag';
update ARCCONFIGURATION set PROPERTYVALUE ='N' where PROPERTYNAME='HostDateFlag'; // ByPassing the host validation Use N or else Y






    
--LI BY PASSING DB SCRIPTS
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'ClientDt', 'Y20181015', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'HostDateFlag', 'N', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'BranchEodFlag', 'Y', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');


INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'DeskTopDateFlag', 'Y', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT) VALUES 
((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'BypassDateValidation', 'Y', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');



select * from MBBRVRSLXML

select * from ARCCONFIGURATION



select * from cororg where 

select * from fstorg


INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions401', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');
INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'tauRejectdenominaions407', '5,100', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

update ARCCONFIGURATION set PROPERTYVALUE='5,2' where PROPERTYNAME='tauRejectdenominaions407';

select * from ARCCONFIGURATION where  

Rem_Misc_VostroAccountRelated   -  431,461

INSERT INTO ARCCONFIGURATION(ARCCONFIGURATIONKY, PROPERTYNAME, PROPERTYVALUE, DOMAIN, UPDATEDTTM, UPDATEUSER, UPDATESYSTEM, VERSIONSTAMP, ROOT)
 VALUES ((SELECT COALESCE(MAX(ARCCONFIGURATIONKY), 0) + 1 FROM ARCCONFIGURATION), 'Rem_Misc_VostroAccountRelated', '431,461', 'ep', CURRENT TIMESTAMP,'Admin', 'Adm', 1, 'config');

delete from ARCCONFIGURATION where PROPERTYNAME='Rem_Misc_VostroAccountRelated';



select * from fstdrawer where drawerid=201602190;

update fstdrawer set ISBALANCED=1 where drawerid=811541523;

---------------

update ARCCONFIGURATION set PROPERTYVALUE='431,461' where PROPERTYNAME='Rem_Misc_VostroAccountRelated';

-----------

--Branch totals
----------
select * from fstdrawer where drawerid= 719340624;
select * from FSTOPENDRAWER where arcprincipalky=25054 and businessdate='2018-11-28' order by updatedttm;

select * from FSTOPENDRAWER where fstdrawerky= 39002 order by updatedttm ;

select * from fsttotal where FSTOPENDRAWERKY in (678081)
678095 28060 BR06BS3
678096 24056 BR06ASM2
678099 -25054 BR06ASM1

select * from ARCPRINCIPAL where ARCPRINCIPALKY in (28060,24056,25054)


SELECT * FROM FSTPRINCIPAL WHERE ARCPRINCIPALKY IN (28060,24056,25054)

select * from FSTJOURNALENTRY where branch_id='406'  and businessdate ='2018-11-28' order by datetime and message like '%TAU%';  --order by datetime

SELECT * FROM PSOPRINCIPAL WHERE  ARCPRINCIPALKY IN (28060,24056,25054)
select * from FSTJOURNALENTRY where branch_id='406' op_id= 'BR06ASM1' and businessdate ='2018-11-28' and message like '%TAU%';




------------------ 29

select * from fstdrawer where drawerid= 719340624;
select * from FSTOPENDRAWER where arcprincipalky=25054 and businessdate='2018-11-28' order by updatedttm;

select * from FSTOPENDRAWER where fstdrawerky= 39002 order by updatedttm ;

select * from fsttotal where FSTOPENDRAWERKY in (678099)
678095 28060 BR06BS3   678168
678096 24056 BR06ASM2   678177
678099 -25054 BR06ASM1

select * from ARCPRINCIPAL where ARCPRINCIPALKY in (28060,24056,25054)


SELECT * FROM FSTPRINCIPAL WHERE ARCPRINCIPALKY IN (28060,24056,25054)

select * from FSTJOURNALENTRY where branch_id='406'  and businessdate ='2018-11-29' and op_id in('BR06ASM1','BR06BS3') order by datetime and message like '%TAU%';  --order by datetime

SELECT * FROM PSOPRINCIPAL WHERE  ARCPRINCIPALKY IN (28060,24056,25054);
select * from FSTJOURNALENTRY where branch_id='406' op_id= 'BR06ASM1' and businessdate ='2018-11-28' and message like '%TAU%';

select * from mbbdrawer where DRAWERID=2016021920;


INSERT INTO MBBDRAWER (MBBDRAWERKY, versionStamp, updateUser, updateDttm, istaushared, deviceid, drawerid, taudvcnm, fstdrawerky, iscocashbox, iscashclsd, 
branchid, taustatus, position, iseodprcssngflag) VALUES (4811, 1, 'SUPER02', '2019-01-02 16:05:59.003', 1,
 '0002', 28985, null, 67525, 0, 0, 9506, null, 'R', null);

select * from psoPRINCIPAL


select * from PSOORG



select * from fstdrawer where drawerid= 28985;

select * from fstopendrawer where FSTDRAWERKY=59505;


select * from fsttotal where FSTOPENDRAWERKY=200503

 select * from fstterminal where name = 'L130300018' where name = 'L130300018';


UPDATE  fstterminal set name = 'L171200481tEMP487' where fstterminalKY=40003;

UPDATE  fstterminal set name = 'L171200481' where fstterminalKY=41503;


select * from ARCPRINCIPAL where name ='DEVTELLER1';

select * from fstPRINCIPAL where ARCPRINCIPALKY=117052


5526305403214197

select * from cororg
select * from PSOORG where cororgky=14851574;

update psoorg set HOSTBRNCHCD='033' where cororgky=14851574;

select * from ARCConfiguration

mbbdrawer
ALTER TABLE MBBDRAWER ADD COLUMN TAUDRA_SHARED_DIFF_ENTITY VARCHAR(110);

CALL SYSPROC.ADMIN_CMD('REORG TABLE MBBDRAWER');


ALTER TABLE SONEDBA.MBBDRAWER DROP COLUMN TAUDRA_SHARED_DIFF_ENTITY;
REORG TABLE MBBDRAWER;

ALTER TABLE MBBDRAWER
	ADD COLUMN ISTAUSHARED CHAR(1);

select * from mbbdrawer;

select * from ARCUserAuthnticn where LOCKOUTDTTM IS NOT NULL


-- Locking userid to check
SELECT a0.ARCUserAuthnticnKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.failedlogincount, a0.expirydays, a0.pswdexpirydttm, a0.password, a0.failedchlngcount,
 a0.lockoutdttm, a0.lastlogindttm, a0.ipaddress, a0.arcidentityky FROM ARCUserAuthnticn a0 INNER JOIN (ARCIdentity a1 INNER JOIN ARCChannel a2 ON a1.arcchannelky = a2.ARCChannelKy)
 ON a0.arcidentityky = a1.ARCIdentityKy
 WHERE ((a2.channelnamemsgcd = 'ARCChnNmFToF') AND (a1.userid = 'R40CS03'));
update ARCUserAuthnticn set LOCKOUTDTTM =null where ARCUSERAUTHNTICNKY=46090;

INSERT INTO FSTDrawer (FSTDrawerKy, versionStamp, updateUser, updateDttm, drawerid, isvault, fstorgky, balanceamount, subtype, description, balanceuser, lastupdateoperator, minamount, balancetime, orderdrawer, currency, isopen, deleted, type, maxamount, mutilated, lastupdate, isbalanced, marked) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) (67502, 1, 'Admin', '2018-12-27 18:12:42.626', 3245234523, false, 14864580, 0, null:12, 'cashbox', null:12, null:12, null:3, null:93, false, 'SGD', false, false, 0, null:3, null:3, null:2, true, null:3)

select * from mbbdrawer where drawerid=13121;
select * from fstdrawer where drawerid = 13121;



SELECT a0.MBBDRAWERKY, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.istaushared, a0.deviceid, a0.drawerid, a0.taudvcnm, a0.fstdrawerky, a0.iscocashbox, a0.iscashclsd, a0.branchid, a0.taustatus, a0.position,
 a0.iseodprcssngflag FROM MBBDRAWER a0 WHERE a0.drawerid = 3245234523 (3245234523)

------------------ chcek the teller details when sign on failed

select * from ARCPRINCIPAL where name ='R40CS01'; //able to login succussfully
select * from ARCPRINCIPAL where name ='R40CS03'; // not able to login - signon failed


select * from PSOPRINCIPAL where ARCPRINCIPALKY in (select ARCPRINCIPALKY from ARCPRINCIPAL where name in ('R40CS01','R40CS03'));

select * from FSTPRINCIPAL where ARCPRINCIPALKY in (select ARCPRINCIPALKY from ARCPRINCIPAL where name in ('R40CS01','R40CS03'));

select * from ARCIdentity where ARCPRINCIPALKY in (select ARCPRINCIPALKY from ARCPRINCIPAL where name in ('R40CS01','R40CS03'));

select * from ARCUserAuthnticn where ARCIDENTITYKY in (select ARCIDENTITYKY from ARCIdentity where ARCIDENTITYKY in (93046,93048));

update ARCUserAuthnticn set LASTLOGINDTTM = current timestamp where ARCIDENTITYKY in (select ARCIDENTITYKY from ARCIdentity where ARCIDENTITYKY in (93048));

update ARCUserAuthnticn set FAILEDLOGINCOUNT = 0 where ARCIDENTITYKY in (select ARCIDENTITYKY from ARCIdentity where ARCIDENTITYKY in (93048));

select * from ARCUserAuthnticn where LASTLOGINDTTM = null;


SELECT a0.ARCPrincipalGrpKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.arcprincipalkygrp, a0.arcprincipalky FROM ARCPrincipalGrp a0 INNER JOIN ARCPrincipal a1 ON a0.arcprincipalky = a1.ARCPrincipalKy WHERE a1.name = 'R40CS03'

SELECT a0.ARCPrincipalGrpKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.arcprincipalkygrp, a0.arcprincipalky FROM (ARCPrincipalGrp a0 INNER JOIN ((ARCGroup a1 INNER JOIN ARCPrincipal a2 ON a1.ARCPrincipalKy = a2.ARCPrincipalKy)) ON a0.arcprincipalkygrp = a1.ARCPrincipalKy)
 INNER JOIN ARCPrincipal a3 ON a0.arcprincipalky = a3.ARCPrincipalKy WHERE ((a3.name = ?) AND (a2.name = ?)) ('R40CS01', 'Level3')
-------------------------------

SELECT a0.ARCPrincipalKy, a2.userid FROM (FSTPRINCIPAL a0 INNER JOIN ARCPrincipal a1 ON a0.ARCPrincipalKy = a1.ARCPrincipalKy) INNER JOIN (ARCIdentity a2 INNER JOIN ARCChannel a3 ON a2.arcchannelky = a3.ARCChannelKy) 
ON a0.ARCPrincipalKy = a2.arcprincipalky WHERE ((a0.ARCPrincipalKy IN(108081)) AND (a3.channelnamemsgcd = 'ARCChnNmFToF')) (93046)


SELECT a0.ARCUserAuthnticnKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.ipaddress, a0.failedlogincount, a0.password, a0.expirydays, a0.lockoutdttm, 
a0.failedchlngcount, a0.pswdexpirydttm, a0.arcidentityky, a0.lastlogindttm FROM ARCUserAuthnticn a0 INNER JOIN (ARCIdentity a1 INNER JOIN ARCChannel a2 ON 
a1.arcchannelky = a2.ARCChannelKy) ON a0.arcidentityky = a1.ARCIdentityKy WHERE ((a2.channelnamemsgcd = 'ARCChnNmFToF') AND (a1.userid in('R40CS01','R40CS03')));


SELECT a0.ARCUserAuthnticnKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.ipaddress, a0.failedlogincount, a0.password, a0.expirydays, a0.lockoutdttm, 
a0.failedchlngcount, a0.pswdexpirydttm, a0.arcidentityky, a0.lastlogindttm FROM ARCUserAuthnticn a0 INNER JOIN (ARCIdentity a1 INNER JOIN ARCChannel a2 ON 
a1.arcchannelky = a2.ARCChannelKy) ON a0.arcidentityky = a1.ARCIdentityKy WHERE ((a2.channelnamemsgcd = 'ARCChnNmFToF') AND (a1.userid ='R40CS03'));

ALTER TABLE SONEDBA.MBBDRAWER DROP COLUMN ISTAUSHARED;
CALL SYSPROC.ADMIN_CMD('REORG TABLE MBBDRAWER');


SELECT a0.ARCChannelKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.arcsystemcontextky, a0.channelnamemsgcd, a0.defaultduration, a0.iscustcommcnmethod, a0.chnmsgtypeenum, a0.isinteractive, a0.channelid, a0.isselfsvc FROM ARCChannel a0 WHERE (a0.ARCChannelKy = 12) (12)



--------------- branch eod------
select * from psoorg where cororgky=9 

update psoorg set BRNCHBUSNSSDT='2019-01-07' where cororgky=9

select * from fstorg where cororgky=9 

UPDATE fstorg SET ISOPEN=0 WHERE cororgky=9

---------------------------------- teller eod -----------
select * from ARCPRINCIPAL where name ='ramesh';

select * from PSOPRINCIPAL where ARCPRINCIPALKY=92052;

update PSOPRINCIPAL set ISEODPERFRMD=1 where  ARCPRINCIPALKY=92052;

------------- Delete the profile in db ----------

SELECT * FROM FSTJOURNALENTRY WHERE OP_ID='R40CS03';

DELETE FROM FSTJOURNALENTRY WHERE OP_ID='R40CS03';

SELECT * FROM FSTTOTAL WHERE OPID ='R40CS03';

DELETE FROM FSTTOTAL WHERE OPID ='R40CS03';

SELECT * FROM ARCPRINCIPAL WHERE NAME ='R40CS03';

SELECT * FROM FSTOPENDRAWER WHERE ARCPRINCIPALKY=108081;


DELETE FROM FSTOPENDRAWER WHERE ARCPRINCIPALKY=108081;

delete FROM ARCPRINCIPAL WHERE NAME ='R40CS03';

select * from CORPERSON where ARCPRINCIPALKY=108081

delete from CORPERSON where ARCPRINCIPALKY=108081;

select * from COREMPLOYEE where CORPERSONKY=85037;
delete from COREMPLOYEE where CORPERSONKY=85037;
delete from psoperson where CORPERSONKY=85037;
delete from PSOPRINCIPAL where ARCPRINCIPALKY=108081;
---------------------------
select * from SONEDBA.VWMBBCASHTRANSMY;

-------------- zero rised drawers---

SELECT * FROM FSTTOTAL where fstopendrawerky in  (SELECT fstopendrawerky FROM FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 2018111520));
select * from FSTDrawerCompmnt where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 2018111520);

update FSTTOTAL set amount=0 where fstopendrawerky in  (SELECT fstopendrawerky FROM FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 2018111520));
update FSTDrawerCompmnt set BALANCEAMOUNT=0,STARTINGAMOUNT=0 where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 201602240);


update FSTTOTAL set amount=50 where fsttotalky in (1180005); (SELECT fstopendrawerky FROM FSTTOTALKY = where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 201602240));
update FSTDrawerCompmnt set BALANCEAMOUNT=50,STARTINGAMOUNT=50 where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 2018111520);
SELECT * FROM FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 2018111520);
SELECT * FROM FSTTOTAL where fstopendrawerky in (207005)
update 



1.	MBS – Maybank Tower (440)
2.	Maybank@JurongPoint (407)

select * from FSTORG where id in (440, 407);
select * from fstopendrawer where fstdrawerky in (select fstdrawerky from FSTDRAWER where fstorgky in (15006,9));

update fstopendrawer set isopen='0' where fstdrawerky in (select fstdrawerky from FSTDRAWER where fstorgky in (15006,9));

select * from FSTDRAWER where fstorgky in (15006,9);


update FSTDRAWER set isopen=0 where fstorgky in (15006,9);


-- tau hadapsar 2016021920
-- main tower 2018111520


----------------------------

SELECT * FROM FSTDRAWER WHERE DRAWERID=201602240;

SELECT * FROM FSTOPENDRAWER WHERE FSTDRAWERKY IN (
SELECT FSTDRAWERKY FROM FSTDRAWER WHERE DRAWERID=201602240);

UPDATE FSTOPENDRAWER SET ISOPEN='0' WHERE FSTDRAWERKY IN (
SELECT FSTDRAWERKY FROM FSTDRAWER WHERE DRAWERID=201602240);


select * from FSTTERMINAL where FSTTERMINALKY IN (40003,41503);

-- Hadpasar acccess
update FSTTERMINAL set NAME='L171200481' where FSTTERMINALKY=40003;
update FSTTERMINAL set NAME='L1712004812019' where FSTTERMINALKY=41503;  

-- main branch access
update FSTTERMINAL set NAME='L1712004812019' where FSTTERMINALKY=40003; 
update FSTTERMINAL set NAME='L171200481' where FSTTERMINALKY=41503;


SELECT * FROM FSTDRAWER



SELECT * FROM MBBMSTRTYPE WHERE TYPE='GLCODEGP1';

UPDATE MBBMSTRPARAM SET PARAMCODE='MBBGLCode293' WHERE PARAMCODE='MBBGLCode014';
UPDATE MBBMSTRPARAM SET PARAMCODE='MBBGLCode258' WHERE PARAMCODE='MBBGLCode015';
UPDATE MBBMSTRPARAM SET PARAMCODE='MBBGLCode120' WHERE PARAMCODE='MBBGLCode120';
UPDATE MBBMSTRPARAM SET PARAMCODE='MBBGLCode291' WHERE PARAMCODE='MBBGLCode124';
UPDATE MBBMSTRPARAM SET PARAMCODE='MBBGLCode188' WHERE PARAMCODE='MBBGLCode177';
UPDATE MBBMSTRPARAM SET PARAMCODE='MBBGLCode292' WHERE PARAMCODE='MBBGLCode178';


SELECT * FROM MBBMSTRPARAM WHERE MBBMSTRTYPEKY IN (SELECT MBBMSTRTYPEKY  FROM MBBMSTRTYPE WHERE TYPE IN ('GLCODEGP1','GLCODEGP5'));
--GL1
INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP1'), 'MBBGLCode293','GL1Enum','164111 RETAIL BKG/FIMIS I/S CLG','','','',910, CURRENT TIMESTAMP, 'MBB', 'system',1);

INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP1'), 'MBBGLCode258','GL1Enum','164114 PB CLIENT CLEARING','','','',920, CURRENT TIMESTAMP, 'MBB', 'system',1);

INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP1'), 'MBBGLCode120','GL1Enum','711056 COMMISSION - MEPS PAYMENTS','','','',930, CURRENT TIMESTAMP, 'MBB', 'system',1);

INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP1'), 'MBBGLCode291','GL1Enum','713151 COMMISSION - EREMS','','','',940, CURRENT TIMESTAMP, 'MBB', 'system',1);

INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP1'), 'MBBGLCode188','GL1Enum','728100 TELECOMMUNICATIONS SERVICE INCOME','','','',950, CURRENT TIMESTAMP, 'MBB', 'system',1);


INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP1'), 'MBBGLCode292','GL1Enum','728101 COMMUNICATION TELE SERVICE INCOME','','','',960, CURRENT TIMESTAMP, 'MBB', 'system',1);


INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP1'), 'MBBGLCode294','GL1Enum','110500 CASH AT MSL','','','',970, CURRENT TIMESTAMP, 'MBB', 'system',1);

SELECT * FROM MBBMSTRPARAM WHERE PARAMCODE = 'MBBGLCode001'; 
 
--GL5
INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP5'), 'MBBGLCode293','GL5Enum','164111 RETAIL BKG/FIMIS I/S CLG','','','',900, CURRENT TIMESTAMP, 'MBB', 'system',1);


INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP5'), 'MBBGLCode258','GL5Enum','164114 PB CLIENT CLEARING','','','',910, CURRENT TIMESTAMP, 'MBB', 'system',1);

INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP5'), 'MBBGLCode120','GL5Enum','711056 COMMISSION - MEPS PAYMENTS','','','',920, CURRENT TIMESTAMP, 'MBB', 'system',1);

INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP5'), 'MBBGLCode291','GL5Enum','713151 COMMISSION - EREMS','','','',930, CURRENT TIMESTAMP, 'MBB', 'system',1);

INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP5'), 'MBBGLCode188','GL5Enum','728100 TELECOMMUNICATIONS SERVICE INCOME','','','',940, CURRENT TIMESTAMP, 'MBB', 'system',1);


INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP5'), 'MBBGLCode292','GL5Enum','728101 COMMUNICATION TELE SERVICE INCOME','','','',950, CURRENT TIMESTAMP, 'MBB', 'system',1);


INSERT INTO SONEDBA.MBBMSTRPARAM(MBBMSTRPARAMKY, MBBMSTRTYPEKY, PARAMCODE,PARAMCODE1,DESCRIPTION,DESCRIPTION1,DESCRIPTION2,DESCRIPTION3,SEQUENCEORDER, UPDATEDTTM,
 UPDATESYSTEM, UPDATEUSER, VERSIONSTAMP) VALUES((SELECT COALESCE(MAX(MBBMSTRPARAMKY),0) FROM SONEDBA.MBBMSTRPARAM) + 1, 
(SELECT MBBMSTRTYPEKY FROM SONEDBA.MBBMSTRTYPE WHERE TYPE='GLCODEGP5'), 'MBBGLCode294','GL5Enum','110500 CASH AT MSL','','','',960, CURRENT TIMESTAMP, 'MBB', 'system',1);

SELECT * FROM MBBMSTRPARAM WHERE MBBMSTRTYPEKY IN (SELECT MBBMSTRTYPEKY  FROM MBBMSTRTYPE WHERE TYPE IN ('GLCODEGP1','GLCODEGP5'));



--- ARCENUM AND ARCMSG

-- Add 1 entry to ARCEnum Table --
INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM) ,NULL,'MBBGLCode294','GL1Enum',97,'ARCEnTyTreeLf',97,NULL,'GL1Enum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);
INSERT INTO ARCENUM (ARCENUMKY,ARCSYSTEMCONTEXTKY,MSGCODE,CATEGORY,ENUMVALUE,ENUMTYPEENUM,RANKING,LINK,FETCHID,ISONEONLY,ISREMOVABLE,EXTREFCODE,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCENUMKY),0)+1 AS INTEGER) FROM ARCENUM) ,NULL,'MBBGLCode294','GL5Enum',97,'ARCEnTyTreeLf',97,NULL,'GL5Enum','0','1',NULL,CURRENT TIMESTAMP,'system','MBB',1);

-- Add 1 entry to ARCMessage Table --
INSERT INTO ARCMESSAGE (ARCMESSAGEKY,ARCLOCALECDKY,ARCSYSTEMCONTEXTKY,MSGCODE,TRANSLATION,MSGCATEGORYENUM,MSGCONTEXTDESC,UPDATEDTTM,UPDATEUSER,UPDATESYSTEM,VERSIONSTAMP) VALUES ((SELECT CAST(COALESCE(MAX(ARCMESSAGEKY),0)+1 AS INTEGER) FROM ARCMESSAGE),1,NULL,'MBBGLCode294','110500 CASH AT MSL','ARCMsgEnum',NULL,CURRENT TIMESTAMP,'system','MBB',1);

SELECT * FROM ARCENUM WHERE CATEGORY IN ('GL5Enum','GL1Enum') order by CATEGORY ;
SELECT * FROM ARCMESSAGE WHERE MSGCODE='MBBGLCode294';




--------------------------

ALTER TABLE MBBDRAWER ADD COLUMN TAU_DIFFENTITY VARCHAR(110);

CALL SYSPROC.ADMIN_CMD('REORG TABLE MBBDRAWER');


ALTER TABLE SONEDBA.MBBDRAWER DROP COLUMN TAUDRA_SHARED_DIFF_ENTITY;
REORG TABLE MBBDRAWER;

ALTER TABLE MBBDRAWER
	ADD COLUMN ISTAUSHARED CHAR(1);

select * from mbbdrawer where drawerid=2016021920;

select * from FSTDRAWER where drawerid=2016021920;
select * from fsttotal where fstopendrawerky=211003;






select * from fstopendrawer where fstdrawerky in (select fstdrawerky from FSTDRAWER where drawerid=2016021920);

select * from fsttotal where fstopendrawerky=213003;






 in (select fstopendrawerky from fstopendrawer where fstdrawerky in 
(select fstdrawerky from FSTDRAWER where drawerid=2016021920));


select * from FSTDRAWER where fstdrawerky=59505;
//TAU_DIFFENTITY


select * from fstorg where cororgky=14864580;

select * from cororg where cororgky=14864580;

select * from PSOORG where cororgky=14864580;

//hadapsar 133 -entitytype =003 - subsidary --drawerid 2016021920
//Main branch - 440 -001 -Branch --2018111520


select * from mbbdrawer where drawerid=2018111520

update mbbdrawer set TAU_DIFFENTITY='2016021920' where drawerid=2018111520
select * from MBBDRAWER where branchid=14864580
---
--Hadapsar
UPDATE  fstterminal set name = 'L171200481' where fstterminalKY=40003;

UPDATE  fstterminal set name = 'L171200481tEMP4' where fstterminalKY=41503;



select * from ARCENUM where CATEGORY='bankCdEnum';

select * from ARCMESSAGE where MSGCODE in (select MSGCODE from ARCENUM where CATEGORY='bankCdEnum') order by TRANSLATION desc ;

select * from ARCOPERATION
select * from FSTDRAWERCOMPMNT
------------
--main branch

UPDATE  fstterminal set name = 'L171200481' where fstterminalKY=41503;

UPDATE  fstterminal set name = 'L171200481tEMP48' where fstterminalKY=40003;
-------------
select * from ARCPRINCIPAL where name ='DEVTELLER1';
SELECT * FROM fstterminal


Select * from fst

select * from fstdrawer where drawerid = 2018111520;
delete from fstdrawer where drawerid = 2018111520;
select * from FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 2016021920);
select * from fsttotal where fstopendrawerky = 207503



select * from MBBSTOREFWDFILEINFO where BUSSINDATE ='2018-05-02';
select * from MBBSTOREFWDUPLDDAT where DATE(UPDATEDTTM) = '2018-07-10';



--- sit signon failed issue
select * from ARCPRINCIPAL where name = 'R40CS01 ';
select * from FSTPRINCIPAL where ARCPRINCIPALKY=109053;
select * from ARCIDENTITY where ARCPRINCIPALKY=108079;
SELECT * FROM ARCUSERAUTHNTICN where ARCIDENTITYKY IN (93046,95014); 

LASTLOGINDTTM
//R40CS01
// /{SHA}yE3LNuHGibSqUM7rsX9DBJSMSj+bOWzV0=

//R40CS03
// {SHA}LvojzCFYJquS37ddoJoy72ZOtMS5Ohf9M=
select * from PSOPRINCIPAL where ARCPRINCIPALKY=109053;

update PSOPRINCIPAL set hostuserid=4108 where ARCPRINCIPALKY=109053;

UPDATE ARCUSERAUTHNTICN SET FAILEDLOGINCOUNT=0,LOCKOUTDTTM=null, where ARCIDENTITYKY =95014;
UPDATE ARCUSERAUTHNTICN SET LASTLOGINDTTM=current date where ARCIDENTITYKY =95014;
UPDATE ARCUSERAUTHNTICN SET PASSWORD='{SHA}LvojzCFYJquS37ddoJoy72ZOtMS5Ohf9M=' where ARCIDENTITYKY =95014;
SELECT * FROM MBBBULKMODESTATUS

SELECT a0.ARCUserAuthnticnKy, a0.updateUser, a0.updateDttm, a0.versionStamp, a0.failedlogincount, a0.expirydays, a0.pswdexpirydttm, a0.password, a0.failedchlngcount, a0.lockoutdttm, a0.lastlogindttm, a0.ipaddress, a0.arcidentityky FROM ARCUserAuthnticn a0 INNER JOIN (ARCIdentity a1 INNER JOIN ARCChannel a2 ON a1.arcchannelky = a2.ARCChannelKy) 
ON a0.arcidentityky = a1.ARCIdentityKy WHERE ((a2.channelnamemsgcd = 'ARCChnNmFToF') AND (a1.userid = 'R40CS03')) ('ARCChnNmFToF', 'R40CS03')




select * from FSTTERMINAL where NAME ='BFESG21-01';
UPDATE FSTTERMINAL SET NAME='BFESG21-01TEMP' WHERE FSTTERMINALKY=81003;


SELECT * FROM FSTDRAWER WHERE DRAWERID=100144003;124533

SELECT * FROM FSTDRAWER WHERE FSTDRAWERKY=124533

SELECT * FROM FSTOPENDRAWER WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE DRAWERID LIKE '10014400%');


SELECT * FROM FSTOPENDRAWER WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE FSTDRAWERKY LIKE '124533%');


Select * from fstdrawer where drawerid=201602190;
SELECT * FROM FSTOPENDRAWER WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE DRAWERID = 201602240);

select * from fsttotal where fstopendrawerky=213502;

select * from ARCCONFIGURATION
select * from ARCENUM
select * from ARCMESSAGE
select * from MBBAGENTINFRMTN


--- So and host msg

select * from PSOTRANSLEGINFO where DATE(UPDATEDTTM)= '2019-02-20' and FSTBASETRANKY=1542407
--HOSTSUPERVISOROVRRDMSG 

--LSO
SELECT * FROM FSTJOURNALENTRY WHERE SUPERVISOROVRRDMSG
 


--- SIT DRAWERS

--MBS
select * from FSTDRAWER where drawerid= 801000001;
select * from FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 801000001);
select * from fsttotal where fstopendrawerky = 870043

-- MSL
select * from fstdrawer where drawerid = 724840724;
delete from fstdrawer where drawerid = 724840724;
select * from FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 724840724);
select * from fsttotal where fstopendrawerky = 1066


select * from PSOPRINCIPAL where arcprincipalky= 108073


select * from FSTDRAWER where drawerid in(722840724);
delete from fstdrawer where drawerid = 722840724;
delete from mbbdrawer where drawerid = 722840724;
select * from FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 722840724);




select * from mbbdrawer where drawerid in(722840724,724840724);

delete from FSTJOURNALENTRY where DRAWER_ID=722840724

delete from FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 722840724);





select * from FSTJOURNALENTRY where BUSINESSDATE='2019-03-05' DRAWER_ID=722840724

select * from FSTBALANCEPOS where FSTDRAWERKY  in (select fstdrawerky from fstdrawer where drawerid = 722840724);

delete from FSTBALANCEPOS where FSTDRAWERKY  in (select fstdrawerky from fstdrawer where drawerid = 722840724);

select * from FSTDRAWERCOMPMNT where FSTDRAWERKY   in (select fstdrawerky from fstdrawer where drawerid = 722840724);
delete from FSTDRAWERCOMPMNT where FSTDRAWERKY   in (select fstdrawerky from fstdrawer where drawerid = 722840724);


update FSTTOTAL set amount=0 where fstopendrawerky in  (SELECT fstopendrawerky FROM FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 724840724));
update FSTDrawerCompmnt set BALANCEAMOUNT=0,STARTINGAMOUNT=0 where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 724840724);
--724840724
SELECT * FROM FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 801000001);


-- UPDATE THE CRS LIMIT 
select * from ARCCONFIGURATION where PROPERTYNAME='OutwardIssuanceFDDCRSTimeLimit';

Update ARCCONFIGURATION set PROPERTYVALUE='16:00:00' where PROPERTYNAME='OutwardIssuanceFDDCRSTimeLimit';

SELECT * FROM FSTDRAWER WHERE DRAWERID=2016021920

SELECT * FROM MBBDRAWER WHERE DRAWERID=811541524;

SELECT * FROM FSTDRAWERCOMPMNT WHERE FSTDRAWERKY=59505


UPDATE  ARCMESSAGE SET TRANSLATION='7214 Citibank N.A., Singapore Branch' WHERE TRANSLATION='Citibank N.A., Singapore Branch';
UPDATE  ARCMESSAGE SET TRANSLATION='7214 Citibank N.A.' WHERE TRANSLATION='7214 Citibank N.A., Singapore Branch';

SELECT * FROM ARCMESSAGE where MSGCODE in (select MSGCODE from ARCENUM where CATEGORY='bankCdEnum');



select * from FSTDRAWER where drawerid= 811544823;
select * from FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 811544823);
select * from fsttotal where fstopendrawerky = 870043
select * from FSTJOURNALENTRY where BUSINESSDATE='2019-03-12' and OP_ID='U48BS04';





select * from fstterminal


update fstterminal set name='L181200329W10' WHERE fstterminalky=40003






select * from fsttotal where fstopendrawerky in  (SELECT fstopendrawerky FROM FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 722440707));
select * from  FSTDrawerCompmnt where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 722440707);


update FSTTOTAL set amount=0 where fsttotalky = 8504120 and fstopendrawerky in  (SELECT fstopendrawerky FROM FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 722440707));
update FSTDrawerCompmnt set BALANCEAMOUNT=0,STARTINGAMOUNT=0 where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 722440707);

select * from fsttotal where fstopendrawerky in  (SELECT fstopendrawerky FROM FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 723140707));
select * from  FSTDrawerCompmnt where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 723140707);

update FSTTOTAL set amount=228.27 where fsttotalky = 8583828 and  fstopendrawerky in  (SELECT fstopendrawerky FROM FSTOPENDRAWER where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 723140707));
update FSTDrawerCompmnt set BALANCEAMOUNT=228.27,STARTINGAMOUNT=228.27 where fstdrawerky in (select fstdrawerky from fstdrawer where drawerid = 723140707);


select * from  FSTDrawerCompmnt

select * from fsttotal 


---- dEV- B01BS15
SELECT * FROM FSTDRAWER WHERE DRAWERID=9160486692;

SELECT * FROM FSTOPENDRAWER WHERE FSTDRAWERKY=90502;

UPDATE FSTOPENDRAWER SET BUSINESSDATE='2019-06-21' WHERE FSTOPENDRAWERKY=506502;


SELECT * FROM PSOORG WHERE CORORGKY=3; 

UPDATE PSOORG SET BRNCHBUSNSSDT='2019-06-21' WHERE CORORGKY=3;


select * from ARCCONFIGURATION where PROPERTYNAME='modeSetting';
//MY ONLINE/OFFLINE CHEKCING
select * from ARCCONFIGURATION  where propertyname like '%manualSettingMode%' with ur


DELETE  FROM FSTINVENTORY WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE DRAWERID=455744704);
DELETE FROM FSTOPENDRAWER WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE DRAWERID=455744704);
DELETE FROM MBBDRAWER WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE DRAWERID=455744704);
DELETE FROM FSTDRAWER WHERE DRAWERID=455744704;

SELECT * FROM FSTINVENTORY WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE DRAWERID=6);

DELETE FROM MBBDRAWER WHERE FSTDRAWERKY IN (SELECT FSTDRAWERKY FROM FSTDRAWER WHERE DRAWERID=455744704);

SELECT * FROM FSTBASETRAN WHERE 

-- grants tables
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE MBBMSTRPARAM_HSTRY TO USER DEVUSER;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE MBBMSTRPARAMASSIGNED_HSTRY TO USER DEVUSER;
GRANT SELECT ON TABLE MBBMSTRPARAM_HSTRY TO USER PPSUSER;
GRANT SELECT ON TABLE MBBMSTRPARAMASSIGNED_HSTRY TO USER PPSUSER;

-- Transactoins checking
 [Executed: 8/13/19 3:24:07 AM GMT ] [Execution: 93/ms] 
SELECT * FROM FSTJOURNALENTRY WHERE OP_ID='R40CS03' AND BUSINESSDATE='2019-08-13';
SELECT * FROM FSTOPENDRAWER WHERE ARCPRINCIPALKY in (SELECT ARCPRINCIPALKY FROM ARCPRINCIPAL WHERE NAME='R40CS03');
select * from fsttotal where OP_ID='R40CS03';
SELECT * FROM FSTDRAWER WHERE DRAWERID=9160486692;



// to check the entitlement for the group id
SELECT USERGROUP, ENTITLEMENT FROM (SELECT ARCPRINCIPAL.NAME USERGROUP,ARCOPERATION.NAME ENTITLEMENT FROM 
ARCOPERATION ARCOPERATION INNER JOIN SONEDBA.ARCGRANT ARCGRANT ON
ARCOPERATION.ARCOPERATIONKY = ARCGRANT.ARCOPERATIONKY INNER JOIN SONEDBA.ARCPRINCIPAL ARCPRINCIPAL ON
ARCPRINCIPAL.ARCPRINCIPALKY = ARCGRANT.ARCPRINCIPALKY AND  ARCPRINCIPAL.NAME= 'MGR-RWM-MG1')



SELECT DISTINCT USERGROUP, ENTITLEMENT FROM (SELECT A2.NAME USERGROUP,A0.NAME ENTITLEMENT FROM 
ARCOPERATION A0 INNER JOIN SONEDBA.ARCGRANT A1 ON
A0.ARCOPERATIONKY = A1.ARCOPERATIONKY INNER JOIN SONEDBA.ARCPRINCIPAL A2 ON
A2.ARCPRINCIPALKY = A1.ARCPRINCIPALKY AND A0.NAME NOT IN ('BRANCH_ALLOWED','DRAWER_ALLOWED','WORKSTATION_ALLOWED'))
AS ENTITLEMENT ORDER BY USERGROUP, ENTITLEMENT FOR READ ONLY WITH UR

// correct query to fetch the functions and transactions for usergroup
SELECT A2.NAME USERGROUP, COUNT(*) ENTITLEMENT_COUNT,A0.NAME FROM 
ARCOPERATION A0 INNER JOIN SONEDBA.ARCGRANT A1 ON
A0.ARCOPERATIONKY = A1.ARCOPERATIONKY INNER JOIN SONEDBA.ARCPRINCIPAL A2 ON
A2.ARCPRINCIPALKY = A1.ARCPRINCIPALKY GROUP BY A2.NAME WITH UR;


-- insufficent balance transactions list
select * from FSTJOURNALENTRY where syncfailinfo like '%INSUFFICIENT%' and businessdate between '2022-01-01' to '2022-12-31';
