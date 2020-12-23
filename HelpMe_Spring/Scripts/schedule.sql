CREATE SEQUENCE SCHEDULE_SEQ
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 100000;

DROP SEQUENCE SCHEDULE_SEQ;

CREATE TABLE SCHEDULE(
	HELPER_ID	VARCHAR2(50),
	START_TIME NUMBER(3,1),
	END_TIME NUMBER(3,1),
	AVAIL_DAY NUMBER(1),	
	CONSTRAINT FK_HELPER_ID_TIMESLOT FOREIGN KEY(HELPER_ID)
	REFERENCES HELPER(HELPER_ID)
);
--강남구
--brian, daniel, grant, elliot, charles, travis, vic, eric, hamish, joel, emily

--영등포구
--jesse, sky, nicole

--종로구 
--dave, gareth

--동대문구
--natalie

INSERT ALL INTO SCHEDULE
VALUES('brian', 9, 18, 2)
INTO SCHEDULE
VALUES('brian', 9, 18, 3)
INTO SCHEDULE
VALUES('brian', 10, 17, 5)
INTO SCHEDULE
VALUES('brian', 10, 17, 6)
INTO SCHEDULE
VALUES('brian', 10, 17, 7)
INTO SCHEDULE
VALUES('daniel', 9, 18, 2)
INTO SCHEDULE
VALUES('daniel', 9, 18, 3)
INTO SCHEDULE
VALUES('daniel', 10, 17, 5)
INTO SCHEDULE
VALUES('daniel', 10, 17, 6)
INTO SCHEDULE
VALUES('daniel', 10, 17, 7)
INTO SCHEDULE
VALUES('grant', 9, 18, 2)
INTO SCHEDULE
VALUES('grant', 9, 18, 3)
INTO SCHEDULE
VALUES('grant', 10, 17, 5)
INTO SCHEDULE
VALUES('grant', 10, 17, 6)
INTO SCHEDULE
VALUES('grant', 10, 17, 7)
INTO SCHEDULE
VALUES('elliot', 9, 18, 2)
INTO SCHEDULE
VALUES('elliot', 9, 18, 3)
INTO SCHEDULE
VALUES('elliot', 10, 17, 5)
INTO SCHEDULE
VALUES('elliot', 10, 17, 6)
INTO SCHEDULE
VALUES('elliot', 10, 17, 7)
INTO SCHEDULE
VALUES('charles', 9, 18, 2)
INTO SCHEDULE
VALUES('charles', 9, 18, 3)
INTO SCHEDULE
VALUES('charles', 10, 17, 5)
INTO SCHEDULE
VALUES('charles', 10, 17, 6)
INTO SCHEDULE
VALUES('charles', 10, 17, 7)
INTO SCHEDULE
VALUES('travis', 9, 18, 2)
INTO SCHEDULE
VALUES('travis', 9, 18, 3)
INTO SCHEDULE
VALUES('travis', 10, 17, 5)
INTO SCHEDULE
VALUES('travis', 10, 17, 6)
INTO SCHEDULE
VALUES('travis', 10, 17, 7)
INTO SCHEDULE
VALUES('vic', 9, 18, 2)
INTO SCHEDULE
VALUES('vic', 9, 18, 3)
INTO SCHEDULE
VALUES('vic', 10, 17, 5)
INTO SCHEDULE
VALUES('vic', 10, 17, 6)
INTO SCHEDULE
VALUES('vic', 10, 17, 7)
INTO SCHEDULE
VALUES('eric', 9, 18, 2)
INTO SCHEDULE
VALUES('eric', 9, 18, 3)
INTO SCHEDULE
VALUES('eric', 10, 17, 5)
INTO SCHEDULE
VALUES('eric', 10, 17, 6)
INTO SCHEDULE
VALUES('eric', 10, 17, 7)
INTO SCHEDULE
VALUES('hamish', 9, 18, 2)
INTO SCHEDULE
VALUES('hamish', 9, 18, 3)
INTO SCHEDULE
VALUES('hamish', 10, 17, 5)
INTO SCHEDULE
VALUES('hamish', 10, 17, 6)
INTO SCHEDULE
VALUES('hamish', 10, 17, 7)
INTO SCHEDULE
VALUES('joel', 9, 18, 2)
INTO SCHEDULE
VALUES('joel', 9, 18, 3)
INTO SCHEDULE
VALUES('joel', 10, 17, 5)
INTO SCHEDULE
VALUES('joel', 10, 17, 6)
INTO SCHEDULE
VALUES('joel', 10, 17, 7)
INTO SCHEDULE
VALUES('emily', 9, 18, 2)
INTO SCHEDULE
VALUES('emily', 9, 18, 3)
INTO SCHEDULE
VALUES('emily', 10, 17, 5)
INTO SCHEDULE
VALUES('emily', 10, 17, 6)
INTO SCHEDULE
VALUES('emily', 10, 17, 7)
INTO SCHEDULE
VALUES('jesse', 9, 18, 3)
INTO SCHEDULE
VALUES('jesse', 10, 17, 4)
INTO SCHEDULE
VALUES('jesse', 10, 17, 6)
INTO SCHEDULE
VALUES('jesse', 10, 17, 7)
INTO SCHEDULE
VALUES('jesse', 10, 17, 1)
INTO SCHEDULE
VALUES('sky', 9, 18, 3)
INTO SCHEDULE
VALUES('sky', 9, 18, 4)
INTO SCHEDULE
VALUES('sky', 10, 17, 6)
INTO SCHEDULE
VALUES('sky', 10, 17, 7)
INTO SCHEDULE
VALUES('sky', 10, 17, 1)
INTO SCHEDULE
VALUES('nicole', 9, 18, 3)
INTO SCHEDULE
VALUES('nicole', 9, 18, 4)
INTO SCHEDULE
VALUES('nicole', 10, 17, 6)
INTO SCHEDULE
VALUES('nicole', 10, 17, 7)
INTO SCHEDULE
VALUES('nicole', 10, 17, 1)
INTO SCHEDULE
VALUES('dave', 9, 18, 2)
INTO SCHEDULE
VALUES('dave', 9, 18, 4)
INTO SCHEDULE
VALUES('dave', 10, 17, 5)
INTO SCHEDULE
VALUES('dave', 10, 17, 6)
INTO SCHEDULE
VALUES('dave', 10, 17, 7)
INTO SCHEDULE
VALUES('gareth', 9, 18, 2)
INTO SCHEDULE
VALUES('gareth', 9, 18, 4)
INTO SCHEDULE
VALUES('gareth', 10, 17, 5)
INTO SCHEDULE
VALUES('gareth', 10, 17, 6)
INTO SCHEDULE
VALUES('gareth', 10, 17, 7)
INTO SCHEDULE
VALUES('natalie', 9, 18, 2)
INTO SCHEDULE
VALUES('natalie', 9, 18, 4)
INTO SCHEDULE
VALUES('natalie', 10, 17, 6)
INTO SCHEDULE
VALUES('natalie', 10, 17, 7)
INTO SCHEDULE
VALUES('natalie', 10, 17, 1)
SELECT * FROM DUAL;



SELECT * FROM SCHEDULE;


SELECT * FROM SCHEDULE WHERE HELPER_ID = 'natalie' ORDER BY AVAIL_DAY ASC;



DROP TABLE SCHEDULE;




--헬퍼의 START_TIME과 END_TIME을 VARCHAR2로 하고
--예약은 24시간전에 해야한다
--고객이 예약할 날짜를 SYSDATE를 기준으로 몇일 뒤인지 혹은 몇달(?)인지 쿼리문으로 작성한다
--SQL Error [1849] [22008]: ORA-01849: hour must be between 1 and 12
SELECT
(SELECT TO_CHAR(SYSDATE+4, 'YYYY-MM-DD DAY') FROM DUAL)
|| START_TIME "START TIME"
FROM TIME_SLOT WHERE START_TIME = ' 13:00';

SELECT
(SELECT TO_CHAR(SYSDATE+1, 'YYYY-MM-DD DAY') FROM DUAL)
|| END_TIME "END TIME" 
FROM TIME_SLOT;

--고객이 원하는 시간과 날짜에 가능한 헬퍼를 검색할때, 
--1) RESERVATION테이블에서 예약된 날짜가 있는지 검사하고
--2) 예약된 날짜가 없으면 TIME_SLOT테이블에 와서 뿌려준다

--근무시간은 9시부터 6시인데 9시전이나 6시 이후에 일하는 헬퍼는 추가 근무수당을 받는다


SELECT TO_DATE(SYSDATE, 'YYYY-MM-DD HH24:MI') 오늘날짜 FROM DUAL;

SELECT SYSDATE FROM DUAL;

SELECT '2020-10-20 화요일' || ' 09:00' FROM DUAL;

--만약 사용자가 당일이 아닌 그 이후에 날짜로 예약를 하고 싶으면 아래 쿼리문으로 일수 차이를 알 수 있다
SELECT TO_DATE('2020-10-25', 'YYYY-MM-DD') - TRUNC(SYSDATE) "날짜 차이" FROM DUAL;

