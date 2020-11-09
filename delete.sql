CREATE TABLE emp_temp2 AS SELECT * FROM emp;

select * from emp_temp2;

--job�� manager�� ������ �����ϱ�

DELETE FROM emp_temp2 where job = 'MANAGER'; --(O)
--!!����!! *�ָ� ����!!!
DELETE * FROM emp_temp2 where job = 'MANAGER'; --����

ROLLBACK;

DELETE emp_temp2; -- �� ���ư�

--emp_temp2 ���̺��� ��� �߿��� �޿��� 5000 �̻��� ��� ����
DELETE from emp_temp2 where sal >= 5000;

commit;

--�޿� ����� 3��� ���̿� �ִ� 30�� �μ��� ����鸸 ����
DELETE from emp_temp2 where empno in (SELECT e.empno
                                   from emp_temp2 e, salgrade s
                                   where e.sal between s.losal and s.hisal
                                   and s.grade = 3 and deptno = 30);

delete from emp_temp2 where empno in (7001, 7002, 7003);

--�ǽ��� ���Ͽ� ���� ���̺��� �̿��Ͽ� ���̺��� �����Ѵ�.
--1)emp���̺��� ������ �̿�, exam_emp ����
CREATE TABLE exam_emp AS SELECT * FROM emp;

SELECT * from exam_emp;

--2)dept���̺��� ������ �̿��Ͽ� exam_dept ����
CREATE TABLE exam_dept AS SELECT * FROM dept;
--3)salgrade���̺��� ������ �̿��Ͽ� exam_salgrade ����
CREATE TABLE exam_salgrade SELECT * FROM salgrade;
--4)exam_dmp�� ���� ���� �ֱ�.
INSERT INTO exam_emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7201, 'TEST_USER1', 'MANAGER', 7788, '2016-01-02', 4500, NULL, 50);
INSERT INTO exam_emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7202, 'TEST_USER2', 'clerk', 7201, '2016-02-21', 1800, NULL, 50);
INSERT INTO exam_emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7203, 'TEST_USER3', 'analyst', 7201, '2016-04-11', 3400, NULL, 60);
INSERT INTO exam_emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7204, 'TEST_USER4', 'salesman', 7201, '2016-05-31', 2700, 300, 60);
INSERT INTO exam_emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7205, 'TEST_USER5', 'clerk', 7201, '2016-07-20', 2600, NULL, 70);
INSERT INTO exam_emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7206, 'TEST_USER6', 'clerk', 7201, '2016-09-08', 2600, NULL, 70);
INSERT INTO exam_emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7207, 'TEST_USER7', 'lecturer', 7201, '2016-10-28', 2300, NULL, 80);
INSERT INTO exam_emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7208, 'TEST_USER8', 'student', 7201, '2016-03-09', 1200, NULL, 80);

--5)exam_emp�� ���� ��� �� 50�� �μ����� �ٹ��ϴ� ������� ��� �޿����� ���� �޿��� �ް� �ִ� ������� 70�� �μ��� �ű�� sql�� �ۼ�

--6)exam_emp�� ���� ��� �� 60�� �μ��� ��� �߿��� �Ի����� ���� ���� ������� �ʰ� �Ի��� ����� �޿��� 10%�λ��ϰ� 80�� �μ��� �ű�� sql�� �ۼ��ϱ�

--7)exam_emp�� ���� ��� �� �޿� ����� 5�� ����� �����ϴ� sql�� �ۼ��ϱ�
