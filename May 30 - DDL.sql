use sakila;
-- create table ut1(id int);
-- insert into ut1 values(10),(20),(20),(20),(30),(30),(40),(40);
select * from ut1;

select max(id) from ut1 where id< (select max(id) from ut1 where id< (select max(id) from ut1));

select * from ut1 order by id desc limit 2,3; -- ignore 2, give next 3 rows

-- nth highest

-- ddl command()

-- create database isha;
-- use isha;
-- create table xyz(id int);

-- int 4 byte (2^32)
-- Int [(width)] [unsigned : only +ve] [zerofill]
-- -2,147,483,648 to 2,147,483,647 (4 byte storage)

-- insert into xyz values(2147836448);
select * from xyz;


-- INT[(width)] [unsigned] [zerofill]
-- The width parameter specificies the display width,
-- which can be read b y applications as part of the column metadata
-- 18,446,744,073,709,551,615 unisgned big int
-- unsigned
-- 8 byte
create table test3(id int unsigned);
insert into test3 values(-77355);
select * from test3;
describe test3;

#100 => -49 to 50
# 0 to 100

create table test_bigint(id BIGINT UNSIGNED);

-- int => 100 => id+5 => big int
insert into test_bigint values(1844674407370955161);
select * from test_bigint;
-- 18,446,744,073,709,551,600 is less than 18,446,744,073,709,551,599
insert into test_bigint values(184467440737095516*100);

-- tinyint 1, smallint 2, mediumint 3, int 4, bigint 8
-- 1 byte => 8 2(8)
-- boolean => Tinyint
-- 2**8 => 256 (unsigned) => -128 to 127
create table abc2(id tinyint unsigned);
insert into abc2 values(false);
select * from abc2;


-- varchar and char
-- varchar(20) 'raj'
-- char(20) 'raj'

create table t1( name varchar(3));
insert into t1 values("j     ");
select name, length(name) from t1;

create table t2( name char(3));
insert into t2 values("j     ");
select name, length(name) from t2;

-- date datatype (timestamp 2038)
create table u1(dob date);
insert into u1 values("2024-01-19");
select * from u1;

create table u2(dob date, dtime time, dob1 datetime);
insert into u2 values("2024-01-19", "10:25:19", now());
select * from u2;

