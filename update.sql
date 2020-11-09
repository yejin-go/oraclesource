CREATE TABLE dept_temp2 AS SELECT * FROM dept;

--dept_tempt2 에 있는 loc 모두 수정
UPDATE dept_temp2  -- 테이블명
SET LOC = 'SEOUL'; -- 수정할 내용

SELECT * FROM dept_Temp2;

ROLLBACK;

UPDATE dept_temp2  -- 테이블명
SET LOC = 'SEOUL'  -- 수정할 내용
where deptno = 10; -- 업데이트 조건

--emp_temp테이블의 사원들 중에서 급여가 3000이하인 사원만 추가수당을 50으로 수정
SELECT * FROM emp_temp;

UPDATE emp_temp
SET comm = 50
where sal <=3000;

--서브쿼리를 이용한 데이터 수정

--40번 부서의 부서명과 지역 수정
SELECT * from dept_temp2;

UPDATE dept_temp2
SET (dname, LOC) = (SELECT dname, LOC from dept where DEPTNO = 30)
where deptno = 40;

UPDATE dept_temp2
SET LOC = 'SEOUL'
where deptno = (SELECT deptno from dept where Deptno='sales');

commit;