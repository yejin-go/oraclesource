-- SCOTT ������ ������ �ִ� ��� ���̺� ����
select * from tab;

-- emp ���̺��� ����
DESC emp;


-- emp ���̺��� ��� ���� ��ȸ
SELECT * FROM emp;

-- emp ���̺��� Ư�� �ʵ常 ��ȸ
SELECT ename, job, sal FROM emp;

-- �ߺ� ���ڵ� ������ �� ��ȸ : DISTINCT
SELECT DISTINCT deptno FROM emp;

-- alais(��Ī) : AS
SELECT empno AS �����ȣ FROM emp;

SELECT ename, sal, sal*12+comm AS ����, comm FROM emp;

SELECT ename as ����̸�, job AS "�� å" from emp;

-- ORDER BY : �����Ͽ� ��ȸ

-- �ϳ��� ���� ������ �־� ��������(ASC) ��ȸ
SELECT ename,sal FROM emp ORDER BY sal;

-- �ϳ��� ���� ������ �־� �������� ��ȸ
SELECT ename,sal FROM emp ORDER BY sal DESC;

-- ��ü �����͸� ��ȸ(�����ȣ ��������)
SELECT * FROM emp ORDER BY empno;

-- �μ���ȣ�� ���������̰�, �μ���ȣ�� �����ϴٸ� �޿��� ��������
SELECT * FROM emp ORDER BY deptno ASC, sal DESC;

-- ��µǴ� ���� ��Ī�� ������ ���� �����Ѵ�.
-- EMPNO : EMPLOYEE_NO
-- ENAME : EMPLOYEE_NAME
-- MGR : MANAGER
-- SAL : SALARY
-- COMM : COMMISSION
-- DEPTNO : DEPARTMENT_NO

-- �μ���ȣ�� �������� ������������ �����ϵ� �μ� ��ȣ�� ���ٸ� ��� �̸��� �������� �������� �����Ѵ�.

SELECT empno AS EMPLOYEE_NO, ename AS EMPLOYEE_NAME, job, mgr AS MANAGER,
       hiredate, sal AS SALARY, comm AS COMMISSION, deptno AS DEPARTMENT_NO
FROM emp ORDER BY deptno DESC, ename ASC;

-- WHERE : ��ȸ�� �� �� ���� �ֱ�

-- �μ���ȣ�� 30���� ��� ��ȸ
SELECT * FROM emp WHERE deptno = 30;

-- �����ȣ�� 7782�� ��� ��ȸ
SELECT * FROM emp WHERE empno=7782;

-- �μ���ȣ�� 30�̰�, �����å�� SALESMAN ���� ��ȸ
SELECT * FROM emp WHERE deptno=30 AND job='SALESMAN';

-- �����ȣ�� 7499�̰�, �μ���ȣ�� 30�� ���� ��ȸ
SELECT * FROM emp WHERE empno=7499 AND deptno=30;

-- �μ���ȣ�� 30�̰ų�, �����å�� CLERK ���� ��ȸ
SELECT * FROM emp WHERE deptno=30 OR job='CLERK';

-- �μ���ȣ�� 20�̰ų�, �����å�� SALESMAN ���� ��ȸ
SELECT * FROM emp WHERE deptno=20 OR job='SALESMAN';

-- �����ȣ�� 176�� ����� LAST_NAME�� �μ���ȣ ��ȸ
SELECT LAST_NAME, deptno FROM emp W-- SCOTT ������ ������ �ִ� ��� ���̺� ����
select * from tab;

-- emp ���̺��� ����
DESC emp;


-- emp ���̺��� ��� ���� ��ȸ
SELECT * FROM emp;

-- emp ���̺��� Ư�� �ʵ常 ��ȸ
SELECT ename, job, sal FROM emp;



-- �ߺ� ���ڵ� ������ �� ��ȸ : DISTINCT
SELECT DISTINCT deptno FROM emp;

-- alais(��Ī) : AS
SELECT empno AS �����ȣ FROM emp;

SELECT ename, sal, sal*12+comm AS ����, comm FROM emp;

SELECT ename as ����̸�, job AS "�� å" from emp;

-- ORDER BY : �����Ͽ� ��ȸ

-- �ϳ��� ���� ������ �־� ��������(ASC) ��ȸ
SELECT ename,sal FROM emp ORDER BY sal;

-- �ϳ��� ���� ������ �־� �������� ��ȸ
SELECT ename,sal FROM emp ORDER BY sal DESC;

-- ��ü �����͸� ��ȸ(�����ȣ ��������)
SELECT * FROM emp ORDER BY empno;

-- �μ���ȣ�� ���������̰�, �μ���ȣ�� �����ϴٸ� �޿��� ��������
SELECT * FROM emp ORDER BY deptno ASC, sal DESC;

-- ��µǴ� ���� ��Ī�� ������ ���� �����Ѵ�.
-- EMPNO : EMPLOYEE_NO
-- ENAME : EMPLOYEE_NAME
-- MGR : MANAGER
-- SAL : SALARY
-- COMM : COMMISSION
-- DEPTNO : DEPARTMENT_NO

-- �μ���ȣ�� �������� ������������ �����ϵ� �μ� ��ȣ�� ���ٸ� ��� �̸��� �������� �������� �����Ѵ�.

SELECT empno AS EMPLOYEE_NO, ename AS EMPLOYEE_NAME, job, mgr AS MANAGER,
       hiredate, sal AS SALARY, comm AS COMMISSION, deptno AS DEPARTMENT_NO
FROM emp ORDER BY deptno DESC, ename ASC;

-- WHERE : ��ȸ�� �� �� ���� �ֱ�

-- �μ���ȣ�� 30���� ��� ��ȸ
SELECT * FROM emp WHERE deptno = 30;

-- �����ȣ�� 7782�� ��� ��ȸ
SELECT * FROM emp WHERE empno=7782;

-- �μ���ȣ�� 30�̰�, �����å�� SALESMAN ���� ��ȸ
SELECT * FROM emp WHERE deptno=30 AND job='SALESMAN';

-- �����ȣ�� 7499�̰�, �μ���ȣ�� 30�� ���� ��ȸ
SELECT * FROM emp WHERE empno=7499 AND deptno=30;

-- �μ���ȣ�� 30�̰ų�, �����å�� CLERK ���� ��ȸ
SELECT * FROM emp WHERE deptno=30 OR job='CLERK';

-- �μ���ȣ�� 20�̰ų�, �����å�� SALESMAN ���� ��ȸ
SELECT * FROM emp WHERE deptno=20 OR job='SALESMAN';

-- �����ڸ� �̿��� ��ȸ
--sal * 12�� �ݾ��� 36000�� ������ ��ȸ
SELECT * FROM emp WHERE sal*12=36000;

--���迬���� : >, <, >=, <=
SELECT * FROM emp WHERE sal > 3000;
SELECT * FROM emp WHERE sal >= 3000;

SELECT * FROM emp WHERE ename >= 'F' ORDER BY ename;

--�������� : AND, OR
--�޿��� 2500 �̻��̰�, ������ ANALYST�� ������� ��ȸ
SELECT * FROM emp WHERE sal >= 2500 AND job = 'ANALYST';

--������ manager, salesman, clerk �� ������� ��ȸ
SELECT * FROM emp WHERE job='MANAGER' OR job='SALESMAN' OR job='CLERK';

--������� : ���� �׸��� ������ �˻�
--SAL �� 3000�� �ƴ� ������� ���
SELECT * FROM emp WHERE sal !=3000;
SELECT * FROM emp WHERE sal <>3000;
SELECT * FROM emp WHERE sal ^=3000;

-- IN, NOT IN ������
SELECT * FROM emp WHERE job IN ('MANANGER', 'SALESMAN', 'CLERK');

SELECT * FROM emp WHERE job!='MANAGER' And job!='SALESMAN' And job!='CLERK';

SELECT * FROM emp WHERE job NOT IN ('MANANGER', 'SALESMAN', 'CLERK');

--IN�� ����ؼ� �μ���ȣ�� 10, 20���� ������� ��ȸ
SELECT * FROM emp WHERE deptno IN (20, 10) ORDER BY sal DESC;

--BETWEEN A AND B : A�� B ������ ���� ��ȸ
--1) �޿��� 2000�̻� 3000������ ������� ��ȸ
SELECT * FROM emp WHERE sal >=2000 AND sal <=3000;
SELECT * FROM emp WHERE sal BETWEEN 2000 AND 3000;

--NOT BETWEEN A AND B : A�� B ���̾� �ƴ� ���� ��ȸ
--2) �޿��� 2000����, 3000�̻��� ������� ��ȸ
SELECT * FROM emp WHERE sal NOT BETWEEN 2000 AND 3000;

--LIKE ���� : ���ڿ��� �˻��� �� ���(S�� �����ϴ� ~~, H�� ������..., �߰��� t�� �ִ�)
--1)��� �̸��� S�� �����ϴ� ��� ������� ��ȸ�ϱ�
SELECT * FROM emp WHERE ename like 'S%';

--2)��� �̸��� �ι�° ���ڰ� L�� ����� ��ȸ
SELECT * FROM emp WHERE ename like '_L%';

--3)��� �̸��� AM�� ���ԵǾ� �ִ� ����� ��ȸ
SELECT * FROM emp WHERE ename like '%AM%';

--3)��� �̸��� AM�� ���� ����� ��ȸ
SELECT * FROM emp WHERE ename NOT like '%AM%';

--IS NULL
SELECT * FROM emp WHERE comm IS NULL; --  (X)
SELECT * FROM emp WHERE comm IS NULL; --  (O)

--MGR(�Ŵ��� ID)�� NULL�� ������� ��ȸ
SELECT * FROM emp WHERE mgr IS NULL;
--MGR(�Ŵ��� ID)�� NULL�� �ƴ� ������� ��ȸ
SELECT * FROM emp WHERE mgr IS NOT Null;

--���� ������ : ������(UNION), ������(INTERSECT), ������(MINUS)
--deptno �� 10 �� ���̺�� 20�� ���̺��� ����� ���ؼ� ���ؼ� �����ֱ�
SELECT empno, ename, sal, deptno from emp where deptno = 10
UNION
SELECT empno, ename, sal, deptno from emp where deptno = 20;

-- Union�� �⺻������ �ߺ��� ���� �ɷ��� ǥ��.
SELECT empno, ename, sal, deptno from emp where deptno = 10
union ALL --�ߺ��� �������� ���ؼ� ǥ���� ��
SELECT empno, ename, sal, deptno from emp where deptno = 10;

--�μ���ȣ�� 10�� �ƴ� ������� ���� ��ȸ
SELECT empno, ename, sal, deptno FROM emp
MINUS
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 10;

--�μ���ȣ�� 10�� ��������� ��ȸ
SELECT empno, ename, sal, deptno FROM emp
INTERSECT
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 10;

--20, 30�� �μ��� �ٹ��ϰ� �ִ� ����� �� sal�� 2000�ʰ��� ����� ���� �ΰ��� �����
--SELECT���� ����Ͽ�, �����ȣ, �̸�, �޿�, �μ���ȣ�� ����ϴ� SQL�� �ۼ��ϱ�

--1)���� �����ڸ� ������� �ʴ� ���
SELECT empno, ename, sal, deptno 
FROM emp 
WHERE deptno In (20, 30) AND sal > 2000;

--2)���� �����ڸ� ����ϴ� ���
--1.
SELECT empno, ename, sal, deptno FROM emp 
WHERE deptno In (20, 30) 
INTERSECT
SELECT empno, ename, sal, deptno FROM emp 
WHERE sal > 2000;

--2.
SELECT empno, ename, sal, deptno FROM emp
WHERE sal > 2000
MINUS
SELECT empno, ename, sal, deptno FROM emp
WHERE deptno = 10;

--3.
SELECT empno, ename, sal, deptno FROM emp
WHERE sal > 2000 AND deptno = 20
UNION
SELECT empno, ename, sal, deptno FROM emp
WHERE sal > 2000 AND deptno = 30;

--����Ŭ �Լ�
--1)�����Լ� : Upper, Lower, Initcap
--ename�� upper, lower, initcap���� ��ȯ�Ͽ� ��ȸ
SELECT ename, upper(ename), Lower(ename), INITCAP(ename)
FROM emp;

--2)�����Լ� : Length, Lengthb
--DUAL���̺� �̿� (SYS�� �����ϰ� �ִ� ���̺�� �ӽ� �����̳� �Լ��� ������� Ȯ���ϴ� �뵵)
SELECT LENGTH ('
�ѱ�'), LENGTHB ('�ѱ�') FROM DUAL;

--��å �̸��� 6���� �̻��� ������� ���� ����
SELECT * FROM emp WHERE LENGTH(job)>=6;

--���ڿ� �Լ� : substr
SELECT job, substr(job,1,2), substr(job,3,2), substr(job,5) FROM emp;
-- -LENGTH(JOB) = -5
SELECT job, substr(job, -LENGTH(JOB)), substr(job, -LENGTH(JOB),2), substr(JOB,-3) FROM emp;

--���ڿ� �Լ� : INSTR (Ư������ ��ġ ã��)
SELECT instr('HELLO, ORACLE!','L') AS instr_1,
       instr('HELLO, ORACLE!','L', 5) AS instr_2,
       instr('HELLO, ORACLE!','L', 2, 2) AS instr_3
fROM dual;

--���ڿ� �Լ� : REPLACE (ã�Ƽ� �ٲٱ�)
SELECT REPLACE ('�̰��� oracle.', '�̰���', 'This is')
FROM dual;

SELECT '010-1234-5678' AS REPLACE_BEFORE, 
REPLACE ('010-1234-5678','-',' ') AS REPLACE_1,
REPLACE ('010-1234-5678', '-') AS REPLACE_2
FROM dual;

--���ڿ� �Լ� : CONCAT(����)
--empno, ename�� �����Ͽ� ��ȸ
SELECT CONCAT(empno, ename), CONCAT(empno, CONCAT(':',ename))
FROM emp
WHERE ename ='SCOTT';

-- || : ������ �ǹ̷� ���
SELECT empno||ename, empno||':'||ename
FROM emp
WHERE ename ='SCOTT';

--���ڿ� �Լ� : TRIM (��������), LTRIM (���ʰ�������) , RTRIM (�����ʰ�������)
SELECT '     �̰���     ',TRIM('     �̰���     ')
FROM dual;

SELECT '     �̰���     ', RTRIM('     �̰���     ')
FROM dual;

SELECT '     �̰���     ', LTRIM('     �̰���     ')
FROM dual;

--���ڿ� �Լ� : REVERSE
SELECT REVERSE ('Oracle') FROM dual;

--2.�����Լ� : ROUND(�ݿø�), TRUNC(����), CEIL(�Էµ� ���ڿ� ����� ū ����), FLOOR(�Էµ� ���ڿ� ����� ���� ����), MOD(������)
SELECT ROUND(1234.5678) AS ROUND,
       ROUND(1234.5678, 0) AS ROUND_1,
       ROUND(1234.5678, 1) AS ROUND_2,
       ROUND(1234.5678, -1) AS ROUND_MINUS,
       ROUND(1234.5678, -2) AS ROUND_MINUS2
FROM dual;

SELECT TRUNC(1234.5678) AS TRUNC,
       TRUNC(1234.5678, 0) AS TRUNC_1,
       TRUNC(1234.5678, 1) AS TRUNC_2,
       TRUNC(1234.5678, -1) AS TRUNC_MINUS,
       TRUNC(1234.5678, -2) AS TRUNC_MINUS2
FROM dual;

SELECT CEIL (3.14), FLOOR(3.14), CEIL(-3.14), FLOOR(-3.14)
FROM dual;

SELECT MOD(15,6), MOD(10,2), MOD(11,2) FROM dual;

--3. ��¥�Լ� : SYSDATE, CURRENT_DATE, CURRENT_TIMESTAMP

SELECT SYSDATE, CURRENT_DATE, CURRENT_TIMESTAMP FROM dual;

--��¥�����ʹ� ������ ������ : ��¥ ������ +1, -1, ��¥������ - ��¥������
--��¥������ + ��¥�����ʹ� �ȵ�
SELECT SYSDATE AS NOW, SYSDATE-1 AS YESTERDAY, SYSDATE+1 AS TOMORROW
FROM dual;

--��¥�Լ� : ADD_MONTHS
SELECT SYSDATE, ADD_MONTHs(SYSDATE, 3) FROM dual;

--�Ի� 10�ֳ��� �Ǵ� ����� ��ȸ
SELECT empno, ename, hiredate, ADD_MONTHS(hiredate, 12*10) FROM emp;

--�Ի� 38�� �̸��� ����� ��ȸ
SELECT * FROM emp WHERE ADD_MONTHS(hiredate,12*38) > SYSDATE;

--��¥�Լ� : Month_Between (�� ��¥ ������ ����)
SELECT * FROM emp WHERE MONTHs_BETWEEN(SYSDATE, HIREDATE) < 456;

SELECT empno, ename, hiredate, SYSDATE, Months_BETWEEN(hiredate, sysdate) as months1,
months_between(sysdate, hiredate) As months2, trunc(months_between(sysdate,hiredate))
From emp;

--��¥�Լ�  : NEXT_DAY, LAST_DAY
SELECT SYSDATE, NEXT_DAY(SYSDATE,'������'), LAST_DAY(SYSDATE)
FROM Dual;

--4. ����ȯ �Լ� : TO_CHAR (��¥, ���ڵ����͸� ���ڷ� ��ȯ), 
--                TO_NUMBER (���� �����͸� ���ڷ� ��ȯ),
--                TO_DATE (���� �����͸� ��¥�� ��ȯ)
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') AS ���糯¥ FROM Dual;
SELECT TO_CHAR(SYSDATE, 'MM') AS ���糯¥ FROM Dual;
SELECT TO_CHAR(SYSDATE, 'DD') AS ���糯¥ FROM Dual;
SELECT TO_CHAR(SYSDATE, 'Mon') AS ���糯¥ FROM Dual;
SELECT TO_CHAR(SYSDATE, 'Day') AS ���糯¥ FROM Dual; --������ ����
SELECT TO_CHAR(SYSDATE, 'HH12:MI:SS') AS ����ð� FROM Dual;
-- AM�̳� PM���� �����̳� ���� �ƹ��ų� ���ð��� �°� ����.
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS AM') AS ����ð� FROM Dual; 

--���� ��¥�� ��/��/��/�ð� ǥ��
SELECT TO_char(SYSDATE, 'YYYY/MM/DD hh24:MI:SS am') AS ���ó�¥�ð� from dual; 

--(���� �����Ϳ� ���� �����͸� �����, ����Ŭ���� �˾Ƽ� ���� ��ȯ�Ͽ� ��������)
SELECT 1300-'1500', '1300'+1500 FROM dual;

--���� ��Ȯ�ϰ�... ��_�ѹ� �̿��ϱ�. (
SELECT 1300-TO_NUMBER('1500'), TO_NUMBER('1300')+1500 from dual;

SELECT TO_NUMBER('1,300')- TO_NUMBER('1,500') from dual; --(X :��ġ ������)
SELECT TO_NUMBER('1,300','999,999')-TO_NUMBER('1,500','999,999') FROM dual; --(O : '999,999'�� ��ġ ���� ����. �Ǵ� 9��� 0��� ����)
-- (9�� 0���� ��ġ ������ �� �� ����)
SELECT TO_NUMBER('1,300,000','000,000,000')-TO_NUMBER('1,500','000,000') FROM dual;

SELECT SAL, TO_char(SAL,'$999,999') AS SAL_$,
       TO_Char(SAL,'L999,999') AS SAL_L,
       TO_CHAR(SAL, '$999,999.00') AS SAL_1,
       TO_Char(SAL,'000,999,999.00') AS SAL_2,
       TO_Char(SAL,'000999999.99') AS SAL_3,
       TO_Char(SAL,'999,999.00') AS SAL_4
FROM emp;

SELECT TO_DATE ('2020-11-05', 'YYYY/MM/DD') AS TODATE,
       TO_DATE ('20201105', 'YYYY-MM-DD') AS TODATE2 FROM DUAL;

-- 1981�� 6�� 1�� ���Ŀ� �Ի��� ������� ��ȸ
SELECT * from emp
where hiredate >= to_date(;

-- ��ó�� �Լ� gkatn : NVL, NVL2
SELECT empno, ename, sal, comm, sal+comm from emp;

SELECT empno, ename, sal, comm, sal+comm, nvl(comm,0), sal+nvL(comm,0) 
from emp;

SELECT empno, ename, sal, comm, sal+comm, nvl2(comm,'0','X'), nvL2(comm,sal*12+comm,sal*12) AS annsal
from emp;

--DECODE�Լ��� CASE��
--job_id�� manager, salesman, analyst �� ������ ��츶�� �ٸ� ������ �����ϰ� �ʹٸ�? 

SELECT empno,ename,job,sal,decode(JOB, 
                                 'manager',sal*1.1,        
                                 'salesman,sal*1.05, 'analyst', sal*1.03,) 
) AS UPSAL from emp;
