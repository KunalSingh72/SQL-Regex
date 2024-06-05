use sakila;
select * from payment;

-- Subquery : Query within a query

select amount from payment where payment_id=3;

select * from payment where amount = 5.99;

select * from payment
where amount =(select amount from payment where payment_id=3);

select amount from payment where rental_id = 573;

-- Error
-- select * from payment where amount =(select amount, payment_id from payment where rental_id=3);

-- amount = 0.99
select * from payment
where amount = (select amount from payment where payment_id = 4);

select * from payment;

--  i need to get those user whose staff id is equal to the staff_id of payment id 10;

select * from payment where staff_id = (select staff_id from payment where payment_id= 10);

-- i need to get the payment id staff id amount, payment date where the month of payment date should be equals to the month of payment id 5;

-- single row sub query
select * from payment where month(payment_date) = (select month(payment_date) from payment where payment_id= 5);

-- multi rows sub query -- error
select * from payment where amount = (select amount from payment where payment_id in (2,3));

/* 
Types of Queries :
1) single row sub query.
2) multi rows sub query : in any all
3) 
*/

-- in any all (0.99, 5.99)
select * from payment where amount in (select amount from payment where payment_id in (2,3));

select * from payment where amount =  any(select amount from payment where payment_id in (2,3));


-- greater than minimum value of sub query : 
select * from payment where amount >= any(select amount from payment where payment_id = 2 or payment_id = 3);
-- smaller than max value of resultant
select * from payment where amount < any(select amount from payment where payment_id = 2 or payment_id = 3);

-- all
-- greater than max value of sub query : 
select * from payment where amount > all(select amount from payment where payment_id = 2 or payment_id = 3);
-- smaller than min value of resultant
select * from payment where amount < all(select amount from payment where payment_id = 2 or payment_id = 3);

-- ----------------------------------------
-- Sub Query : Query within a query
-- single row subqeury
-- multi rows sub query

use sakila;

select district from address where address_id = 6;
select * from address where district = "California";

select * from address where district = (select district from address where address_id = 6); -- same datatype required to compare

select * from address where district in (select district from address where address_id in (6,7)); -- error

select * from address where district = any(select district from address where address_id in (6,7));