DROP SEQUENCE WORKSPACESEQ;
DROP TABLE WORKSPACE;

CREATE SEQUENCE WORKSPACESEQ;
CREATE TABLE WORKSPACE (
	
	WORKSPACE_SEQ 			INT 				PRIMARY KEY,
	WORKSPACE_NAME 			VARCHAR2(100) 		NOT NULL,
	WORKSPACE_INFORMATION 	VARCHAR2(1000)	 	NOT NULL,
	MEMBER_ID				VARCHAR2(50)		NOT NULL,
	WORKSPACE_REGDATE		DATE 				NOT NULL

);

INSERT INTO WORKSPACE
VALUES (WORKSPACESEQ.NEXTVAL, 'KH정보교육원', '개발자 양성 학원', 'kh', SYSDATE);

INSERT INTO WORKSPACE
VALUES (WORKSPACESEQ.NEXTVAL, 'KH세미프로젝트', '코딩4랑 세미프로젝트', 'kh', SYSDATE);

INSERT INTO WORKSPACE
VALUES (WORKSPACESEQ.NEXTVAL, 'KH파이널프로젝트', '코딩4랑 파이널프로젝트', 'kh', SYSDATE);

SELECT * FROM WORKSPACE
ORDER BY WORKSPACE_SEQ;

SELECT WORKSPACE_SEQ, WORKSPACE_NAME, WORKSPACE_INFORMATION, MEMBER_ID, WORKSPACE_REGDATE
		FROM WORKSPACE
		WHERE WORKSPACE_NAME IN (SELECT WORKSPACE_NAME FROM WORKSPACEMEMBER WHERE MEMBER_ID = 'tt')
		ORDER BY WORKSPACE_SEQ;
