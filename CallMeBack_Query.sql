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
    PID         NUMBER,             -- ���� ������Ʈ ID
    REGDATE     DATE                -- �����
);

CREATE TABLE PCOMMENT
(
    CID         NUMBER,             -- Ŀ��Ʈ ���� ID
    REGID       VARCHAR2 (50),      -- ����� ID
    TITLE       NVARCHAR2 (50),     -- ����
    CONT        NVARCHAR2 (1000),   -- Ŀ��Ʈ ����
    DIV         CHAR,               -- ����(�����ּ���C / ������O)
    PID         NUMBER,             -- ���� ������Ʈ ID
    REGDATE     DATE                -- �����
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

-- SELECT * FROM MEMBER;

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
    VALUES('N', 2102070001, '�ż�����8 ����', '1234', SYSDATE - 60, SYSDATE - 10,
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
    VALUES('M', 2101080001, '20SS ��� �Կ�', '1234', 'woalskdl', SYSDATE-90, SYSDATE -70,
    'img', 'person', 'pictorial', 'clothes', 'clothesCat', 'big',
    '20SS ȭ�� �Կ��Դϴ�.', 'request', 'gilbro', 'F' );
    
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
    VALUES(112104110001, 'gilbro', '���۷��� Ȯ���߽��ϴ�', '���۷��� ���� ��� �߰�Ȯ�� �ʿ��մϴ�. ������Ź�帳�ϴ�.',
    'C', 2104080001, SYSDATE);
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104080001, 'gilbro', '���۷��� Ȯ���߽��ϴ�', '���۷��� ���� ��� �߰�Ȯ�� �ʿ��մϴ�. ������Ź�帳�ϴ�.',
    'C', 2104080002, TO_DATE('21/04/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104090001, 'gilbro', '���� �Ϸ�', '�Կ� ����', 'O', 2104080002, TO_DATE('21/04/09','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100001, 'woalskdl', '���� ����', '���۷��� ���� ������� ���޵帮�� �մϴ�. ������ ÷������ Ȯ�� �� �����ּ���.',
    'C', 2104080002, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104080002, 'gilbro', '���۷��� Ȯ���߽��ϴ�', '���۷��� ���� ��� �߰�Ȯ�� �ʿ��մϴ�. ������Ź�帳�ϴ�.',
    'C', 2104080003, TO_DATE('21/04/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104090002, 'gilbro', '���� �Ϸ�', '�Կ� ���� ����', 'O', 2104080003, TO_DATE('21/04/09','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104080003, 'gilbro', '���۷��� Ȯ���߽��ϴ�', '���۷��� ���� ��� �߰�Ȯ�� �ʿ��մϴ�. ������Ź�帳�ϴ�.',
    'C', 2104080004, TO_DATE('21/04/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112102080001, '���۷��� Ȯ���߽��ϴ�', '���۷��� ���� ��� �߰�Ȯ�� �ʿ��մϴ�. ������Ź�帳�ϴ�.',
    'C', 2102070001, TO_DATE('21/02/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100002, '�ż����� �Կ�', '�Կ� ��ȹ ������Ʈ ����Դϴ�',
    'O', 2104080006, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100003, '�ż����� �Կ�', '�Կ� ��ȹ ������Ʈ ����Դϴ�',
    'O', 2104080007, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100004, '�ż����� �Կ�', '�Կ� ��ȹ ������Ʈ ����Դϴ�',
    'O', 2104080008, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112104100005, '�ż����� �Կ�', '�Կ� ��ȹ ������Ʈ ����Դϴ�',
    'O', 2104080009, TO_DATE('21/04/10','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112101080001, 'gilbro', '���۷��� Ȯ���߽��ϴ�', '���۷��� ���� ��� �߰�Ȯ�� �ʿ��մϴ�. ������Ź�帳�ϴ�.',
    'C', 2101080001, TO_DATE('21/01/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE) 
    VALUES(112101080002, 'gilbro', '���� �Ϸ�', '�Կ� ���� ����', 'O', 2101080001, TO_DATE('21/01/08','RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE)
    VALUES(112101090001, 'woalskdl', '�����ٶ��ϴ�.', '�Կ� �� ���� �����ٶ��ϴ�', 'C',
    2101080001, TO_DATE('21/01/09', 'RR/MM/DD'));
    
    INSERT INTO PCOMMENT(CID, REGID, TITLE, CONT, DIV, PID, REGDATE)
    VALUES(112101090002, 'gilbro', '���� �Ϸ�', '�Կ� ���� ����', 'O',
    2101080001, TO_DATE('21/01/09', 'RR/MM/DD'));
    
    -- SELECT * FROM PCOMMENT;
