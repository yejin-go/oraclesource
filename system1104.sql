-- scott ���� ��ȣ ����/���� ����
ALTER USER scott identified by tiger account unlock;

-- hr ���� ��ȣ ����/���� ����
alter user hr identified by 12345 account unlock;

-- ������ ����
-- DBA_ : system, sys�� �� �� ����(DB������ ���� ����)
select * from dba_tables;

-- scott���� create view ���� �ο�
-- DCL
GRANT CREATE VIEW TO SCOTT;
GRANT CREATE SYNONYM TO SCOTT;
GRANT CREATE PUBLIC SYNONYM TO SCOTT;


-- ���ο� ����� ����(= ���ο� ��Ű�� ����)
CREATE USER TEST IDENTIFIED BY 12345;

-- ���� ���� �ο�(�������� �ο�)
GRANT CREATE SESSION TO TEST;

-- ���� �۾��� ������ ������ �ִ� �� �ο�
GRANT CONNECT, RESOURCE TO TEST;

-- TEST2 ����� ����(�ƹ������� ���� ����� ����)
CREATE USER TEST2 IDENTIFIED BY 12345;
-- ���� �ο�
GRANT CREATE SESSION TO TEST2;
GRANT CREATE TABLE TO TEST2;

-- ���� ���
REVOKE CREATE TABLE FROM TEST2;


GRANT CONNECT,RESOURCE TO TEST2;
-- ��й�ȣ ����
ALTER USER TEST2 IDENTIFIED BY 54321;
-- ����� ����
-- DROP USER TEST2(����ڰ� ���� ��ü�� �ƹ��͵� ���� ��)
DROP USER TEST2 CASCADE; -- ����ڿ� ��ü(���̺�,INDEX,VIEW..) ��� ����


-- �������� ����� ����� ����
CREATE USER JAVADB IDENTIFIED BY 12345;
GRANT CONNECT,RESOURCE TO JAVADB;







