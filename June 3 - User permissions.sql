/* 
Database have envolved to support multiple users
and roles and provide a means to control privileges and access on a very fine-grained
level to guarantee secure shared environments.

Users in MY sql are special objects used for the purpose of : 

AUgthentication : Making sure that a user can access then Mysql server
Authorization : Making sure that a user can intract with objects in the database.

Some DBSs support concept of objecrs ownership.
That is, when the user creates a database objects-a database or schema, a table or a stored procedure-that user automatically
becomes the new objects's owner.

The owner usually has the ability to modify objects it owns and grant other users access to them.
The important thing here is that Mysql does not in any way have a concept of object owner. 


Privileges can be thought of as sets of rules controlling that actions users are allowed to perform and what data they can access.

*/

--  user  => username (password)
create user bob11 identified by 'bob123';

# username@hostname
# bob

select current_user();

select * from mysql.user;

show grants for 'bob11';

create user 'sammy1'@'192.16.10.%' identified by 'password';

-- permissions
grant all privileges on sakila.* to bob11;

alter user 'bob11' identified by 'bob11';


-- Locking user
Alter user 'bob11' account LOCK;

-- Unlocking user 
Alter user 'bob11' account UNLOCK;


/*
PASSWORD EXPIRE option of the ALTER USER command.
After this command is executed, the user will still be able to connect to the server using the previous password.
run a query from the new connection-that is,
as soon as their privileges are checked-the user will be presented with an error and forced to change the password
*/


-- roles is simply a group
-- parul : group: pizza
-- group : collection of user

-- creating role
create role sales;

-- grant all privileges
grant select on sakila.* to sales; 


create user 'amaan' identified by 'amaan';
show grants for 'amaan';

set default role all to amaan;






