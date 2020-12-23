CREATE SEQUENCE SPECIALTY_SEQ
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 100000;

DROP SEQUENCE SPECIALTY_SEQ;

--헬퍼 전문분야 테이블
CREATE TABLE HELPER_SPECIALTY(
	SPECIALTY_NO NUMBER(10),
	HELPER_ID VARCHAR2(50),
	SPECIALIZED_FIELD VARCHAR2(50),
	CONSTRAINT PK_SPECIALTY PRIMARY KEY(SPECIALTY_NO),
	CONSTRAINT FK_HELPER_SPECIALTY FOREIGN KEY(HELPER_ID)
	REFERENCES HELPER(HELPER_ID)
);

DROP TABLE HELPER_SPECIALTY;

--강남구 헬퍼
INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'brian', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'daniel', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'grant', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'elliot', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'charles', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'travis', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'vic', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'eric', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'hamish', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'joel', 'Translation');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'emily', 'Translation');


--영등포구
INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'jesse', 'Travel');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'sky', 'Travel');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'nicole', 'Travel');

--종로구
INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'dave', 'Government Service');

INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'gareth', 'Government Service');

--동대문구
INSERT INTO HELPER_SPECIALTY
VALUES(SPECIALTY_SEQ.NEXTVAL, 'natalie', 'Housing');



SELECT * FROM HELPER_SPECIALTY;

DELETE FROM HELPER_SPECIALTY WHERE HELPER_ID ='sky' AND SPECIALIZED_FIELD = 'Select Service';



DROP TABLE HELPER_SPECIALTY;

