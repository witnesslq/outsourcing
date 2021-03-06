---------------------------------------------
-- Export file for user OSFI               --
-- Created by 21829 on 2014/9/11, 19:09:36 --
---------------------------------------------

--set define off
--spool trigger.log


--
-- Creating trigger PERSONNEL_RECORD_T
-- =============================
--
CREATE OR REPLACE TRIGGER FRANCHISEE_RECORD_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_FRANCHISEE_RECORD
FOR EACH ROW
DECLARE
createDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_FRANCHISEE_RECORD');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    :new.CREATEDATE := createDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_FRANCHISEE_RECORD');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_FRANCHISEE_RECORD');
END;
/

--
-- Creating trigger MAIL_LIST_T
-- =============================
--
--
CREATE OR REPLACE TRIGGER MAIL_LIST_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_MAIL_LIST
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_MAIL_LIST');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_MAIL_LIST');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_MAIL_LIST');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_MAIL_LIST');
END;
/

--
-- Creating trigger THE_FRANCHISEE_T
-- =============================
--
--
CREATE OR REPLACE TRIGGER THE_FRANCHISEE_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_THE_FRANCHISEE
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_THE_FRANCHISEE');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_THE_FRANCHISEE');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_THE_FRANCHISEE');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_THE_FRANCHISEE');
END;
/

--
-- Creating trigger PERSONNEL_RECORD_T
-- =============================
--
CREATE OR REPLACE TRIGGER PERSONNEL_RECORD_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_PERSONNEL_RECORD
FOR EACH ROW
DECLARE
createDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_PERSONNEL_RECORD');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    :new.CREATEDATE := createDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_PERSONNEL_RECORD');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_PERSONNEL_RECORD');
END;
/

--
-- Creating trigger PERSONNEL_T
-- =============================
--
--
CREATE OR REPLACE TRIGGER PERSONNEL_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_PERSONNEL
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_PERSONNEL');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_PERSONNEL');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_PERSONNEL');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_PERSONNEL');
END;
/

--
-- Creating trigger ACTIVITIESUSER_T
-- =============================
--
CREATE OR REPLACE TRIGGER ACTIVITIESUSER_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_ACTIVITIESUSER
FOR EACH ROW
DECLARE
createDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_ACTIVITIESUSER');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    :new.CREATEDATE := createDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_ACTIVITIESUSER');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_ACTIVITIESUSER');
END;
/

--
-- Creating trigger ACTIVITIES_T
-- =============================
--
--
CREATE OR REPLACE TRIGGER ACTIVITIES_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_ACTIVITIES
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_ACTIVITIES');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_ACTIVITIES');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_ACTIVITIES');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_ACTIVITIES');
END;
/

--
-- Creating trigger PHYSICALEXAMINATION_T
-- =============================
--
--
CREATE OR REPLACE TRIGGER PHYSICALEXAMINATION_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_PHYSICALEXAMINATION
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_PHYSICALEXAMINATION');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_PHYSICALEXAMINATION');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_PHYSICALEXAMINATION');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_PHYSICALEXAMINATION');
END;
/

--
-- Creating trigger HOTEL_T
-- =============================
--
--
CREATE OR REPLACE TRIGGER HOTEL_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_HOTEL
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_HOTEL');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_HOTEL');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_HOTEL');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_HOTEL');
END;
/

--
-- Creating trigger TRAININGOFPERSONNEL_T
-- =============================
--
CREATE OR REPLACE TRIGGER TRAININGOFPERSONNEL_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_TRAININGOFPERSONNEL
FOR EACH ROW
DECLARE
createDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_TRAININGOFPERSONNEL');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    :new.CREATEDATE := createDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_TRAININGOFPERSONNEL');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_TRAININGOFPERSONNEL');
END;
/

--
-- Creating trigger ACTIVITIES_T
-- =============================
--
CREATE OR REPLACE TRIGGER ACTIVITIES_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_ACTIVITIES
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_ACTIVITIES');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_ACTIVITIES');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_ACTIVITIES');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_ACTIVITIES');
END;
/

--
-- Creating trigger CERTIFICATES_T
-- ===============================
--
CREATE OR REPLACE TRIGGER CERTIFICATES_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_CERTIFICATES
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_CERTIFICATES');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_CERTIFICATES');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_CERTIFICATES');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_CERTIFICATES');
END;
/

--
-- Creating trigger FILEINFO_T
-- ===========================
--
CREATE OR REPLACE TRIGGER FILEINFO_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_FILEINFO
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_FILEINFO');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_FILEINFO');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_FILEINFO');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_FILEINFO');
END;
/

--
-- Creating trigger HOTEL_T
-- ========================
--
CREATE OR REPLACE TRIGGER HOTEL_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_HOTEL
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_HOTEL');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_HOTEL');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_HOTEL');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_HOTEL');
END;
/

--
-- Creating trigger SYS_RESOURCEINFO_T
-- ===================================
--
CREATE OR REPLACE TRIGGER SYS_RESOURCEINFO_T
BEFORE DELETE OR INSERT OR UPDATE
ON SYS_RESOURCEINFO
FOR EACH ROW
DECLARE
createDate    date;
modifyDate    date;
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table SYS_RESOURCEINFO');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select SYSDATE into createDate from dual;
    select SYSDATE into modifyDate from dual;
    :new.CREATETIME := createDate;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table SYS_RESOURCEINFO');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select SYSDATE into modifyDate from dual;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table SYS_RESOURCEINFO');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table SYS_RESOURCEINFO');
END;
/

--
-- Creating trigger SYS_ROLE_T
-- ===========================
--
CREATE OR REPLACE TRIGGER SYS_ROLE_T
BEFORE DELETE OR INSERT OR UPDATE
ON SYS_ROLE
FOR EACH ROW
DECLARE
createDate    date;
modifyDate    date;
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table SYS_ROLE');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select SYSDATE into createDate from dual;
    select SYSDATE into modifyDate from dual;
    :new.CREATETIME := createDate;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table SYS_ROLE');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select SYSDATE into modifyDate from dual;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table SYS_ROLE');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table SYS_ROLE');
END;
/

--
-- Creating trigger SYS_USER_T
-- ===========================
--
CREATE OR REPLACE TRIGGER SYS_USER_T
BEFORE DELETE OR INSERT OR UPDATE
ON SYS_USER
FOR EACH ROW
DECLARE
createDate    date;
modifyDate    date;
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table SYS_USER');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select SYSDATE into createDate from dual;
    select SYSDATE into modifyDate from dual;
    :new.CREATETIME := createDate;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table SYS_USER');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select SYSDATE into modifyDate from dual;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table SYS_USER');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table SYS_USER');
END;
/

--
-- Creating trigger TECHNOLOGICALPROCESS_T
-- =======================================
--
CREATE OR REPLACE TRIGGER TECHNOLOGICALPROCESS_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_TECHNOLOGICALPROCESS
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_TECHNOLOGICALPROCESS');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATETIME := createDate;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_TECHNOLOGICALPROCESS');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_TECHNOLOGICALPROCESS');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_TECHNOLOGICALPROCESS');
END;
/


--
-- Creating trigger ENTRY_PROCESS_T
-- =======================================
--
CREATE OR REPLACE TRIGGER ENTRY_PROCESS_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_ENTRY_PROCESS
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_ENTRY_PROCESS');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATETIME := createDate;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_ENTRY_PROCESS');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_ENTRY_PROCESS');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_ENTRY_PROCESS');
END;
/

--
-- Creating trigger TRAINCOURSE_T
-- ==============================
--
CREATE OR REPLACE TRIGGER TRAINCOURSE_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_TRAINCOURSE
FOR EACH ROW
DECLARE
createDate    varchar2(20);
modifyDate    varchar2(20);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_TRAINCOURSE');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into createDate from dual;
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_TRAINCOURSE');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_TRAINCOURSE');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_TRAINCOURSE');
END;
/

--
-- Creating trigger PERSONNEL_T
-- ==============================
--
CREATE OR REPLACE TRIGGER T_PERSONNEL_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_PERSONNEL
FOR EACH ROW
DECLARE
createDate    date;
modifyDate    date;
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_PERSONNEL');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select SYSDATE into createDate from dual;
    select SYSDATE into modifyDate from dual;
    :new.CREATETIME := createDate;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_PERSONNEL');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select SYSDATE into modifyDate from dual;
    :new.UPDATETIME := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_PERSONNEL');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_PERSONNEL');
END;
/

--
-- Creating trigger SYS_NOTICE_T
-- ==============================
--
CREATE OR REPLACE TRIGGER SYS_NOTICE_T
BEFORE DELETE OR INSERT OR UPDATE
ON SYS_NOTICE
FOR EACH ROW
DECLARE
createDate    date;
modifyDate    date;
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table SYS_NOTICE');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    select SYSDATE into createDate from dual;
    select SYSDATE into modifyDate from dual;
    :new.CREATEDATE := createDate;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table SYS_NOTICE');
  END;
END IF;
IF UPDATING THEN
  BEGIN
    select SYSDATE into modifyDate from dual;
    :new.UPDATEDATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table SYS_NOTICE');
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table SYS_NOTICE');
END;
/

--
-- Creating trigger CHANGE_T
-- =========================
--
CREATE OR REPLACE TRIGGER OSFI.CHANGE_T
BEFORE DELETE OR INSERT OR UPDATE
ON T_CHANGE
FOR EACH ROW
DECLARE
createDate    date;
modifyDate    date;
newStatus varchar2(50);
oldStatus varchar2(50);
newRes1 varchar2(50);
oldRes1 varchar2(50);
BEGIN
IF DELETING THEN
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Delete Trigger Operation in table T_CHANGE');
  END;
END IF;
IF INSERTING THEN
  BEGIN
    newStatus := :new.STATUS;
    oldStatus := :old.STATUS;
    newRes1 := :new.res1;
    oldRes1 := :old.res1;
    
    if newStatus is not null THEN
      UPDATE T_THE_FRANCHISEE SET STATUS = newStatus WHERE ID = nvl(newRes1,oldRes1);
    END IF;
    select SYSDATE into createDate from dual;
    select SYSDATE into modifyDate from dual;
    :new.CREATE_DATE := createDate;
    :new.UPDATE_DATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Insert Trigger Operation in table T_CHANGE');
    DBMS_OUTPUT.put_line('sqlcode : ' ||sqlcode); 
    DBMS_OUTPUT.put_line('sqlerrm : ' ||sqlerrm);
  END;
END IF;
IF UPDATING THEN
  BEGIN
    newStatus := :new.STATUS;
    oldStatus := :old.STATUS;
    newRes1 := :new.res1;
    oldRes1 := :old.res1;
    
    if newStatus != oldStatus THEN
      UPDATE T_THE_FRANCHISEE SET STATUS = newStatus WHERE ID = nvl(newRes1,oldRes1);
    END IF;
    select SYSDATE into modifyDate from dual;
    :new.UPDATE_DATE := modifyDate;
    EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Failed Update Trigger Operation in table T_CHANGE');
    DBMS_OUTPUT.put_line('sqlcode : ' ||sqlcode); 
    DBMS_OUTPUT.put_line('sqlerrm : ' ||sqlerrm);
  END;
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Failed Other Trigger Operation in table T_CHANGE');
DBMS_OUTPUT.put_line('sqlcode : ' ||sqlcode); 
DBMS_OUTPUT.put_line('sqlerrm : ' ||sqlerrm);
END;
/


--spool off
