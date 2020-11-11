CREATE TABLE userTBL(
    no number(8) CONSTRAINT pk_userTBL PRIMARY KEY,
    userName nchar(4) not null,
    birthYear number(4) not null,
    addr nchar(2) not null,
    mobile nvarchar2(13));
    
CREATE SEQUENCE userTBL_seq;

insert into userTBL 
values(userTBL_seq.nextval,'홍길동',1955,'서울','010-1235-4568');
insert into userTBL 
values(userTBL_seq.nextval,'김지우',1965,'부산','010-3568-4568');
insert into userTBL 
values(userTBL_seq.nextval,'손승연',1975,'대구','010-8596-1234');
insert into userTBL 
values(userTBL_seq.nextval,'신동완',1985,'인천','010-7777-8888');
insert into userTBL 
values(userTBL_seq.nextval,'김석호',1995,'안산','010-8888-6954');

COMMIT;

SELECT * FROM userTBL;





