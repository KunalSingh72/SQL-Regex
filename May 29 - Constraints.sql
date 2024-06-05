-- constraint : rule (table avoid invalid)
-- primary key
-- forign key
-- not null
-- unique
-- default
-- index

-- ddl statenment
 use sakila;
 create table raj (id int ,name varchar(20));
 insert into raj values(10,'aman');
 insert into raj(id)values(13);
 insert into raj(id,name)values(14,null);
 select * from raj;
 
 drop table raj2;
 create table raj2 (id int  default 100 ,name varchar(20) not null);
 insert into raj2 values(10,'aman');
 insert into raj2(name)values('xyz');
select * from raj2;


create table raj3 (id int unique ,name varchar(20));
 insert into raj3 values(10,'aman');
 insert into raj3 values(14,"amman");
 insert into raj3 values(null,"amman");
 select * from raj3;
 
 
 create table raj4 (id int  check (id between 2 and 5));
 insert into raj4 values(3);
 insert into raj4 values(5);

 select * from raj4;
 
 
 -- house id salling price purchase price email
 -- selling >purchase
 -- email unique
 
 create table raj6 (house_id int ,selling_price int ,purchase_price int 
  ,email varchar(50) unique, check ( selling_price >purchase_price));
 insert into raj6 values(10,1000,2000,"aa@fhdx");


 select * from raj6;
 
 
 -- primary key
 -- constraint: unique identifier each and every record
 -- unique and not null
 -- only 1 primery key
  create table isha(id int primary key);
  insert into isha values(1);
  insert into isha values(2);
  
  -- forign key :regulation
  -- cross validation
  
  -- parent table and child table
  
  create table person2(pid int primary key ,pname varchar(20));
  insert into person2 values (1,"tushar");
  create table orders1(old int ,city varchar(20),pid int ,foreign key(pid)references person2(pid));

 insert into orders1 values(101,"jaipur");
 -- wht diff between super key candiate key composid key
 -- on delet cascade on deltet set null  on delte default