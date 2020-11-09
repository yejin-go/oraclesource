--회원가입, 게시글 등록, 입금...

--기존의 dept 테이블을 복사하여 dept_temp 테이블 생성
CREATE TABLE dept_temp AS SELECT * FROM DEPT;

--현재 테이블 조회
SELECT *
fROM dept_temp;

--데이터 추가하기 (방법 1)
INSERT INTO dept_temp(deptno, dname, loc)
VALUES(50,'Database', 'SEOUL');

--데이터 추가하기 (방법 2)
INSERT INTO dept_temp VALUES(60,'NETWORK', 'BUSAN');

--에러발생 예시
-- 1)
INSERT INTO dept_temp(deptno, dname, loc)
VALUES(50,'Database');
-- 2)
INSERT INTO dept_temp(deptno, dname, loc)
VALUES(500,'Database', 'SEOUL');

--NULL삽입하기
--1)명시적으로 NULL삽입하기 (기본)
INSERT INTO dept_temp(deptno, dname, loc)
VALUES(70,'Database', NULL);

INSERT INTO dept_temp(deptno, dname, loc)
VALUES(80,'MOBILE','');
--2)묵시적으로 삽입하기
INSERT INTO dept_temp(deptno, loc)
VALUES(90,'INCHEON');

--emp테이블을 복사하여 emp_temp테이블을 생성
CREATE TABLE emp_temp AS SELECT * FROM emp;

--테이블 삭제
DROP TABLE emp_temp;

--emp테이블을 복사하여 emp_temp 테이블 생성하되, 구조만 복사하기
CREATE TABLE emp_temp AS SELECT * from emp Where 1<>1;

DESC emp_temp;

Insert into emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(9999, '홍길동', 'president', NULL, '2020-11-09', 4000, NULL, 10);

Insert into emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(8888, '성춘향', 'manager', NULL, '2020-10-08', 3000, NULL, 10);

Insert into emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(7777, '유승호', 'manager', NULL, TO_DATE('07/01/2010', 'DD/MM/YYYY'), 4000, NULL, 20);

Insert into emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values(6666, '이순신', 'manager', NULL, SYSDATE, 4000, NULL, 20);

--최종반영
commit;

--취소
rollback;

--DML
--트랜젝션 : 커밋과 롤백

--emp 테이블에서 salgrade 테이블을 참조하여 급여 등급이 1등급인 사원만을
--emp_temp테이블에 추가하고 싶다면?
--서브쿼리로 작성할 때 : 데이터가 추가되는 테이블의 열 개수와 서브 쿼리의 열 개수를 일치시켜 줘야함.
INSERT INTO emp_temp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp e, salgrade s
where e.sal between s.losal and s.hisal and s.grade = 1;

