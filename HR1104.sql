-- HR 계정이 가지고 있는 모든 테이블 보기
select * from tab;

desc employees;

-- employees 테이블 전체 내용 조회
SELECT * FROM employees;

-- employees 테이블의 first_name, last_name, job_id 만 조회
SELECT first_name, last_name, job_id FROM employees;

-- 사원번호가 176인 사람의 LAST_NAME과 부서번호 조회
SELECT last_name, deptid WHERE employee_id = 176;

-- 연봉이 12000이상 (>=) 되는 직원들의 LAST_NAME 및 연봉조회
SELECT last_name, salary FROM employees WHERE salary >= 12000;

-- 연봉이 5000에서 12000의 범위 이외의 사람들의 LAST_NAME 및 연봉 조회
SELECT last_name, salary FROM employees WHERE salary < 5000 OR
        salary > 12000;