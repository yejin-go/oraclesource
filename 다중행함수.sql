--sum : 합계를 구하는 함수
SELECT SUM(sal), SUM(DISTINCT sal), SUM(all sal) from emp;

--count : 개수
SELECT COUNT(*) FROM emp;

--부서 번호가 30번인 직원 수 구하기
SELECT count(*) from emp where deptno=30;

SELECT COUNT(sal), COUNT(DISTINCT sal), COUNT(all sal) from emp;

--MAX(최대값), MIN(최소값)
SELECT MAX(sal), MIN(sal) from emp;

--부서번호가 20인 사원의 입사일 중 가장 최근인 입사일 구하기.
SELECT max(hiredate) from emp where deptno=20;

--AVG : 평균(average)
SELECT AVG(trunc(SAL, 3)) as avg_sal from emp;

SELECT avg(sal) from emp where deptno=30;

SELECT avg(distinct sal) from emp;

--부서별 월급의 평균을 알고 싶다면?
SELECT avg(sal) from emp where deptno = 30;
SELECT avg(sal) from emp where deptno = 20;
SELECT avg(sal) from emp where deptno = 10;
--group by : 결과값을 원하는 열로 묶어서 출력 
SELECT deptno, avg(sal) from emp GROUP BY deptno;

--부서번호별 추가수당 평균 구하기
SELECT deptno, avg(comm)from emp group by deptno;

--부서번호, 직책별 급여 평균 구하기
SELECT deptno, avg(sal), job 
from emp 
group by deptno, job 
order by deptno, job;

-- group by 절에 포함 안되는 열을 select에 포함시키면 안됨

--emp 테이블의 부서별 직책의 평균 급여가 500이상인 사원들의
--부서번호, 직책, 부서별 직책의 평균 급여 출력
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

--실습5
SELECT deptno, floor(avg(sal)) as avg_sal, max(sal)as max_sal, min(sal)as min_sal, count(*)as cnt 
from emp
Group by deptno;

--실습6
SELECT job, count(job)
from emp
Group by job
having count(job)>=3;

--실습7
SELECT TO_CHAR(hiredate, 'YYYY') as hireyear, deptno, count(*)as cnt
from emp
Group by TO_CHAR(hiredate, 'YYYY'),deptno;

--조인 
--나올 수 있는 모든 조합을 조회해 줌
SELECT * FROM emp, dept ORDER BY empno; --56행
SELECT count(*) FROM emp, dept ORDER BY empno; --(56행)

SELECT * from dept; --4행
SELECT * from emp; --14행

--1)내부조인(등가조인)
SELECT *
FROM emp, dept
where emp.deptno = dept.deptno -- 조인기준
order by empno;

SELECT *
FROM emp e, dept d
where e.deptno = d.deptno -- 조인기준
order by empno;

SELECT *
FROM emp e Inner join dept d
on e.deptno = d.deptno -- 조인기준
order by empno;

--두 테이블에 같은 이름의 필드가 존재하는 경우,
--어느 테이블에 있는 필드를 가지고 올 것인지 적시해주어야 함.
SELECT empno, ename, job, d.deptno, dname
FROM emp e, dept d
where e.deptno = d.deptno -- 조인기준
order by empno;

--emp테이블과 dept테이블을 조인하여 empno, ename, sal, deptno,
--dname, loc를 조회한다. 단, 급여가 3000이상인 사원만 출력.
SELECT e.empno, e.ename, e.sal, d.deptno, d.dname, d.loc
FROM emp e, dept d
where e.deptno = d.deptno AND sal >=3000;

--emp 테이블의 별칭을 e로, dept 테이블의 별칭을 d로 하여
--급여가 2500이하이고, 사원번호가 9999이하인 사원의 정보를 출력
SELECT *
FROM emp e, dept d
where e.deptno = d.deptno AND sal <=2500 AND e.empno <= 9999;

--emp테이블의 별칭을 e로, salgrade테이블의 별칭을 s로 하여
--각 사원의 정보와 더불어 사원의 등급 정보를 출력
SELECT *
FROM emp e, salgrade s
where e.sal between s.losal and s.hisal;

--2)셀프조인(자체조인) : 조인 테이블이 자기 자신 테이블일 때
SELECT * FROM emp;

SELECT e1.empno, e1.ename, e1.mgr, e2.empno AS mgr_empno, e2.ename as mgr_ename
from emp e1, emp e2
where e1.mgr = e2.empno;

--OUTER JOIN (외부조인) : 조건을 만족하지 않는 데이터 추출
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

--실습 7
SELECT e.deptno, d.dname, e.empno, e.ename, e.sal
from emp e, dept d
where e.deptno = d.deptno and e.sal > 2000 order by e.deptno;

SELECT e.deptno, d.dname, e.empno, e.ename, e.sal
from emp e INNER JOIN dept d ON e.deptno = d.deptno
where e.sal > 2000 order by e.deptno;

--실습 8
SELECT d.deptno, d.dname, floor(avg(e.sal)) as avg_sal, max(e.sal) as max_sal, min(e.sal) as min_sal, count(dname) as cnt 
from emp e, dept d
where d.deptno = d.deptno
GROUP BY d.deptno, d.dname 
order by e.deptno;


SELECT d.deptno, d.dname, floor(avg(e.sal)) as avg_sal, max(e.sal) as max_sal, min(e.sal) as min_sal, count(dname) as cnt 
from emp e inner join dept d on e.deptno = d.deptno
GROUP BY d.deptno, d.dname 
order by e.deptno;

--실습 9
SELECT d.deptno, d.dname, e.ename, e.ename, e.job, e.sal
from emp e right outer join dept d on e.deptno = d.deptno
order by d.deptno, e.empno;

--실습 10
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

