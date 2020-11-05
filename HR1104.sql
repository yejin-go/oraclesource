-- HR 계정이 가지고 있는 모든 테이블 보기
select * from tab;

desc employees;

-- employees 테이블 전체 내용 조회
SELECT * FROM employees;

-- employees 테이블의 first_name, last_name, job_id 만 조회
SELECT first_name, last_name, job_id FROM employees;

-- 사원번호가 176인 사람의 LAST_NAME과 부서번호 조회
SELECT last_name, department_id FROM employees WHERE employee_id = 176;

-- 연봉이 12000이상 (>=) 되는 직원들의 LAST_NAME 및 연봉조회
SELECT last_name, salary FROM employees WHERE salary >= 12000;

-- 연봉이 5000에서 12000의 범위 이외의 사람들의 LAST_NAME 및 연봉 조회
SELECT last_name, salary FROM employees WHERE salary < 5000 OR
        salary > 12000;
        
-- 20번 및 50번 부서에서 근무하는 모든 사원들의 LAST_NAME 및 부서번호를 알파벳 순서대로 조회
SELECT last_name, department_id FROM employees WHERE department_id In (20, 50) ORDER BY first_name;

-- 커미션을 버는 모든 사원들의 LAST_NAME,연봉,커미션 조회하기. 단, 연봉과 커미션의 내림차순으로 조회
SELECT last_name, salary, commission_pct FROM employees Where commission_pct > 0 ORDER BY salary, commission_pct ASC;

-- 연봉이 2500, 3500, 7000이 아니며, 직업이 SA_REP이나 ST_CLERK 인 사람들 조회
SELECT * From employees where job_id In ('SA_REP', 'ST_CLERK') and salary not in(2500, 3500, 7000);

-- 2008/02/20 ~2008/05/01 사이에 고용된 사원들의 LAST_NAME, 사원번호, 고용일자 조회
--고용일자의 내림차순으로 
SELECT last_name, employee_id, hire_date from employees where hire_date >='2008/02/20' and hire_date <= '2008/05/01' order by hire_date desc;

-- 2004년도에 고용된 모든 사람들의 LAST_NAME및 고용일을 조회하여 입사일 기준으로 오름차순으로 조회
SELECT last_name, hire_date from employees where hire_date >= '2004/01/01' and hire_date <= '2004/12/31' order by hire_date;

--연봉이 5000에서 12000의 범위에 있고, 20 OR 50 번 부서에 근무하는 사람들의 연봉을 조회하여 오름차순으로 보여주기(LAST_NAME, SALARY)
SELECT last_name, salary 
from employees 
WHERE department_id In (20, 50) AND salary BETWEEN 5000 and 12000 
ORDER BY salary;

-- 2004년도에 고용된 모든 사람들의 LAST_NAME및 고용일을 조회하여 입사일 기준으로 오름차순으로 조회
SELECT last_name, hire_date
from employees 
WHERE hire_date BETWEEN '2004/01/01' and '2004/12/31'
ORDER BY hire_date;

--연봉이 5000~12000범위 이외의 사람들의 LAST_NAME, salary 조회
SELECT last_name, salary
from employees 
WHERE salary NOT BETWEEN 5000 and 12000;

-- 2004년도에 고용된 모든 사람들의 LAST_NAME및 고용일을 조회하여 입사일 기준으로 오름차순으로 조회
SELECT last_name, hire_date
from employees 
WHERE hire_date LIKE '04%' 
ORDER BY hire_date;

--last_name 에 u 가 포함되는 사원들의 사번 및 last_name 조회
SELECT employee_id, last_name from employees where last_name like '%u%'; 

--last_name 에 네번째 글자가 a 인 사람들의 last_name 조회
SELECT last_name from employees where last_name like '___a%';

--last_name 에 a혹은 e글자가 있는 사람들의 last_name을 조회하여 last_name 기준으로 오름차순 정렬하기
SELECT last_name from employees where last_name like '%a%' or last_name like '%e%' ORDER BY last_name;

--last_name 에 a나 e글자가 있는 사람들의 last_name을 조회하여 last_name 기준으로 오름차순 정렬하기
SELECT last_name from employees where last_name like '%a%e%' or last_name like '%e%a%' ORDER BY last_name;

--IS null
--매니저가 없는 사람들의 LAST_NAME, job_id 조회
SELECT job_id, last_name from employees WHERE manager_id IS null;

--ST_CLERK인 job_id를 가진 사원이 없는 부서 id조회, 부서 번호가 null인 값 제외
SELECT DISTINCT department_id
from employees
where job_id NOT in('st_clerk') AND department_id IS not null;

--commission_pct가 null이 아닌 사원들 중에서 commission = salary * commission_pct를 구하여
--employee_id, first_name, job_id와 같이 조회
SELECT employee_id, first_name, job_id, salary * commission_pct AS commission
from employees
where commission_pct IS not null;

--[실습] 문자열 함수
--1. first_name이 Curtis 인 사람의 first_name, last_name, email, phone_number, job_id를 조회한다.
--단, job_id의 결과는 소문자로 출력되도록 한다.
SELECT first_name, last_name, email, phone_number, LOWER (job_id)
from employees
where first_name = 'Curtis';

--2. 부서번호가 60,70,80,90인 사람들의 employee_id, first_name, hire_date, job_id를 조회한다.
--단, job_id가 it_plug인 사원들의 경우 프로그래머로 변경하여 출력한다.
SELECT employee_id, first_name, hire_date, REPLACE (job_id, 'it_plug', '프로그래머')
from employees
where department_id IN (60,70,80,90);

--3. job_id가 ad_pres, pu_clerk인 사원들의 employee_id, first_name, last_name, department_id, job_id를 조회한다.
-- 단, 사원명은 first_name과 last_name을 연결하여 출력한다.
SELECT employee_id, concat (first_name, concat' 'last_name)), department_id, job_id
from employees
Where job_id In('ad_pres', 'pu_clerk');
