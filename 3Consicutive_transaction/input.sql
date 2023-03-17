create table transaction(
    id number,
    t_date date,
    total_ammount number
);

insert into TRANSACTION VALUES(1,date'2023-01-01',1500);
insert into TRANSACTION VALUES(2,date'2023-01-02',1900);
insert into TRANSACTION VALUES(3,date'2023-01-03',120);
insert into TRANSACTION VALUES(4,date'2023-01-04',1780);
insert into TRANSACTION VALUES(5,date'2023-01-05',13500);
insert into TRANSACTION VALUES(6,date'2023-01-06',1570);
insert into TRANSACTION VALUES(7,date'2023-01-07',2130);
insert into TRANSACTION VALUES(8,date'2023-01-08',480);
insert into TRANSACTION VALUES(9,date'2023-01-09',60);
insert into TRANSACTION VALUES(10,date'2023-01-10',1400);

select * from TRANSACTION;