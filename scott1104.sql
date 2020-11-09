-- SCOTT 계정이 가지고 있는 모든 테이블 보기
select * from tab;

-- emp 테이블의 구조
DESC emp;


-- emp 테이블의 모든 내용 조회
SELECT * FROM emp;

-- emp 테이블의 특정 필드만 조회
SELECT ename, job, sal FROM emp;

-- 중복 레코드 제거한 후 조회 : DISTINCT
SELECT DISTINCT deptno FROM emp;

-- alais(별칭) : AS
SELECT empno AS 사원번호 FROM emp;

SELECT ename, sal, sal*12+comm AS 연봉, comm FROM emp;

SELECT ename as 사원이름, job AS "직 책" from emp;

-- ORDER BY : 정렬하여 조회

-- 하나의 열로 기준을 주어 오름차순(ASC) 조회
SELECT ename,sal FROM emp ORDER BY sal;

-- 하나의 열로 기준을 주어 내림차순 조회
SELECT ename,sal FROM emp ORDER BY sal DESC;

-- 전체 데이터를 조회(사원번호 오름차순)
SELECT * FROM emp ORDER BY empno;

-- 부서번호의 오름차순이고, 부서번호가 동일하다면 급여의 내림차순
SELECT * FROM emp ORDER BY deptno ASC, sal DESC;

-- 출력되는 열의 별칭을 다음과 같이 지정한다.
-- EMPNO : EMPLOYEE_NO
-- ENAME : EMPLOYEE_NAME
-- MGR : MANAGER
-- SAL : SALARY
-- COMM : COMMISSION
-- DEPTNO : DEPARTMENT_NO

-- 부서번호를 기준으로 내림차순으로 정렬하되 부서 번호가 같다면 사원 이름을 기준으로 오름차순 정렬한다.

SELECT empno AS EMPLOYEE_NO, ename AS EMPLOYEE_NAME, job, mgr AS MANAGER,
       hiredate, sal AS SALARY, comm AS COMMISSION, deptno AS DEPARTMENT_NO
FROM emp ORDER BY deptno DESC, ename ASC;

-- WHERE : 조회를 할 때 기준 주기

-- 부서번호가 30번인 사원 조회
SELECT * FROM emp WHERE deptno = 30;

-- 사원번호가 7782인 사원 조회
SELECT * FROM emp WHERE empno=7782;

-- 부서번호가 30이고, 사원직책이 SALESMAN 정보 조회
SELECT * FROM emp WHERE deptno=30 AND job='SALESMAN';

-- 사원번호가 7499이고, 부서번호가 30인 정보 조회
SELECT * FROM emp WHERE empno=7499 AND deptno=30;

-- 부서번호가 30이거나, 사원직책이 CLERK 정보 조회
SELECT * FROM emp WHERE deptno=30 OR job='CLERK';

-- 부서번호가 20이거나, 사원직책이 SALESMAN 정보 조회
SELECT * FROM emp WHERE deptno=20 OR job='SALESMAN';

-- 사원번호가 176인 사람의 LAST_NAME과 부서번호 조회
SELECT LAST_NAME, deptno FROM emp W-- SCOTT 계정이 가지고 있는 모든 테이블 보기
select * from tab;

-- emp 테이블의 구조
DESC emp;


-- emp 테이블의 모든 내용 조회
SELECT * FROM emp;

-- emp 테이블의 특정 필드만 조회
SELECT ename, job, sal FROM emp;



-- 중복 레코드 제거한 후 조회 : DISTINCT
SELECT DISTINCT deptno FROM emp;

-- alais(별칭) : AS
SELECT empno AS 사원번호 FROM emp;

SELECT ename, sal, sal*12+comm AS 연봉, comm FROM emp;

SELECT ename as 사원이름, job AS "직 책" from emp;

-- ORDER BY : 정렬하여 조회

-- 하나의 열로 기준을 주어 오름차순(ASC) 조회
SELECT ename,sal FROM emp ORDER BY sal;

-- 하나의 열로 기준을 주어 내림차순 조회
SELECT ename,sal FROM emp ORDER BY sal DESC;

-- 전체 데이터를 조회(사원번호 오름차순)
SELECT * FROM emp ORDER BY empno;

-- 부서번호의 오름차순이고, 부서번호가 동일하다면 급여의 내림차순
SELECT * FROM emp ORDER BY deptno ASC, sal DESC;

-- 출력되는 열의 별칭을 다음과 같이 지정한다.
-- EMPNO : EMPLOYEE_NO
-- ENAME : EMPLOYEE_NAME
-- MGR : MANAGER
-- SAL : SALARY
-- COMM : COMMISSION
-- DEPTNO : DEPARTMENT_NO

-- 부서번호를 기준으로 내림차순으로 정렬하되 부서 번호가 같다면 사원 이름을 기준으로 오름차순 정렬한다.

SELECT empno AS EMPLOYEE_NO, ename AS EMPLOYEE_NAME, job, mgr AS MANAGER,
       hiredate, sal AS SALARY, comm AS COMMISSION, deptno AS DEPARTMENT_NO
FROM emp ORDER BY deptno DESC, ename ASC;

-- WHERE : 조회를 할 때 기준 주기

-- 부서번호가 30번인 사원 조회
SELECT * FROM emp WHERE deptno = 30;

-- 사원번호가 7782인 사원 조회
SELECT * FROM emp WHERE empno=7782;

-- 부서번호가 30이고, 사원직책이 SALESMAN 정보 조회
SELECT * FROM emp WHERE deptno=30 AND job='SALESMAN';

-- 사원번호가 7499이고, 부서번호가 30인 정보 조회
SELECT * FROM emp WHERE empno=7499 AND deptno=30;

-- 부서번호가 30이거나, 사원직책이 CLERK 정보 조회
SELECT * FROM emp WHERE deptno=30 OR job='CLERK';

-- 부서번호가 20이거나, 사원직책이 SALESMAN 정보 조회
SELECT * FROM emp WHERE deptno=20 OR job='SALESMAN';

-- 연산자를 이용한 조회
--sal * 12한 금액이 36000인 데이터 조회
SELECT * FROM emp WHERE sal*12=36000;

--관계연산자 : >, <, >=, <=
SELECT * FROM emp WHERE sal > 3000;
SELECT * FROM emp WHERE sal >= 3000;

SELECT * FROM emp WHERE ename >= 'F' ORDER BY ename;

--논리연산자 : AND, OR
--급여가 2500 이상이고, 직업이 ANALYST인 사원정보 조회
SELECT * FROM emp WHERE sal >= 2500 AND job = 'ANALYST';

--직무가 manager, salesman, clerk 인 사원정보 조회
SELECT * FROM emp WHERE job='MANAGER' OR job='SALESMAN' OR job='CLERK';

--등가연산자 : 양쪽 항목이 같은지 검사
--SAL 이 3000이 아닌 사원정보 출력
SELECT * FROM emp WHERE sal !=3000;
SELECT * FROM emp WHERE sal <>3000;
SELECT * FROM emp WHERE sal ^=3000;

-- IN, NOT IN 연산자
SELECT * FROM emp WHERE job IN ('MANANGER', 'SALESMAN', 'CLERK');

SELECT * FROM emp WHERE job!='MANAGER' And job!='SALESMAN' And job!='CLERK';

SELECT * FROM emp WHERE job NOT IN ('MANANGER', 'SALESMAN', 'CLERK');

--IN을 사용해서 부서번호가 10, 20번인 사원정보 조회
SELECT * FROM emp WHERE deptno IN (20, 10) ORDER BY sal DESC;

--BETWEEN A AND B : A와 B 사이인 정보 조회
--1) 급여가 2000이상 3000이하인 사원정보 조회
SELECT * FROM emp WHERE sal >=2000 AND sal <=3000;
SELECT * FROM emp WHERE sal BETWEEN 2000 AND 3000;

--NOT BETWEEN A AND B : A와 B 사이아 아닌 정보 조회
--2) 급여가 2000이하, 3000이상인 사원정보 조회
SELECT * FROM emp WHERE sal NOT BETWEEN 2000 AND 3000;

--LIKE 구문 : 문자열을 검색할 때 사용(S로 시작하는 ~~, H로 끝나는..., 중간에 t가 있는)
--1)사원 이름이 S로 시작하는 모든 사원정보 조회하기
SELECT * FROM emp WHERE ename like 'S%';

--2)사원 이름의 두번째 글자가 L인 사원만 조회
SELECT * FROM emp WHERE ename like '_L%';

--3)사원 이름에 AM이 포함되어 있는 사원만 조회
SELECT * FROM emp WHERE ename like '%AM%';

--3)사원 이름에 AM이 없는 사원만 조회
SELECT * FROM emp WHERE ename NOT like '%AM%';

--IS NULL
SELECT * FROM emp WHERE comm IS NULL; --  (X)
SELECT * FROM emp WHERE comm IS NULL; --  (O)

--MGR(매니져 ID)가 NULL인 사원정보 조회
SELECT * FROM emp WHERE mgr IS NULL;
--MGR(매니져 ID)가 NULL이 아닌 사원정보 조회
SELECT * FROM emp WHERE mgr IS NOT Null;

--집합 연산자 : 합집합(UNION), 교집합(INTERSECT), 차집합(MINUS)
--deptno 가 10 인 테이블과 20인 테이블의 결과를 구해서 합해서 보여주기
SELECT empno, ename, sal, deptno from emp where deptno = 10
UNION
SELECT empno, ename, sal, deptno from emp where deptno = 20;

-- Union은 기본적으로 중복된 정보 걸러서 표시.
SELECT empno, ename, sal, deptno from emp where deptno = 10
union ALL --중복된 정보까지 합해서 표시해 줌
SELECT empno, ename, sal, deptno from emp where deptno = 10;

--부서번호가 10이 아닌 사원들의 정보 조회
SELECT empno, ename, sal, deptno FROM emp
MINUS
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 10;

--부서번호가 10인 사원정보를 조회
SELECT empno, ename, sal, deptno FROM emp
INTERSECT
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 10;

--20, 30번 부서에 근무하고 있는 사원들 중 sal이 2000초과인 사원을 다음 두가지 방식의
--SELECT문을 사용하여, 사원번호, 이름, 급여, 부서번호를 출력하는 SQL문 작성하기

--1)집합 연산자를 사용하지 않는 방식
SELECT empno, ename, sal, deptno 
FROM emp 
WHERE deptno In (20, 30) AND sal > 2000;

--2)집합 연산자를 사용하는 방식
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

--오라클 함수
--1)문자함수 : Upper, Lower, Initcap
--ename을 upper, lower, initcap으로 변환하여 조회
SELECT ename, upper(ename), Lower(ename), INITCAP(ename)
FROM emp;

--2)문자함수 : Length, Lengthb
--DUAL테이블 이용 (SYS가 소유하고 있는 테이블로 임시 연산이나 함수의 결과값을 확인하는 용도)
SELECT LENGTH ('
한글'), LENGTHB ('한글') FROM DUAL;

--직책 이름이 6글자 이상인 사원들의 정보 추출
SELECT * FROM emp WHERE LENGTH(job)>=6;

--문자열 함수 : substr
SELECT job, substr(job,1,2), substr(job,3,2), substr(job,5) FROM emp;
-- -LENGTH(JOB) = -5
SELECT job, substr(job, -LENGTH(JOB)), substr(job, -LENGTH(JOB),2), substr(JOB,-3) FROM emp;

--문자열 함수 : INSTR (특정문자 위치 찾기)
SELECT instr('HELLO, ORACLE!','L') AS instr_1,
       instr('HELLO, ORACLE!','L', 5) AS instr_2,
       instr('HELLO, ORACLE!','L', 2, 2) AS instr_3
fROM dual;

--문자열 함수 : REPLACE (찾아서 바꾸기)
SELECT REPLACE ('이것이 oracle.', '이것이', 'This is')
FROM dual;

SELECT '010-1234-5678' AS REPLACE_BEFORE, 
REPLACE ('010-1234-5678','-',' ') AS REPLACE_1,
REPLACE ('010-1234-5678', '-') AS REPLACE_2
FROM dual;

--문자열 함수 : CONCAT(연결)
--empno, ename을 연결하여 조회
SELECT CONCAT(empno, ename), CONCAT(empno, CONCAT(':',ename))
FROM emp
WHERE ename ='SCOTT';

-- || : 연결의 의미로 사용
SELECT empno||ename, empno||':'||ename
FROM emp
WHERE ename ='SCOTT';

--문자열 함수 : TRIM (공백제거), LTRIM (왼쪽공백제거) , RTRIM (오른쪽공백제거)
SELECT '     이것이     ',TRIM('     이것이     ')
FROM dual;

SELECT '     이것이     ', RTRIM('     이것이     ')
FROM dual;

SELECT '     이것이     ', LTRIM('     이것이     ')
FROM dual;

--문자열 함수 : REVERSE
SELECT REVERSE ('Oracle') FROM dual;

--2.숫자함수 : ROUND(반올림), TRUNC(버림), CEIL(입력된 숫자와 가까운 큰 정수), FLOOR(입력된 숫자와 가까운 작은 정수), MOD(나머지)
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

--3. 날짜함수 : SYSDATE, CURRENT_DATE, CURRENT_TIMESTAMP

SELECT SYSDATE, CURRENT_DATE, CURRENT_TIMESTAMP FROM dual;

--날짜데이터는 연산이 가능함 : 날짜 데이터 +1, -1, 날짜데이터 - 날짜데이터
--날짜데이터 + 날짜데이터는 안됨
SELECT SYSDATE AS NOW, SYSDATE-1 AS YESTERDAY, SYSDATE+1 AS TOMORROW
FROM dual;

--날짜함수 : ADD_MONTHS
SELECT SYSDATE, ADD_MONTHs(SYSDATE, 3) FROM dual;

--입사 10주년이 되는 사원들 조회
SELECT empno, ename, hiredate, ADD_MONTHS(hiredate, 12*10) FROM emp;

--입사 38년 미만인 사원들 조회
SELECT * FROM emp WHERE ADD_MONTHS(hiredate,12*38) > SYSDATE;

--날짜함수 : Month_Between (두 날짜 사이의 차이)
SELECT * FROM emp WHERE MONTHs_BETWEEN(SYSDATE, HIREDATE) < 456;

SELECT empno, ename, hiredate, SYSDATE, Months_BETWEEN(hiredate, sysdate) as months1,
months_between(sysdate, hiredate) As months2, trunc(months_between(sysdate,hiredate))
From emp;

--날짜함수  : NEXT_DAY, LAST_DAY
SELECT SYSDATE, NEXT_DAY(SYSDATE,'월요일'), LAST_DAY(SYSDATE)
FROM Dual;

--4. 형변환 함수 : TO_CHAR (날짜, 숫자데이터를 문자로 변환), 
--                TO_NUMBER (문자 데이터를 숫자로 변환),
--                TO_DATE (문자 데이터를 날짜로 변환)
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') AS 현재날짜 FROM Dual;
SELECT TO_CHAR(SYSDATE, 'MM') AS 현재날짜 FROM Dual;
SELECT TO_CHAR(SYSDATE, 'DD') AS 현재날짜 FROM Dual;
SELECT TO_CHAR(SYSDATE, 'Mon') AS 현재날짜 FROM Dual;
SELECT TO_CHAR(SYSDATE, 'Day') AS 현재날짜 FROM Dual; --요일이 나옴
SELECT TO_CHAR(SYSDATE, 'HH12:MI:SS') AS 현재시간 FROM Dual;
-- AM이나 PM쓰면 오전이나 오후 아무거나 현시각에 맞게 나옴.
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS AM') AS 현재시간 FROM Dual; 

--오늘 날짜를 년/월/일/시각 표현
SELECT TO_char(SYSDATE, 'YYYY/MM/DD hh24:MI:SS am') AS 오늘날짜시간 from dual; 

--(숫자 데이터와 문자 데이터를 연산시, 오라클에서 알아서 형을 변환하여 연산해줌)
SELECT 1300-'1500', '1300'+1500 FROM dual;

--좀더 정확하게... 투_넘버 이용하기. (
SELECT 1300-TO_NUMBER('1500'), TO_NUMBER('1300')+1500 from dual;

SELECT TO_NUMBER('1,300')- TO_NUMBER('1,500') from dual; --(X :수치 오류남)
SELECT TO_NUMBER('1,300','999,999')-TO_NUMBER('1,500','999,999') FROM dual; --(O : '999,999'로 수치 지정 가능. 또는 9대신 0사용 가능)
-- (9나 0으로 수치 지정해 줄 수 있음)
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

-- 1981년 6월 1일 이후에 입사한 사원정보 조회
SELECT * from emp
where hiredate >= to_date(;

--1981년6월1일 이후에 입사한 사원정보 조회
select*from emp 
where hiredate >=to_date('81/06/01','yyyy/mm/dd');

select to_date('2019-12-20')-to_date('2019-10-20') from dual;
--select '2019-12-20'-'2019-10-20' from dual; //오류뜸에대한 처리

-- 널처리 함수 gkatn : NVL, NVL2
SELECT empno, ename, sal, comm, sal+comm from emp;

SELECT empno, ename, sal, comm, sal+comm, nvl(comm,0), sal+nvL(comm,0) 
from emp;

SELECT empno, ename, sal, comm, sal+comm, nvl2(comm,'0','X'), nvL2(comm,sal*12+comm,sal*12) AS annsal
from emp;

--DECODE함수와 CASE문
--job이 manager인경우, salesman,analyst 경우에 각각의 다른 비율을 적용하고 싶다면?

SELECT empno,ename,job,sal, DECODE(JOB,'MANAGER',SAL*1.1,
                                        'SALESMAN',SAL*1.05,
                                        'ANALYST',SAL,
                                        SAL*1.03) AS UPSAL 
FROM EMP;

SELECT empno,ename,job,sal, CASE JOB
                                WHEN 'MANAGER' THEN SAL*1.1
                                WHEN 'SALESMAN'THEN SAL*1.05
                                WHEN 'ANALYST'THEN SAL
                                ELSE  SAL*1.03 
                            END AS UPSAL 
FROM EMP;

SELECT empno,ename,job,sal,case
                            WHEN COMM IS NULL THEN '해당사항없음'
                            WHEN COMM=0 THEN '수당없음'
                            WHEN COMM>0 THEN '수당 : ' || COMM
                           END AS COMM_TEXT FROM EMP;
 

) AS UPSAL from emp;

--ppt 04 실습 01
SELECT ename, sal, trunc(sal/21.5, 2)as day_pay, round(sal/21.5/8, 1) as time_pay 
from emp;

--ppt 04 실습 02
SELECT ename, hiredate, next_day(ADD_MONTHS(hiredate,3),'월요일') as r_job, 
case 
when comm is null then 'n/a'  
when comm=0 then '0'
when comm>0 then '' || comm
End as comm_text
from emp;

--또는
SELECT ename, hiredate, next_day(ADD_MONTHS(hiredate,3),'월요일') as r_job, 
nvl(to_char(comm),'n/a') as comm
from emp;


--ppt 04 실습 03
SELECT ename, mgr, 
case
when mgr is null then '0000'
when mgr >= 7500 and mgr < 7600 then '5555'
when mgr >= 7600 and mgr < 7700 then '6666'
when mgr >= 7700 and mgr < 7800 then '7777'
when mgr >= 7800 and mgr < 7900 then '8888'
when mgr >= 7900 then '' || mgr
End as chg_mgr     
from emp;

--또는
SELECT substr(to_char(mgr)1,2) from emp;
SELECT empno, ename, mgr,
substr(to_char(mgr)1,2),
Null,'0000',
'75', '5555',
'76', '6666',
'77', '7777',
'78', '8888',
'9999') as chg_mgr     
from emp;

--HAVING  : groub by 절에 조건을 줄 때 사용한다. (where 는 노노!!!!!!)
--각 부서의 직책별 평균 급여를 구하되 그 평균 급여가 2000 이상인 그룹만 출력
SELECT deptno, job, avg(sal)
from emp
GROUP BY deptno, job
HAVING avg(sal) >= 2000
order by deptno, job;

--피피티 서브쿼리 실습 1
SELECT *
from emp
where job = (Select job from emp where ename = 'ALLEN');

SELECT e.job, e.empno, e.ename, e.sal
from emp e, dept d
where e.deptno = d.deptno and e.job_id in (Select job from emp where ename = 'ALLEN');


--피피티 서브쿼리 실습 2
SELECT e.empno, e.ename, e.deptno, e.hiredate, e.sal, s.grade
from emp e, salgrade s
where e.sal > (SELECT distinct avg(sal) from emp)
order by sal desc, empno;

SELECT e.empno, e.ename, d.deptno, e.hiredate, d.loc, e.sal, s.grade
FROM emp e, dept d, salgrade s
where e.deptno = d.deptno and e.sal between s.losal and s.hisal and e.sal > (select avg(sal) from emp) 
order by e.sal desc, e.empno asc;

--다중 열 서브 쿼리 : 서브 쿼리의 select문에 비교할 칼럼이 여러개 나오는 방식
SELECT * fROM emp where (deptno, sal) IN (SELECT deptno, MAX(SAL) FROM emp GROUP BY deptno);

--FROM 절에 사용하는 서브쿼리(인라인 뷰)
SELECT E.empno, E.ename, D.deptno, D.dname, D.loc 
FROM (SELECT * FROM emp WHERE deptno = 10) E, (SELECT * FROM dept) D
WHERE E.DEPTNO = D.DEPTNO;

--SELECT 절에 사용하는 서브쿼리 : 스칼라 서브쿼리

--<생략>

--피피티 실습
-- 1) 10번 부서에 근무하는 사원 중 30번 부서에는 존재하지 않는 직책을 가진 사원들의 사원정보, 부서정보 출력
SELECT e.empno, e.ename, e.job, d.deptno, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno and e.job not in (SELECT distinct job from emp where deptno = 30)
      and e.deptno = 10;

--직책이 salesman인 사람들의 최고 급여보다 높은 급여를 받는 사원들의 사원정보
--급여등급 정보를 출력하는 sql문 작성. 단, 서브쿼리를 활용할 때 다중행 함수를 사용하는 방법과 사용하지 않는 방법을 통해
--사원번호를 기준으로 오름차순 정렬 출력.
SELECT empno, ename, sal, (SELECT grade FROM salgrade where sal between losal and hisal) as GRADE
FROM emp
WHERE sal > (SELECT MAX(sal) FROM emp WHERE job = 'salesman');

SELECT empno, ename, sal
FROM emp
WHERE sal > ALL (SELECT sal FROM emp WHERE job = 'salesman');

