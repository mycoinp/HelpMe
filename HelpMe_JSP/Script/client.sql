CREATE SEQUENCE CLIENT_SEQ
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 100000;

--고객 테이블
CREATE TABLE CLIENT(
	CLIENT_NO NUMBER(10),
	CLIENT_ID VARCHAR2(50),
	PASSWORD VARCHAR2(50),
	NAME VARCHAR2(50),
	EMAIL VARCHAR2(50),
	COUNTRY VARCHAR2(50),  
	ADDRESS VARCHAR(100), 
	PHONE_NUMBER VARCHAR2(20),
	AVAILABLE_POINTS NUMBER(10) DEFAULT 5000000,
	CANCEL_CNT NUMBER(1) DEFAULT 0, --고객이 예약을 몇번 취소했는지 기록하는 컬럼
	CONSTRAINT PK_CLIENT_NO PRIMARY KEY(CLIENT_NO)
);



INSERT INTO CLIENT (CLIENT_NO, CLIENT_ID, PASSWORD, NAME, EMAIL, COUNTRY, ADDRESS, PHONE_NUMBER)
VALUES(CLIENT_SEQ.NEXTVAL, 'cmk0728', '1111', 'Choi', 'cmk0728@naver.com', 'Korea', 'adsfdsa', '010-1111-1111');

INSERT INTO CLIENT (CLIENT_NO, CLIENT_ID, PASSWORD, NAME, EMAIL, COUNTRY, ADDRESS, PHONE_NUMBER)
VALUES(CLIENT_SEQ.NEXTVAL, 'savious', '1234', 'Choi', 'cmk0728@naver.com', 'Korea', 'adsfdsa', '010-1111-1111');

INSERT INTO CLIENT (CLIENT_NO, CLIENT_ID, PASSWORD, NAME, EMAIL, COUNTRY, ADDRESS, PHONE_NUMBER)
VALUES(CLIENT_SEQ.NEXTVAL, 'savious', '1234', 'Brian', 'koreanbradpitt@gmail.com', 'Korea', 'adsfdsa', '010-1111-1111');


SELECT AVAILABLE_POINTS FROM CLIENT WHERE CLIENT_ID = 'savious';

SELECT * FROM CLIENT;



DROP TABLE CLIENT;















































SELECT * FROM CLIENT;