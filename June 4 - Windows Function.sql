-- windows function
use sakila;

create table employees (id int primary key auto_increment, dept varchar(20), salary int);


insert into employees (dept, salary) values ("hr", 200), 
("hr",300), ("hr",100), ("marketing", 70),
("marketing", 50), ("marketing", 200), ("marketing",400);


insert into employees (dept, salary) values 
("dsa", 150), ("dsa", 120), ("dsa",40), ("dsa",90), ("dsa", 500);

select id, dept,salary,(select avg(salary)  from employees) from employees;

-- Analytical Functions
select id, dept,salary,avg(salary) over(),max(salary) over() from employees;


select id, dept, salary, 
avg(salary) over(),
avg(salary) over(partition by dept)
from employees;


select id, dept, salary, 
sum(salary) over(),
sum(salary) over(order by salary) 
from employees;		-- rolling sum


select id, dept, salary, 
sum(salary) over(),
avg(salary) over(order by salary) 
from employees;	

select id, dept, salary,
sum(salary) over(partition by dept order by salary)
from employees;		


-- rank, dense_rank()

select id,dept,salary,
rank() over(order by salary) from employees; -- skip rank

select id,dept,salary,
dense_rank() over(order by salary) from employees; -- doesn't skip rank


select id,dept,salary,
rank() over(partition by dept order by salary) from employees;

