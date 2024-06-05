use sakila;
select database();
show tables;

-- describe table
describe actor;
desc actor;
desc sakila.actor;

-- select statment (DQL)
select * from actor;
select actor_id, first_name ,last_name from actor;
select actor_id, first_name ,actor_id+4 from actor;
select * from actor where actor_id=2;
select first_name from actor where actor_id<=2; 
select actor_id from actor where first_name='NICK';
select * from actor where actor_id between 2 and 5;
select * from actor where actor_id in (2,5,9);
select * from actor where actor_id not in (2,5,9);
select * from actor where first_name='ED';
select * from actor where first_name like "E%"; -- starting e
select * from actor where first_name like "%E"; -- ending e
select * from actor where first_name like "%E%"; -- e anywhere
select * from actor where first_name like "_D";  -- second character should be "D"
select * from actor where first_name like "__%"; 
