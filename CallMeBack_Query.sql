CREATE TABLE MEMBER
(
    ID          VARCHAR2 (50),      -- 회원 ID
    PWD         NVARCHAR2(50),      -- 회원 PW
    NAME        NVARCHAR2(50),      -- 회원 이름
    REGDATE     DATE                -- 회원가입 날짜
);

CREATE TABLE PROJECT
(
    MNDIV       CHAR(2),            -- 프로젝트 구분(회원M / 비회원N)
    PID         NUMBER,             -- 프로젝트 ID (기본 / 비회원 프로젝트 조회)
    PNAME       NVARCHAR2(50),      -- 프로젝트 이름
    PPWD        NVARCHAR2(50),      -- 프로젝트 비밀번호 (비회원용)
    REGID       VARCHAR2 (50),      -- 프로젝트 등록자 ID
    REGDATE     DATE,               -- 등록일
    DEADLINE    DATE,               -- 마감일
    CONT1       NVARCHAR2,          -- 프로젝트 내용1
    CONT2       NVARCHAR2,          -- 프로젝트 내용2
    CONT3       NVARCHAR2,          -- 프로젝트 내용3
    CONT4       NVARCHAR2,          -- 프로젝트 내용4
    CONT5       NVARCHAR2,          -- 프로젝트 내용5
    PSIZE       NVARCHAR2,          -- 이미지 또는 영상 크기
    DETAIL      NVARCHAR2(2000),    -- 프로젝트 상세 설명
    DIV         VARCHAR(50),        -- 프로젝트 구분(셀프 / 의뢰)
    PRODUCERID  VARCHAR2 (50),      -- 프로젝트 제작자 ID
    FIN         CHAR(2)             -- 완료 여부
);

CREATE TABLE REFERENCE
(
    REGID       VARCHAR2 (50),      -- 등록인 ID
    REFNAME     NVARCHAR2 (100),    -- 파일 이름
    PID         NUMBER,             -- 관련 프로젝트 ID
    REGDATE     DATE                -- 등록일
);

CREATE TABLE PCOMMENT
(
    CID         NUMBER,             -- 커멘트 고유 ID
    REGID       VARCHAR2 (50),      -- 등록인 ID
    TITLE       NVARCHAR2 (50),     -- 제목
    CONT        NVARCHAR2 (1000),   -- 커멘트 내용
    DIV         CHAR,               -- 구분(연락주세요C / 진행중O)
    PID         NUMBER,             -- 관련 프로젝트 ID
    REGDATE     DATE                -- 등록일
);



---------------------------------------------------------

INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('woalskdl', '1234', '남재민', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('gilbro', '4567', '길브로', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('test', 'test', '테스트', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('blog', 'b1234', '블로그', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('khd', '1234', '강호동', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('jkh', '3456', '조규현', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('smh', '5678', '송민호', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('pjh', '6789', '표지훈', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('ejw', '7890', '은지원', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('lsk', '2345', '이수근', SYSDATE);

-- SELECT * FROM MEMBER;

------------------------------------------------------------

INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    CONT4, CONT5, PSIZE, DETAIL, DIV, FIN)
    VALUES('M', 2104080001, '21SS 룩북', '1234', 'woalskdl', SYSDATE, SYSDATE + 14,
    'img', 'person', 'pictorial', 'clothes', 'clothesCat', 'normal',
    '21SS 룩북촬영입니다.', 'self', 'N');

INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    CONT4, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('M', 2104080002, '21SS 제품누끼', '1234', 'woalskdl', SYSDATE, SYSDATE + 14,
    'img', 'product', 'clothesP', 'basic', 'web',
    '21SS 제품 누끼 촬영입니다.', 'request', 'gilbro', 'N' );
    
INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    CONT4, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('M', 2104080003, '21SS 착장', '1234', 'woalskdl', SYSDATE, SYSDATE + 14,
    'img', 'person', 'wear', 'basicWear', 'web',
    '21SS 제품 모델 착장 촬영입니다.', 'request', 'gilbro', 'N' );
    
INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    CONT4, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('M', 2104080004, '21SS 제품 컨셉', '1234', 'woalskdl', SYSDATE, SYSDATE + 14,
    'img', 'product', 'clothesP', 'productConcept', 'web',
    '21SS 제품 컨셉 촬영입니다.', 'request', 'gilbro', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('N', 2102070001, '신서유기8 스냅', '1234', SYSDATE - 60, SYSDATE - 10,
    'img', 'person', 'etc', 'normal',
    '신서유기8 스냅샷 촬영입니다.', 'request', 'khd', 'F' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, PSIZE, DETAIL, DIV, FIN)
    VALUES('M', 2104080006, '신서유기8 촬영', '1234', 'jkh', SYSDATE, SYSDATE + 60,
    'video', 'person', 'etc', 'normal',
    '신서유기8 촬영입니다.', 'self', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, PSIZE, DETAIL, DIV, FIN)
    VALUES('M', 2104080007, '신서유기8 촬영', '1234', 'smh', SYSDATE, SYSDATE + 60,
    'video', 'person', 'etc', 'normal',
    '신서유기8 촬영입니다.', 'self', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, PSIZE, DETAIL, DIV, FIN)
    VALUES('N', 2104080008, '신서유기8 촬영 - 은지원', '1234', SYSDATE, SYSDATE + 60,
    'video', 'person', 'etc', 'normal',
    '신서유기8 촬영입니다.', 'self', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('N', 2104080009, '신서유기8 촬영 - 이수근', '1234', SYSDATE, SYSDATE + 60,
    'video', 'person', 'etc', 'normal',
    '신서유기8 촬영입니다.', 'request', 'lsk', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, CONT4, CONT5, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('M', 2101080001, '20SS 룩북 촬영', '1234', 'woalskdl', SYSDATE-90, SYSDATE -70,
    'img', 'person', 'pictorial', 'clothes', 'clothesCat', 'big',
    '20SS 화보 촬영입니다.', 'request', 'gilbro', 'F' );
    
    -- SELECT * FROM PROJECT;
    
    -------------------------------------------
    
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '1.jpg', 2104080001, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '2.jpg', 2104080001, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '3.jpg', 2104080001, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '4.jpg', 2104080001, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '5.jpg', 2104080001, SYSDATE - 1);
    
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '61.jpg', 2104080002, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '62.jpg', 2104080002, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '63.jpg', 2104080002, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '64.jpg', 2104080002, SYSDATE - 1);
    
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '8.jpg', 2104080003, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '9.jpg', 2104080003, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '10.jpg', 2104080003, SYSDATE - 1);
    
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '27.jpg', 2104080004, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '28.jpg', 2104080004, SYSDATE - 1);

    INSERT INTO REFERENCE(REFNAME, PID, REGDATE) VALUES('55.jpg', 2104080005, SYSDATE - 1);
    INSERT INTO REFERENCE(REFNAME, PID, REGDATE) VALUES('56.jpg', 2104080005, SYSDATE - 1);
    INSERT INTO REFERENCE(REFNAME, PID, REGDATE) VALUES('57.jpg', 2104080005, SYSDATE - 1);
    INSERT INTO REFERENCE(REFNAME, PID, REGDATE) VALUES('58.jpg', 2104080005, SYSDATE - 1);
    
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('smh', '66.jpg', 2104080007, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('smh', '67.jpg', 2104080007, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('smh', '68.jpg', 2104080007, SYSDATE - 1);
    
    INSERT INTO REFERENCE(REFNAME, PID, REGDATE) VALUES('42.jpg', 2104080008, SYSDATE - 1);
    INSERT INTO REFERENCE(REFNAME, PID, REGDATE) VALUES('43.jpg', 2104080008, SYSDATE - 1);
    INSERT INTO REFERENCE(REFNAME, PID, REGDATE) VALUES('44.jpg', 2104080008, SYSDATE - 1);
    INSERT INTO REFERENCE(REFNAME, PID, REGDATE) VALUES('45.jpg', 2104080008, SYSDATE - 1);
    
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '8.jpg', 2001080001, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '9.jpg', 2001080001, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '10.jpg', 2001080001, SYSDATE - 1);
    INSERT INTO REFERENCE(REGID, REFNAME, PID, REGDATE) VALUES('woalskdl', '11.jpg', 2001080001, SYSDATE - 1);
    
    -- SELECT * FROM REFERENCE;
    
    ------------------------------------------------------
    
    -- SELECT * FROM PROJECT;
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104110001, 'gilbro', '레퍼런스 확인했습니다', '레퍼런스 관련 몇가지 추가확인 필요합니다. 연락부탁드립니다.',
    'C', 2104080001, SYSDATE);
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104080001, 'gilbro', '레퍼런스 확인했습니다', '레퍼런스 관련 몇가지 추가확인 필요합니다. 연락부탁드립니다.',
    'C', 2104080002, TO_DATE('21/04/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104090001, 'gilbro', '연락 완료', '촬영 진행', 'O', 2104080002, TO_DATE('21/04/09','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100001, 'woalskdl', '변경 사항', '레퍼런스 관련 변경사항 전달드리려 합니다. 수정된 첨부파일 확인 후 연락주세요.',
    'C', 2104080002, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104080002, 'gilbro', '레퍼런스 확인했습니다', '레퍼런스 관련 몇가지 추가확인 필요합니다. 연락부탁드립니다.',
    'C', 2104080003, TO_DATE('21/04/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104090002, 'gilbro', '연락 완료', '촬영 진행 예정', 'O', 2104080003, TO_DATE('21/04/09','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104080003, 'gilbro', '레퍼런스 확인했습니다', '레퍼런스 관련 몇가지 추가확인 필요합니다. 연락부탁드립니다.',
    'C', 2104080004, TO_DATE('21/04/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112102080001, '레퍼런스 확인했습니다', '레퍼런스 관련 몇가지 추가확인 필요합니다. 연락부탁드립니다.',
    'C', 2102070001, TO_DATE('21/02/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100002, '신서유기 촬영', '촬영 계획 프로젝트 등록입니다',
    'O', 2104080006, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100003, '신서유기 촬영', '촬영 계획 프로젝트 등록입니다',
    'O', 2104080007, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100004, '신서유기 촬영', '촬영 계획 프로젝트 등록입니다',
    'O', 2104080008, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100005, '신서유기 촬영', '촬영 계획 프로젝트 등록입니다',
    'O', 2104080009, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112101080001, 'gilbro', '레퍼런스 확인했습니다', '레퍼런스 관련 몇가지 추가확인 필요합니다. 연락부탁드립니다.',
    'C', 2101080001, TO_DATE('21/01/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112101080002, 'gilbro', '연락 완료', '촬영 진행 예정', 'O', 2101080001, TO_DATE('21/01/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE)
    VALUES(112101090001, 'woalskdl', '연락바랍니다.', '촬영 모델 관련 연락바랍니다', 'C',
    2101080001, TO_DATE('21/01/09', 'RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE)
    VALUES(112101090002, 'gilbro', '연락 완료', '촬영 진행 예정', 'O',
    2101080001, TO_DATE('21/01/09', 'RR/MM/DD'));
    
    -- SELECT * FROM PCOMMENT;
