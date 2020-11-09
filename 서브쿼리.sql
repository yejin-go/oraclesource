--������ �޿����� ���� �޿��� �޴� ������� ����ϱ�

--������ �޿� �˾Ƴ���
SELECT sal FROM emp where ename='JONES';

--���� �޿� ��� ����ϱ�
SELECT * FROM emp where sal > 2975;

--����������? ������ �ȿ� �ٸ� �������� �����ϰ� �ִ� ����
--������ �������� : <, >, = ,<=, >=, �������� (<>, ^=, !=)
SELECT * FROM emp where sal > (SELECT sal FROM emp where ename='JONES');

--����̸��� ALLEN�� ����� �߰����纸�� ���� �޴� ����� ���
SELECT * FROM emp where comm > (SELECT comm fROM emp where ename = 'ALLEN');

--����̸��� WARD�� ����� �Ի��Ϻ��� ���� �Ի��� ����� ���
SELECT * FROM emp where hiredate > (SELECT hiredate fROM emp where ename ='WARD');

--20�� �μ��� ���� ��� �� ��ü ����� ��� �޿����� ���� �޿��� �޴� ��� ���
SELECT * FROM emp where deptno = 20 and sal > (SELECT avg(sal) fROM emp);

--20�� �μ��� ���� ��� �� ��ü ����� ��� �޿����� ���� �޿��� �޴� ��� ����ϵ�, �μ���� ���� ��ġ�� �Բ� ���
SELECT e.ename, e.sal, d.deptno, d.dname, d.loc FROM emp e, dept d WHERE e.deptno = d.deptno and deptno = 20 and sal > (SELECT avg(sal) fROM emp);

--�������� ����� 2�� �̻� ������ ����� ������ ���������� �����ڴ� ��� �Ұ�
--������ ��������

SELECT max(sal) FROM emp Group by deptno;

SELECT * FROM emp WHERE sal >=(SELECT max(sal) FROM emp Group by deptno); -- ������

--In
SELECT * FROM emp WHERE sal IN(SELECT max(sal) FROM emp Group by deptno); 
--ANY / SOME
-- =any, =some : in�� �������� ���� ����. ��, in�� �� ���� ��.
SELECT * FROM emp WHERE sal =ANY(SELECT max(sal) FROM emp Group by deptno); 
SELECT * FROM emp WHERE sal =SOME(SELECT max(sal) FROM emp Group by deptno); 

--30�� �μ� ������� �ִ� �޿����� ���� �޿��� �޴� ��� ���
SELECT max(sal) FROM emp where deptno = 30;
SELECT * FROM emp where sal <any(SELECT max(sal) FROM emp where deptno = 30); 
SELECT * FROM emp where sal <any(SELECT sal FROM emp where deptno = 30);
SELECT distinct sal from emp where deptno = 30;

--30�� �μ� ������� �ּ� �޿����� ���� �޿��� �޴� ��� ���
SELECT * FROM emp where sal > ANY (SELECT sal from emp where deptno = 30);

--ALL : ���� ������ ����� ��� �����ϴ� ���� ������ ������ ��
SELECT * FROM emp where sal < ALL (SELECT sal from emp where deptno = 30);

--EXISTS : In�� ����� ����. ��, in���� ������ ���.
--���� ���� ����� �����ϸ� �������� ����� �����
SELECT * FROM emp where exists(SELECT dname from dept where deptno = 20);
SELECT * FROM emp where NOT exists(SELECT dname from dept where deptno = 20);

SELECT empno, deptno
FROM emp
WHERE exists (SELECT deptno
              FROM dept
              where deptno in (20,30) and emp.deptno = dept.deptno);

SELECT empno, deptno
FROM emp
WHERE exists (SELECT 1
              FROM dept
              where deptno in (20,30) and emp.deptno = dept.deptno);

SELECT empno, deptno
FROM emp
WHERE NOT exists (SELECT 1
                  FROM dept
                  where deptno in (20,30) and emp.deptno = dept.deptno);

