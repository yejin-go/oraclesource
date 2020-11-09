--ȸ������, �Խñ� ���, �Ա�...

--������ dept ���̺��� �����Ͽ� dept_temp ���̺� ����
CREATE TABLE dept_temp AS SELECT * FROM DEPT;

--���� ���̺� ��ȸ
SELECT *
fROM dept_temp;

--������ �߰��ϱ� (��� 1)
INSERT INTO dept_temp(deptno, dname, loc)
VALUES(50,'Database', 'SEOUL');

--������ �߰��ϱ� (��� 2)
INSERT INTO dept_temp VALUES(60,'NETWORK', 'BUSAN');

--�����߻� ����
-- 1)
INSERT INTO dept_temp(deptno, dname, loc)
VALUES(50,'Database');
-- 2)
INSERT INTO dept_temp(deptno, dname, loc)
VALUES(500,'Database', 'SEOUL');

--NULL�����ϱ�
--1)��������� NULL�����ϱ� (�⺻)
INSERT INTO dept_temp(deptno, dname, loc)
VALUES(70,'Database', NULL);

INSERT INTO dept_temp(deptno, dname, loc)
VALUES(80,'MOBILE','');
--2)���������� �����ϱ�
INSERT INTO dept_temp(deptno, loc)
VALUES(90,'INCHEON');

--emp���̺��� �����Ͽ� emp_temp���̺��� ����
CREATE TABLE emp_temp AS SELECT * FROM emp;

--���̺� ����
DROP TABLE emp_temp;

--emp���̺��� �����Ͽ� emp_temp ���̺� �����ϵ�, ������ �����ϱ�
CREATE TABLE emp_temp AS SELECT * from emp Where 1<>1;

DESC emp_temp;

Insert into emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(9999, 'ȫ�浿', 'president', NULL, '2020-11-09', 4000, NULL, 10);

Insert into emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(8888, '������', 'manager', NULL, '2020-10-08', 3000, NULL, 10);

Insert into emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7777, '����ȣ', 'manager', NULL, TO_DATE('07/01/2010', 'DD/MM/YYYY'), 4000, NULL, 20);

Insert into emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(6666, '�̼���', 'manager', NULL, SYSDATE, 4000, NULL, 20);

--�����ݿ�
commit;

--���
rollback;

--DML
--Ʈ������ : Ŀ�԰� �ѹ�

--emp ���̺��� salgrade ���̺��� �����Ͽ� �޿� ����� 1����� �������
--emp_temp���̺� �߰��ϰ� �ʹٸ�?
--���������� �ۼ��� �� : �����Ͱ� �߰��Ǵ� ���̺��� �� ������ ���� ������ �� ������ ��ġ���� �����.
INSERT INTO emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp e, salgrade s
where e.sal between s.losal and s.hisal and s.grade = 1;

