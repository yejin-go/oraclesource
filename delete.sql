CREATE TABLE emp_temp2 AS SELECT * FROM emp;

select * from emp_temp2;

--job이 manager인 데이터 삭제하기

DELETE FROM emp_temp2 where job = 'MANAGER'; --(O)
--!!주의!! *주면 오류!!!
DELETE * FROM emp_temp2 where job = 'MANAGER'; --오류

ROLLBACK;

DELETE emp_temp2; -- 다 날아감

--emp_temp2 테이블의 사원 중에서 급여가 5000 이상인 사원 삭제
DELETE from emp_temp2 where sal >= 5000;

commit;

--급여 등급이 3등급 사이에 있는 30번 부서의 사원들만 삭제
DELETE from emp_temp2 where empno in (SELECT e.empno
                                   from emp_temp2 e, salgrade s
                                   where e.sal between s.losal and s.hisal
                                   and s.grade = 3 and deptno = 30);

delete from emp_temp2 where empno in (7001, 7002, 7003);

--실습을 위하여 기존 테이블을 이용하여 테이블을 생성한다.
--1)emp테이블의 내용을 이용, exam_emp 생성
CREATE TABLE exam_emp AS SELECT * FROM emp;

SELECT * from exam_emp;

--2)dept테이블의 내용을 이용하여 exam_dept 생성
CREATE TABLE exam_dept AS SELECT * FROM dept;
--3)salgrade테이블의 내용을 이용하여 exam_salgrade 생성
CREATE TABLE exam_salgrade SELECT * FROM salgrade;
--4)exam_dmp에 직원 정보 넣기.
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

--5)exam_emp에 속한 사원 중 50번 부서에서 근무하는 사원들의 평균 급여보다 많은 급여를 받고 있는 사원들을 70번 부서로 옮기는 sql문 작성

--6)exam_emp에 속한 사원 중 60번 부서의 사원 중에서 입사일이 가장 빠른 사원보다 늦게 입사한 사원의 급여를 10%인상하고 80번 부서로 옮기는 sql문 작성하기

--7)exam_emp에 속한 사원 중 급여 등급이 5인 사원을 삭제하는 sql문 작성하기
