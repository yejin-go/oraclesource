CREATE TABLE dept_temp2 AS SELECT * FROM dept;

--dept_tempt2 �� �ִ� loc ��� ����
UPDATE dept_temp2  -- ���̺��
SET LOC = 'SEOUL'; -- ������ ����

SELECT * FROM dept_Temp2;

ROLLBACK;

UPDATE dept_temp2  -- ���̺��
SET LOC = 'SEOUL'  -- ������ ����
where deptno = 10; -- ������Ʈ ����

--emp_temp���̺��� ����� �߿��� �޿��� 3000������ ����� �߰������� 50���� ����
SELECT * FROM emp_temp;

UPDATE emp_temp
SET comm = 50
where sal <=3000;

--���������� �̿��� ������ ����

--40�� �μ��� �μ���� ���� ����
SELECT * from dept_temp2;

UPDATE dept_temp2
SET (dname, LOC) = (SELECT dname, LOC from dept where DEPTNO = 30)
where deptno = 40;

UPDATE dept_temp2
SET LOC = 'SEOUL'
where deptno = (SELECT deptno from dept where Deptno='sales');

commit;