--sum : �հ踦 ���ϴ� �Լ�
SELECT SUM(sal), SUM(DISTINCT sal), SUM(all sal) from emp;

--count : ����
SELECT COUNT(*) FROM emp;

--�μ� ��ȣ�� 30���� ���� �� ���ϱ�
SELECT count(*) from emp where deptno=30;

SELECT COUNT(sal), COUNT(DISTINCT sal), COUNT(all sal) from emp;

--MAX(�ִ밪), MIN(�ּҰ�)
SELECT MAX(sal), MIN(sal) from emp;

--�μ���ȣ�� 20�� ����� �Ի��� �� ���� �ֱ��� �Ի��� ���ϱ�.
SELECT max(hiredate) from emp where deptno=20;

--AVG : ���(average)
SELECT AVG(trunc(SAL, 3)) as avg_sal from emp;

SELECT avg(sal) from emp where deptno=30;

SELECT avg(distinct sal) from emp;

--�μ��� ������ ����� �˰� �ʹٸ�?
SELECT avg(sal) from emp where deptno = 30;
SELECT avg(sal) from emp where deptno = 20;
SELECT avg(sal) from emp where deptno = 10;
--group by : ������� ���ϴ� ���� ��� ��� 
SELECT deptno, avg(sal) from emp GROUP BY deptno;

--�μ���ȣ�� �߰����� ��� ���ϱ�
SELECT deptno, avg(comm)from emp group by deptno;

--�μ���ȣ, ��å�� �޿� ��� ���ϱ�
SELECT deptno, avg(sal), job 
from emp 
group by deptno, job 
order by deptno, job;

-- group by ���� ���� �ȵǴ� ���� select�� ���Խ�Ű�� �ȵ�

--emp ���̺��� �μ��� ��å�� ��� �޿��� 500�̻��� �������
--�μ���ȣ, ��å, �μ��� ��å�� ��� �޿� ���
SELECT deptno, job, avg(sal)
from emp
GROUP BY deptno, job 
HAVING AVG(sal) >=500;

SELECT deptno, job, avg(sal) --2
from emp --1
where sal <=3000 --3
GROUP BY deptno, job --4
HAVING AVG(sal) >=2000 --5
order by deptno, job; --6

--�ǽ�5
SELECT deptno, floor(avg(sal)) as avg_sal, max(sal)as max_sal, min(sal)as min_sal, count(*)as cnt 
from emp
Group by deptno;

--�ǽ�6
SELECT job, count(job)
from emp
Group by job
having count(job)>=3;

--�ǽ�7
SELECT TO_CHAR(hiredate, 'YYYY') as hireyear, deptno, count(*)as cnt
from emp
Group by TO_CHAR(hiredate, 'YYYY'),deptno;

--���� 
--���� �� �ִ� ��� ������ ��ȸ�� ��
SELECT * FROM emp, dept ORDER BY empno; --56��
SELECT count(*) FROM emp, dept ORDER BY empno; --(56��)

SELECT * from dept; --4��
SELECT * from emp; --14��

--1)��������(�����)
SELECT *
FROM emp, dept
where emp.deptno = dept.deptno -- ���α���
order by empno;

SELECT *
FROM emp e, dept d
where e.deptno = d.deptno -- ���α���
order by empno;

SELECT *
FROM emp e Inner join dept d
on e.deptno = d.deptno -- ���α���
order by empno;

--�� ���̺� ���� �̸��� �ʵ尡 �����ϴ� ���,
--��� ���̺� �ִ� �ʵ带 ������ �� ������ �������־�� ��.
SELECT empno, ename, job, d.deptno, dname
FROM emp e, dept d
where e.deptno = d.deptno -- ���α���
order by empno;

--emp���̺�� dept���̺��� �����Ͽ� empno, ename, sal, deptno,
--dname, loc�� ��ȸ�Ѵ�. ��, �޿��� 3000�̻��� ����� ���.
SELECT e.empno, e.ename, e.sal, d.deptno, d.dname, d.loc
FROM emp e, dept d
where e.deptno = d.deptno AND sal >=3000;

--emp ���̺��� ��Ī�� e��, dept ���̺��� ��Ī�� d�� �Ͽ�
--�޿��� 2500�����̰�, �����ȣ�� 9999������ ����� ������ ���
SELECT *
FROM emp e, dept d
where e.deptno = d.deptno AND sal <=2500 AND e.empno <= 9999;

--emp���̺��� ��Ī�� e��, salgrade���̺��� ��Ī�� s�� �Ͽ�
--�� ����� ������ ���Ҿ� ����� ��� ������ ���
SELECT *
FROM emp e, salgrade s
where e.sal between s.losal and s.hisal;

--2)��������(��ü����) : ���� ���̺��� �ڱ� �ڽ� ���̺��� ��
SELECT * FROM emp;

SELECT e1.empno, e1.ename, e1.mgr, e2.empno AS mgr_empno, e2.ename as mgr_ename
from emp e1, emp e2
where e1.mgr = e2.empno;

--OUTER JOIN (�ܺ�����) : ������ �������� �ʴ� ������ ����
SELECT * FROM emp;

--1) LEFT OUTER JOIN
SELECT e1.empno, e1.ename, e1.mgr, e2.empno AS mgr_empno, e2.ename as mgr_ename
FROM emp e1 LEFT OUTER JOIN emp e2
ON e1.mgr = e2.empno;

SELECT e1.empno, e1.ename, e1.mgr, e2.empno AS mgr_empno, e2.ename as mgr_ename
FROM emp e1, emp e2
WHERE e1.mgr = e2.empno(+);

--2) RIght OUTER JOIN
SELECT e1.empno, e1.ename, e1.mgr, e2.empno AS mgr_empno, e2.ename as mgr_ename
FROM emp e1 RIGHT OUTER JOIN emp e2
ON e1.mgr = e2.empno;

SELECT e1.empno, e1.ename, e1.mgr, e2.empno AS mgr_empno, e2.ename as mgr_ename
FROM emp e1, emp e2
WHERE e1.mgr(+) = e2.empno;

--�ǽ� 7
SELECT e.deptno, d.dname, e.empno, e.ename, e.sal
from emp e, dept d
where e.deptno = d.deptno and e.sal > 2000 order by e.deptno;

SELECT e.deptno, d.dname, e.empno, e.ename, e.sal
from emp e INNER JOIN dept d ON e.deptno = d.deptno
where e.sal > 2000 order by e.deptno;

--�ǽ� 8
SELECT d.deptno, d.dname, floor(avg(e.sal)) as avg_sal, max(e.sal) as max_sal, min(e.sal) as min_sal, count(dname) as cnt 
from emp e, dept d
where d.deptno = d.deptno
GROUP BY d.deptno, d.dname 
order by e.deptno;


SELECT d.deptno, d.dname, floor(avg(e.sal)) as avg_sal, max(e.sal) as max_sal, min(e.sal) as min_sal, count(dname) as cnt 
from emp e inner join dept d on e.deptno = d.deptno
GROUP BY d.deptno, d.dname 
order by e.deptno;

--�ǽ� 9
SELECT d.deptno, d.dname, e.ename, e.ename, e.job, e.sal
from emp e right outer join dept d on e.deptno = d.deptno
order by d.deptno, e.empno;

--�ǽ� 10
select e1.deptno, d1.dname, e1.empno, e1.ename, e1.mgr, e1.sal, e1.deptno, s.losal, s.hisal, s.grade, e2.empno as mgr_empno, e2.ename as mgr_ename
from emp e1 right outer join dept d1 on e1.deptno = d1.deptno
LEFT outer join salgrade s on e1.sal between s.losal and s.hisal
left outer join emp e2 on e1.mgr = e2.empno
order by d1.deptno, e1.empno;

select d1.deptno, d1.dname, e1.empno, e1.ename, e1.mgr, e1.sal, e1.deptno, s.losal, s.hisal, s.grade, e2.empno as mgr_empno, e2.ename as mgr_ename
from emp e1, dept d1, salgrade s, emp e2
where e1.deptno(+) 
= d1.deptno and e1.sal between s.losal(+) and s.hisal(+) and e1.mgr = e2.empno(+)
order by e1.DEPTNO;

