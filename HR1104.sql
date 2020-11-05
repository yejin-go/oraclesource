-- HR ������ ������ �ִ� ��� ���̺� ����
select * from tab;

desc employees;

-- employees ���̺� ��ü ���� ��ȸ
SELECT * FROM employees;

-- employees ���̺��� first_name, last_name, job_id �� ��ȸ
SELECT first_name, last_name, job_id FROM employees;

-- �����ȣ�� 176�� ����� LAST_NAME�� �μ���ȣ ��ȸ
SELECT last_name, department_id FROM employees WHERE employee_id = 176;

-- ������ 12000�̻� (>=) �Ǵ� �������� LAST_NAME �� ������ȸ
SELECT last_name, salary FROM employees WHERE salary >= 12000;

-- ������ 5000���� 12000�� ���� �̿��� ������� LAST_NAME �� ���� ��ȸ
SELECT last_name, salary FROM employees WHERE salary < 5000 OR
        salary > 12000;
        
-- 20�� �� 50�� �μ����� �ٹ��ϴ� ��� ������� LAST_NAME �� �μ���ȣ�� ���ĺ� ������� ��ȸ
SELECT last_name, department_id FROM employees WHERE department_id In (20, 50) ORDER BY first_name;

-- Ŀ�̼��� ���� ��� ������� LAST_NAME,����,Ŀ�̼� ��ȸ�ϱ�. ��, ������ Ŀ�̼��� ������������ ��ȸ
SELECT last_name, salary, commission_pct FROM employees Where commission_pct > 0 ORDER BY salary, commission_pct ASC;

-- ������ 2500, 3500, 7000�� �ƴϸ�, ������ SA_REP�̳� ST_CLERK �� ����� ��ȸ
SELECT * From employees where job_id In ('SA_REP', 'ST_CLERK') and salary not in(2500, 3500, 7000);

-- 2008/02/20 ~2008/05/01 ���̿� ���� ������� LAST_NAME, �����ȣ, ������� ��ȸ
--��������� ������������ 
SELECT last_name, employee_id, hire_date from employees where hire_date >='2008/02/20' and hire_date <= '2008/05/01' order by hire_date desc;

-- 2004�⵵�� ���� ��� ������� LAST_NAME�� ������� ��ȸ�Ͽ� �Ի��� �������� ������������ ��ȸ
SELECT last_name, hire_date from employees where hire_date >= '2004/01/01' and hire_date <= '2004/12/31' order by hire_date;

--������ 5000���� 12000�� ������ �ְ�, 20 OR 50 �� �μ��� �ٹ��ϴ� ������� ������ ��ȸ�Ͽ� ������������ �����ֱ�(LAST_NAME, SALARY)
SELECT last_name, salary 
from employees 
WHERE department_id In (20, 50) AND salary BETWEEN 5000 and 12000 
ORDER BY salary;

-- 2004�⵵�� ���� ��� ������� LAST_NAME�� ������� ��ȸ�Ͽ� �Ի��� �������� ������������ ��ȸ
SELECT last_name, hire_date
from employees 
WHERE hire_date BETWEEN '2004/01/01' and '2004/12/31'
ORDER BY hire_date;

--������ 5000~12000���� �̿��� ������� LAST_NAME, salary ��ȸ
SELECT last_name, salary
from employees 
WHERE salary NOT BETWEEN 5000 and 12000;

-- 2004�⵵�� ���� ��� ������� LAST_NAME�� ������� ��ȸ�Ͽ� �Ի��� �������� ������������ ��ȸ
SELECT last_name, hire_date
from employees 
WHERE hire_date LIKE '04%' 
ORDER BY hire_date;

--last_name �� u �� ���ԵǴ� ������� ��� �� last_name ��ȸ
SELECT employee_id, last_name from employees where last_name like '%u%'; 

--last_name �� �׹�° ���ڰ� a �� ������� last_name ��ȸ
SELECT last_name from employees where last_name like '___a%';

--last_name �� aȤ�� e���ڰ� �ִ� ������� last_name�� ��ȸ�Ͽ� last_name �������� �������� �����ϱ�
SELECT last_name from employees where last_name like '%a%' or last_name like '%e%' ORDER BY last_name;

--last_name �� a�� e���ڰ� �ִ� ������� last_name�� ��ȸ�Ͽ� last_name �������� �������� �����ϱ�
SELECT last_name from employees where last_name like '%a%e%' or last_name like '%e%a%' ORDER BY last_name;

--IS null
--�Ŵ����� ���� ������� LAST_NAME, job_id ��ȸ
SELECT job_id, last_name from employees WHERE manager_id IS null;

--ST_CLERK�� job_id�� ���� ����� ���� �μ� id��ȸ, �μ� ��ȣ�� null�� �� ����
SELECT DISTINCT department_id
from employees
where job_id NOT in('st_clerk') AND department_id IS not null;

--commission_pct�� null�� �ƴ� ����� �߿��� commission = salary * commission_pct�� ���Ͽ�
--employee_id, first_name, job_id�� ���� ��ȸ
SELECT employee_id, first_name, job_id, salary * commission_pct AS commission
from employees
where commission_pct IS not null;

--[�ǽ�] ���ڿ� �Լ�
--1. first_name�� Curtis �� ����� first_name, last_name, email, phone_number, job_id�� ��ȸ�Ѵ�.
--��, job_id�� ����� �ҹ��ڷ� ��µǵ��� �Ѵ�.
SELECT first_name, last_name, email, phone_number, LOWER (job_id)
from employees
where first_name = 'Curtis';

--2. �μ���ȣ�� 60,70,80,90�� ������� employee_id, first_name, hire_date, job_id�� ��ȸ�Ѵ�.
--��, job_id�� it_plug�� ������� ��� ���α׷��ӷ� �����Ͽ� ����Ѵ�.
SELECT employee_id, first_name, hire_date, REPLACE (job_id, 'it_plug', '���α׷���')
from employees
where department_id IN (60,70,80,90);

--3. job_id�� ad_pres, pu_clerk�� ������� employee_id, first_name, last_name, department_id, job_id�� ��ȸ�Ѵ�.
-- ��, ������� first_name�� last_name�� �����Ͽ� ����Ѵ�.
SELECT employee_id, concat (first_name, concat' 'last_name)), department_id, job_id
from employees
Where job_id In('ad_pres', 'pu_clerk');
