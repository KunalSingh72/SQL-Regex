-- date time fun
--  year, current date , time 
select curdate() from dual; -- current_date()
select curtime() from dual;
select current_timestamp() from dual;
  
select adddate(now(),2) from dual;
select adddate(now(),interval 15 day) from dual;
select adddate(now(),interval 15 month) from dual;
select dayname(now()) from dual;
 
 -- date format
select date_format(now(),"%Y") from dual;
select date_format(now(),"%M") from dual;
select date_format(now(),"%D") from dual;
select date_format(now(),"%m") from dual;
select date_format(now(),"%m--%d") from dual;


-- numerical func work on numeric data
-- round , truncate, mod
select round(10.5)from dual;
select round(10.565,1) from dual;
select truncate(10.565,2) from dual;
select truncate(10.565,1) from dual;
select truncate(10.86,1) from dual;

select mod(10,2) from dual; -- reminder

-- conditional statement
use sakila;

select * from actor;
select if(True,10,20) from dual;

select actor_id , first_name,
if(actor_id=2,actor_id+10,actor_id) from actor;

select actor_id , first_name,
if(actor_id=2,actor_id+10,if(actor_id=4,actor_id+20,actor_id)) from actor;

-- case study 
/* select col,case  expression \col
		  when cond then wht type of work 
		  end
		  from table;
*/


select actor_id , first_name ,
   case actor_id
		when 2 then  actor_id+10
		when 3 then actor_id+20
	   else actor_id 
		
	end "newcol"
	from actor;


select actor_id , first_name ,
   case 
		when actor_id=2 then  actor_id+10
		when actor_id=3 then actor_id+20
	   else actor_id 
		
	end "newcol" from actor
 ;

-- if ap erson hav e actor id  >5 +10 15> +25 30> 50+ other wise +5

select actor_id , first_name ,
   case 
		when actor_id>30 then  actor_id+50
		when actor_id>20 then actor_id+20
		when actor_id>10 then actor_id+10
	   else actor_id+5 
	end "newcol" from actor
 ;