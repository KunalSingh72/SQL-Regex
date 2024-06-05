-- function and logical op. --
select actor_id,first_name from actor 
where actor_id=2 or actor_id=4;

select * from actor where first_name='NICK' and actor_id =44;

-- actorid first name fn=ed or nick and actorid >=3
select * from actor where (first_name='ED' or first_name ="NICK") and actor_id>=3; -- prioraty order.. and>>or

#function string => output
#single row function
#string function

select first_name, lower(first_name) from actor; -- lower,upper,title

-- dual table(dummy table)
select 4 from dual;
select upper("ac") from dual;

select first_name ,last_name ,concat(first_name,"  ", last_name) from actor; -- join to string but u have to give saperator

select first_name ,last_name ,concat_ws(' ','Mr',first_name, last_name)from actor; -- ws =with sepration

select * from actor where concat (first_name," ", last_name) ='ED CHASE';

select * from actor where first_name like concat("J", "%"); -- like("J%")>>>same

-- sub string method>>substr
select first_name ,substr(first_name ,2) from actor; -- substr(column name , starting value)
select first_name ,substr(first_name ,2,5) from actor; -- substr(column name , starting value,kite ch chiye)
select first_name ,substr(first_name ,-3,2) from actor; -- neg se statring values

-- instr >>tells the position of char
select first_name ,instr(first_name ,'E') from actor;

select first_name ,locate("E",first_name ,5 ) from actor; -- locate(char to find, column name, from where = konse index se dhund na stat kar na hai)

-- length ( return total no of bytes)(only apply on english)

select length("abgd") from dual;

-- so we use char_length

select char_length("abgd") from dual;

-- trim function remove extra white space

select trim('  abc ') from dual;
select rtrim('  abc ') from dual; -- remove from right
select ltrim('  abc ') from dual; -- remove from left
select trim( trailing ' ' from '  abc ') from dual; -- remove from end
select trim( trailing 'x'from '  xabcxxxxx') from dual;
select trim( leading 'x'from 'xxabcx ') from dual;

select trim( both 'x' from 'xxabcx') from dual; -- remove from both side

-- lpad ,rpad >>left ya right side jord na

select lpad(946121,10,'#') from dual; -- (in what, total number of char, what) 
select rpad(94156584,5,'#') from dual;
