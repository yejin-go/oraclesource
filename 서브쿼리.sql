--존스의 급여보다 높은 급여를 받는 사원들을 출력하기

--존스의 급여 알아내기
SELECT sal FROM emp where ename='JONES';

--높은 급여 사원 출력하기
SELECT * FROM emp where sal > 2975;

--서브쿼리란? 쿼리문 안에 다른 쿼리문을 포함하고 있는 상태
--단일행 서브쿼리 : <, >, = ,<=, >=, 같지않음 (<>, ^=, !=)
SELECT * FROM emp where sal > (SELECT sal FROM emp where ename='JONES');

--사원이름이 ALLEN인 사원의 추가수당보다 많이 받는 사원을 출력
SELECT * FROM emp where comm > (SELECT comm fROM emp where ename = 'ALLEN');

--사원이름이 WARD인 사원의 입사일보다 빨리 입사한 사원을 출력
SELECT * FROM emp where hiredate > (SELECT hiredate fROM emp where ename ='WARD');

--20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 높은 급여를 받는 사원 출력
SELECT * FROM emp where deptno = 20 and sal > (SELECT avg(sal) fROM emp);

--20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 높은 급여를 받는 사원 출력하되, 부서명과 지역 위치도 함께 출력
SELECT e.ename, e.sal, d.deptno, d.dname, d.loc FROM emp e, dept d WHERE e.deptno = d.deptno and deptno = 20 and sal > (SELECT avg(sal) fROM emp);

--서브쿼리 결과가 2개 이상 나오는 경우라면 단일행 서브쿼리의 연산자는 사용 불가
--다중행 서브쿼리

SELECT max(sal) FROM emp Group by deptno;

SELECT * FROM emp WHERE sal >=(SELECT max(sal) FROM emp Group by deptno); -- 에러남

--In
SELECT * FROM emp WHERE sal IN(SELECT max(sal) FROM emp Group by deptno); 
--ANY / SOME
-- =any, =some : in의 수행결과와 같게 나옴. 단, in을 더 많이 씀.
SELECT * FROM emp WHERE sal =ANY(SELECT max(sal) FROM emp Group by deptno); 
SELECT * FROM emp WHERE sal =SOME(SELECT max(sal) FROM emp Group by deptno); 

--30번 부서 사원들의 최대 급여보다 적은 급여를 받는 사원 출력
SELECT max(sal) FROM emp where deptno = 30;
SELECT * FROM emp where sal <any(SELECT max(sal) FROM emp where deptno = 30); 
SELECT * FROM emp where sal <any(SELECT sal FROM emp where deptno = 30);
SELECT distinct sal from emp where deptno = 30;

--30번 부서 사원들의 최소 급여보다 많은 급여를 받는 사원 출력
SELECT * FROM emp where sal > ANY (SELECT sal from emp where deptno = 30);

--ALL : 서브 쿼리의 결과를 모두 만족하는 메인 쿼리를 추출할 때
SELECT * FROM emp where sal < ALL (SELECT sal from emp where deptno = 30);

--EXISTS : In과 비슷한 개념. 단, in보다 성능이 우수.
--서브 쿼리 결과가 존재하면 메인쿼리 결과도 출력함
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

