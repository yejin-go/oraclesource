CREATE TABLE TEST (
    ID NUMBER (4),
    name VARCHAR2(3));
DESC TEST;

Insert into test values(1000, 'ȫ�浿'); --�ѱ��� �� ���ڴ� 2����Ʈ. --> ����
Insert into test values(1000, 'ABC');   --����� �� ���ڴ� 1����Ʈ.

--���� ���� �ٸ� ����Ʈ ó���� �����ϱ� ���ؼ� nchar, nvarchar2�� ����. -->���ڰ��� ��ü�� ���� ��.
--NCHAR, NVARCHAR2 ���� : ������ ���̸� �׻� ������ �ִ��� �ƴϳ��� ����.
--NCHAR�� ��쿡�� ���ڰ� 1�� �Է��� �Ǿ 4�ڸ��� �׻� ����.
drop table test2;

CREATE TABLE TEST2(
    ID NCHAR(4),
    name NVARCHAR2(3));
    
Insert into test2 values ('Ȳ������', 'ȫ�浿');

CREATE TABLE TEST3(
    ID NVARCHAR2(4),
    name NVARCHAR2(4),
    REG_DATE DATE);
    
Insert into TEST3 values ('Ȳ������', 'ȫ�浿', SYSDATE);
Insert into TEST3 values ('Ȳ������', 'ȫ�浿', '2020-11-09'); 

--���̺� �����ϱ�
-- CREATE TABLE ���̺��(���̸� Ÿ��, .....);
-- CREATE TABLE ���̺�� AS SELECT * FROM emp where deptno = 20;
-- CREATE TABLE ���̺�� AS SELECT * FROM emp where 1<>1; -->������ ���翡�� ����ڴ�.

DESC emp;

CREATE TABLE emp_ddl ( 
    empno number(4),
    ename varchar2(10),
    job varchar2(9),
    mgr number(4),
    hiredate date,
    sal number(7,2),  -- ��ü �ڸ����� 7�ڸ�(�Ҽ��� 2�ڸ��� ������ �� ����. ��, �ڿ����δ� 5�ڸ������� ����)
    comm number(7,2), -- ���� ����. ��, ���÷� 12345.67
    deptno number(2));

-- ALTER : ���̺� ����

-- �÷� �߰�
Alter table emp_ddl add hp varchar2(20);

-- ���� �÷��� ����
Alter table emp_ddl rename column hp to tel;

--���� Ÿ���� ����
ALter table emp_ddl modify empno number(5);

--Ư������ ����
Alter table emp_ddl drop column tel;

--���̺�� ����
Rename emp_ddl to emp_rename;

desc emp_ddl; 
desc emp_rename;

--ppt �ǽ�
--menber ���̺� �ۼ�
CREATE TABLE member (
    id char(8),
    name nvarchar2(10),
    addr nvarchar2(50),
    nation nchar(4),
    email varchar2(50),
    age number (7,2));

ALter table member modify id char(8);
ALter table member modify nation nchar(4);
ALter table member modify email varchar2(4);
desc member;

Alter table member add bigo varchar2(20);
alter table member rename column bigo to remark;
alter table member modify remark nvarchar2(30);

drop table member;