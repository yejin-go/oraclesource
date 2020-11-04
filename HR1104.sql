-- HR ������ ������ �ִ� ��� ���̺� ����
select * from tab;

desc employees;

-- employees ���̺� ��ü ���� ��ȸ
SELECT * FROM employees;

-- employees ���̺��� first_name, last_name, job_id �� ��ȸ
SELECT first_name, last_name, job_id FROM employees;

-- �����ȣ�� 176�� ����� LAST_NAME�� �μ���ȣ ��ȸ
SELECT last_name, deptid WHERE employee_id = 176;

-- ������ 12000�̻� (>=) �Ǵ� �������� LAST_NAME �� ������ȸ
SELECT last_name, salary FROM employees WHERE salary >= 12000;

-- ������ 5000���� 12000�� ���� �̿��� ������� LAST_NAME �� ���� ��ȸ
SELECT last_name, salary FROM employees WHERE salary < 5000 OR
        salary > 12000;