CREATE TABLE TEST (
    ID NUMBER (4),
    name VARCHAR2(3));
DESC TEST;

Insert into test values(1000, '홍길동'); --한글은 한 글자당 2바이트. --> 오류
Insert into test values(1000, 'ABC');   --영어는 한 글자당 1바이트.

--언어마다 서로 다른 바이트 처리를 보완하기 위해서 nchar, nvarchar2가 나옴. -->문자갯수 자체를 세면 됨.
--NCHAR, NVARCHAR2 차이 : 고정된 길이를 항상 가지고 있느냐 아니냐의 차이.
--NCHAR의 경우에는 글자가 1만 입력이 되어도 4자리를 항상 유지.
drop table test2;

CREATE TABLE TEST2(
    ID NCHAR(4),
    name NVARCHAR2(3));
    
Insert into test2 values ('황보강성', '홍길동');

CREATE TABLE TEST3(
    ID NVARCHAR2(4),
    name NVARCHAR2(4),
    REG_DATE DATE);
    
Insert into TEST3 values ('황보강성', '홍길동', SYSDATE);
Insert into TEST3 values ('황보강성', '홍길동', '2020-11-09'); 

--테이블 생성하기
-- CREATE TABLE 테이블명(열이름 타입, .....);
-- CREATE TABLE 테이블명 AS SELECT * FROM emp where deptno = 20;
-- CREATE TABLE 테이블명 AS SELECT * FROM emp where 1<>1; -->구조만 복사에서 만들겠다.

DESC emp;

CREATE TABLE emp_ddl ( 
    empno number(4),
    ename varchar2(10),
    job varchar2(9),
    mgr number(4),
    hiredate date,
    sal number(7,2),  -- 전체 자릿수는 7자리(소숫점 2자리를 포함할 수 있음. 즉, 자연수로는 5자리까지만 가능)
    comm number(7,2), -- 위와 같음. 즉, 예시로 12345.67
    deptno number(2));

-- ALTER : 테이블 변경

-- 컬럼 추가
Alter table emp_ddl add hp varchar2(20);

-- 기존 컬럼명 변경
Alter table emp_ddl rename column hp to tel;

--기존 타입을 변경
ALter table emp_ddl modify empno number(5);

--특정열을 삭제
Alter table emp_ddl drop column tel;

--테이블명 변경
Rename emp_ddl to emp_rename;

desc emp_ddl; 
desc emp_rename;

--ppt 실습
--menber 테이블 작성
CREATE TABLE member (
    id char(8),
    name nvarchar2(10),
    addr nvarchar2(50),
    nation nchar(4),
    email varchar2(50),
    age number (7,2));

ALter table member modify id char(8);
ALter table member modify nation nchar(4);
ALter table member modify email varchar2(4);
desc member;

Alter table member add bigo varchar2(20);
alter table member rename column bigo to remark;
alter table member modify remark nvarchar2(30);

drop table member;