# TCL : Transaction control language
# Transaction : Set of logical Task / a unit of work

# DDL, DMl, DCL, TCL transaction

# start : DML operation
# end : DDL, DCL,TCL

select @@autocommit; -- by default value 1
set autocommit = 0;

-- create database po;
use po;

create table if not exists emp(eid int, ename varchar(20));
insert into emp values(10,'abc'); -- will reflect in database bcz of commit
select * from emp;

commit;

insert into emp values(110,'1abc');	-- will not reflect in database bcz of no commit
select * from emp;
commit; -- TCL command

insert into emp values(120,'12abc');
select * from emp;
rollback; -- to last commit

insert into emp values(1220,'12swsabc');	
savepoint emp_sv1;
update emp set ename = 'tushar';
rollback to emp_sv1;
select * from emp;


-- Update and delete
-- ddl (Alter)
-- alter (DDL Statement)

use po;
create table companies(id int);
insert into companies values(10);
select * from companies;

desc companies;
-- add table columns
ALTER TABLE companies
ADD column phone varchar(15);

select * from companies;
desc companies;

ALTER TABLE companies
ADD column emp_count3 int default 20;

select * from companies;

alter table companies drop column emp_count3;

select * from companies;

rename table companies to newcompany;

select * from company;
select * from newcompany;
 
alter table newcompany rename to companies;

select * from companies;

desc companies;
alter table companies
rename column phone to company_name;

select * from companies;

update companies set company_name = 'tushar' where id = 10;

desc companies;

alter table companies add primary key (id);
insert into companies values(12, "aman");
desc companies;
select * from companies;

alter table companies drop primary key;

alter table companies
add constraint compay_uk unique(company_name);


alter table companies
drop constraint compay_uk;
desc companies;

update companies set company_name = 0;

alter table companies modify company_name int; -- only changes datatype
select * from companies;

-- change datatype and column then use change

alter table companies
change eid222 gender char(3);

select * from companies;





 
 
 