CREATE TABLE dept_TCL AS SELECT * FROM DEPT;

INSERT into dept_TCL VALUES(50, 'DATABASE', 'SEOUL');

commit;

SELECT * from dept_TCL;

ROLLBACK;

--�ϳ��� Ʈ����� ����
INSERT INTO dept_TCL values(60,'NETWORK','BUSAN');
UPDATE dept_TCL SET LOC='SEOUL' where deptno = 40;
DELETE from dept_TCL where dname = 'RESERCH';

