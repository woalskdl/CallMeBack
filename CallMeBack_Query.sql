CREATE TABLE MEMBER
(
    ID          VARCHAR2 (50),      -- ȸ�� ID
    PWD         NVARCHAR2(50),      -- ȸ�� PW
    NAME        NVARCHAR2(50),      -- ȸ�� �̸�
    REGDATE     DATE                -- ȸ������ ��¥
);

CREATE TABLE PROJECT
(
    MNDIV       CHAR(2),            -- ������Ʈ ����(ȸ��M / ��ȸ��N)
    PID         NUMBER,             -- ������Ʈ ID (�⺻ / ��ȸ�� ������Ʈ ��ȸ)
    PNAME       NVARCHAR2(50),      -- ������Ʈ �̸�
    PPWD        NVARCHAR2(50),      -- ������Ʈ ��й�ȣ (��ȸ����)
    REGID       VARCHAR2 (50),      -- ������Ʈ ����� ID
    REGDATE     DATE,               -- �����
    DEADLINE    DATE,               -- ������
    CONT1       NVARCHAR2,          -- ������Ʈ ����1
    CONT2       NVARCHAR2,          -- ������Ʈ ����2
    CONT3       NVARCHAR2,          -- ������Ʈ ����3
    CONT4       NVARCHAR2,          -- ������Ʈ ����4
    CONT5       NVARCHAR2,          -- ������Ʈ ����5
    PSIZE       NVARCHAR2,          -- �̹��� �Ǵ� ���� ũ��
    DETAIL      NVARCHAR2(2000),    -- ������Ʈ �� ����
    DIV         VARCHAR(50),        -- ������Ʈ ����(���� / �Ƿ�)
    PRODUCERID  VARCHAR2 (50),      -- ������Ʈ ������ ID
    FIN         CHAR(2)             -- �Ϸ� ����
);

CREATE TABLE REFERENCE
(
    REGID       VARCHAR2 (50),      -- ����� ID
    REFNAME     NVARCHAR2 (100),    -- ���� �̸�
    PID         NUMBER              -- ���� ������Ʈ ID
);

---------------------------------------------------------

INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('woalskdl', '1234', '�����', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('gilbro', '4567', '����', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('test', 'test', '�׽�Ʈ', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('blog', 'b1234', '��α�', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('khd', '1234', '��ȣ��', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('jkh', '3456', '������', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('smh', '5678', '�۹�ȣ', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('pjh', '6789', 'ǥ����', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('ejw', '7890', '������', SYSDATE);
INSERT INTO MEMBER(ID, PWD, NAME, REGDATE) VALUES('lsk', '2345', '�̼���', SYSDATE);

SELECT * FROM MEMBER;

------------------------------------------------------------

INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    CONT4, CONT5, PSIZE, DETAIL, DIV, FIN)
    VALUES('M', 2104080001, '21SS ���', '1234', 'woalskdl', SYSDATE, SYSDATE + 14,
    'img', 'person', 'pictorial', 'clothes', 'clothesCat', 'normal',
    '21SS ����Կ��Դϴ�.', 'self', 'N');

INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    CONT4, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('M', 2104080002, '21SS ��ǰ����', '1234', 'woalskdl', SYSDATE, SYSDATE + 14,
    'img', 'product', 'clothesP', 'basic', 'web',
    '21SS ��ǰ ���� �Կ��Դϴ�.', 'request', 'gilbro', 'N' );
    
INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    CONT4, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('M', 2104080003, '21SS ����', '1234', 'woalskdl', SYSDATE, SYSDATE + 14,
    'img', 'person', 'wear', 'basicWear', 'web',
    '21SS ��ǰ �� ���� �Կ��Դϴ�.', 'request', 'gilbro', 'N' );
    
INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    CONT4, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('M', 2104080004, '21SS ��ǰ ����', '1234', 'woalskdl', SYSDATE, SYSDATE + 14,
    'img', 'product', 'clothesP', 'productConcept', 'web',
    '21SS ��ǰ ���� �Կ��Դϴ�.', 'request', 'gilbro', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGDATE, DEADLINE, CONT1, CONT2, CONT3,
    PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('N', 2104080005, '�ż�����8 ����', '1234', SYSDATE - 60, SYSDATE - 10,
    'img', 'person', 'etc', 'normal',
    '�ż�����8 ������ �Կ��Դϴ�.', 'request', 'khd', 'F' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, PSIZE, DETAIL, DIV, FIN)
    VALUES('M', 2104080006, '�ż�����8 �Կ�', '1234', 'jkh', SYSDATE, SYSDATE + 60,
    'video', 'person', 'etc', 'normal',
    '�ż�����8 �Կ��Դϴ�.', 'self', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, PSIZE, DETAIL, DIV, FIN)
    VALUES('M', 2104080007, '�ż�����8 �Կ�', '1234', 'smh', SYSDATE, SYSDATE + 60,
    'video', 'person', 'etc', 'normal',
    '�ż�����8 �Կ��Դϴ�.', 'self', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, PSIZE, DETAIL, DIV, FIN)
    VALUES('N', 2104080008, '�ż�����8 �Կ� - ������', '1234', SYSDATE, SYSDATE + 60,
    'video', 'person', 'etc', 'normal',
    '�ż�����8 �Կ��Դϴ�.', 'self', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('N', 2104080009, '�ż�����8 �Կ� - �̼���', '1234', SYSDATE, SYSDATE + 60,
    'video', 'person', 'etc', 'normal',
    '�ż�����8 �Կ��Դϴ�.', 'request', 'lsk', 'N' );
    
    INSERT INTO PROJECT(MNDIV, PID, PNAME, PPWD, REGID, REGDATE, DEADLINE, CONT1,
    CONT2, CONT3, CONT4, CONT5, PSIZE, DETAIL, DIV, PRODUCERID, FIN)
    VALUES('M', 2001080001, '20SS ��� �Կ�', '1234', 'woalskdl', SYSDATE-90, SYSDATE -70,
    'img', 'person', 'pictorial', 'clothes', 'clothesCat', 'big',
    '20SS ȭ�� �Կ��Դϴ�.', 'request', 'gilbro', 'F' );
    
    SELECT * FROM PROJECT;
    
    -------------------------------------------