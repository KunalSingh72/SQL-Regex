-- Q : if a person have actor id>5 = +10, >15 = +25,  >30 = 50+ other wise +5

select actor_id , first_name ,
   case 
		when actor_id>30 then  actor_id+50
		when actor_id>20 then actor_id+20
		 when actor_id>10 then actor_id+10
	   else actor_id+5 
		
	end "newcol" from actor
 ;
 -- ----------------------------------------------------------------------
 
-- group by, diff btw distint and groupby , diff btw where and having 
-- group by (aggregate fun)
-- multi row fun

use sakila;
select * from address;
select count(address_id) from address;
select count(address2) from address;
select count(*) from address;

select distinct (district) from address; -- give unique values
select count(distinct (district)) from address; -- remove same value and count distinct vale
select sum(address_id) from address; -- total of all no

-- min max avg count sum
select count(*) from address where district ='QLD';
select count(*) from address where district ='Alberta';

select district, count(*)
from address group by district;


select district, count(*), sum(city_id)
from address group by district;

select * from payment;
select customer_id,count(*) from payment group by customer_id;

-- alias
select customer_id,count(*) as total from payment group by customer_id;

select customer_id,count(*) as total 
from payment group by customer_id order by total;-- sort default asc

select customer_id,count(*) as total 
from payment group by customer_id order by total desc;-- sort in desc


select customer_id,sum(amount) as total 
from payment group by customer_id ;-- sort default asc


-- having .. aggerate fun pr filter karega ..group by k baad
-- where normal filter.. group by se phele

select customer_id,sum(amount) as total 
from payment group by customer_id having total>100 ;

select customer_id , sum(amount) from payment where customer_id>5
group by customer_id having  sum(amount)>100;


select sum(amount) from payment where customer_id=1
and staff_id=2;

select customer_id,staff_id from payment
group by customer_id,staff_id;