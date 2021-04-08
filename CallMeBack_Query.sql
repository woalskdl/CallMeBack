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
    PID         NUMBER              -- 관련 프로젝트 ID
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

SELECT * FROM MEMBER;

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
    VALUES('N', 2104080005, '신서유기8 스냅', '1234', SYSDATE - 60, SYSDATE - 10,
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
    VALUES('M', 2001080001, '20SS 룩북 촬영', '1234', 'woalskdl', SYSDATE-90, SYSDATE -70,
    'img', 'person', 'pictorial', 'clothes', 'clothesCat', 'big',
    '20SS 화보 촬영입니다.', 'request', 'gilbro', 'F' );
    
    SELECT * FROM PROJECT;
    
    -------------------------------------------