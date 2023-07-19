-- To create a table.
create table BITS
(sr_no int, course varchar(100));

-- to view the table.
select * from BITS;

-- To insert the data.
insert into BITS values
("1", "Electronics and Communications Engineering");
insert into BITS values
("2", "Information Technology");
insert into BITS values
("3", "Computer Science Engineering");
insert into BITS values
("4", "Mechanical Engineering");
insert into BITS values
("5", "Electrical Engineering");
insert into BITS values
("6", "Civil Engineering");
select * from BITS;

-- To alter the table.
alter table BITS add (intake int);
select * from BITS;

-- To update the values.
update BITS set intake = "120" where sr_no = "1";
update BITS set intake = "120" where sr_no = "2";
update BITS set intake = "120" where sr_no = "3";
update BITS set intake = "80" where sr_no = "4";
update BITS set intake = "60" where sr_no = "5";
update BITS set intake = "10" where sr_no = "6";
select * from BITS;

-- to delete the rows.
delete from BITS where sr_no >=4;
select * from BITS;

-- to truncate the table.
truncate table BITS;
select * from BITS;

-- to drop the table.
drop table BITS;
select * from BITS;