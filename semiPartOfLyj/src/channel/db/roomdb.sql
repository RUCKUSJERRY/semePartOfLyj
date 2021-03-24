DROP TABLE CHANNELROOM;
DROP SEQUENCE CHANNELROOMSEQ;

CREATE SEQUENCE CHANNELROOMSEQ;
CREATE TABLE CHANNELROOM (
	
	CHANNEL_NUM 		INT NOT NULL,
	CHANNEL_NAME 		VARCHAR2(100) NOT NULL,
	CHANNEL_INFORMATION VARCHAR2(1000) NOT NULL,
	CHANNEL_MASTER 		VARCHAR2(50) NOT NULL,
	CHANNEL_ACCESS 		VARCHAR2(10) NOT NULL,
	CHANNEL_ENABLED 	VARCHAR2(2) NOT NULL,
	CHANNEL_REGDATE 	DATE NOT NULL,
	
	CONSTRAINT CHANNELROOM_PK PRIMARY KEY (CHANNEL_NUM),
	CONSTRAINT CHANNELROOM_ENABLED_CHK CHECK (CHANNEL_ENABLED IN ('Y','N')),
	CONSTRAINT CHANNELROOM_ACCESS_CHK CHECK (CHANNEL_ACCESS IN ('PUBLIC','PRIVATE'))

);

INSERT INTO CHANNELROOM
VALUES (CHANNELROOMSEQ.NEXTVAL, '전체', '전직원채널, 공지/알림 등으로 이용하세요.', '11', 'PUBLIC', 'Y', SYSDATE);

SELECT * FROM CHANNELROOM;

SELECT CHANNEL_NUM, CHANNEL_NAME, CHANNEL_INFORMATION, CHANNEL_MASTER, CHANNEL_ACCESS, CHANNEL_ENABLED, CHANNEL_REGDATE
		FROM CHANNELROOM
		WHERE CHANNEL_NAME IN (SELECT CHANNEL_NAME FROM ROOMMEMBER WHERE MEMBER_ID = '11');
