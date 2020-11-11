CREATE TABLE userTBL(
    no number(8) CONSTRAINT pk_userTBL PRIMARY KEY,
    userName nchar(4) not null,
    birthYear number(4) not null,
    addr nchar(2) not null,
    mobile nvarchar2(13));
    
CREATE SEQUENCE userTBL_seq;

insert into userTBL 
values(userTBL_seq.nextval,'ȫ�浿',1955,'����','010-1235-4568');
insert into userTBL 
values(userTBL_seq.nextval,'������',1965,'�λ�','010-3568-4568');
insert into userTBL 
values(userTBL_seq.nextval,'�ս¿�',1975,'�뱸','010-8596-1234');
insert into userTBL 
values(userTBL_seq.nextval,'�ŵ���',1985,'��õ','010-7777-8888');
insert into userTBL 
values(userTBL_seq.nextval,'�輮ȣ',1995,'�Ȼ�','010-8888-6954');

COMMIT;

SELECT * FROM userTBL;





