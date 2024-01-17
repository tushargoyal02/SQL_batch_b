

-- String functions

-- 
use sakila;
select * from actor;
select first_name, lower(first_name) from actor;

select first_name, length(first_name) from actor;

-- dummy table ( 1 row 1 column )
select 1+2 from dual;

select length("hey") from dual;

select length("刀7") from dual;

select char_length("刀7") from dual;


select "tushar","goyal", concat("tushar","goyal") from dual;

select first_name,last_name, actor_id,
concat(first_name," ",last_name,actor_id) from actor;


select first_name,last_name, actor_id,
concat_ws("_",first_name,last_name,actor_id) from actor;


select first_name, substr(first_name,3)
from actor;

select first_name, substr(first_name,2,3)
from actor;


select first_name, substr(first_name,-4,2)
from actor;

-- string function , mathematical functions
-- general functions / null handling function

-- null => 0  / ""
use sakila;
select * from address;

select postal_code, length(postal_code) from address;

select * from address
where postal_code=" ";

desc address;

select * from address
where address2 is null;

select address_id, address2, 
ifnull(address2, 0) from address;

select * from staff;

select password, email from staff
where password is not null;

select * from staff;

select password,ifnull(password,1000), email from staff;

select first_name,
password,ifnull(password,first_name), email from staff;




select nullif("abc","abc1") from dual;


select first_name, length(first_name),
last_name, length(last_name),
nullif( length(first_name), length(last_name)  ) 
from actor;



select if( 2>1 , 0,1       ) from dual;


select first_name,
if( length(first_name)=3,"abc","No data")
from actor;


select * from actor;

select actor_id,first_name,
	case first_name
		when "NICK"  then actor_id*10
        when "PENELOPE" then actor_id*15
        else  actor_id
	end "new_actor_id"
    from actor;

select actor_id,first_name,
	case 
		when first_name="NICK"  then actor_id*10
        when first_name="PENELOPE" then actor_id*15
        else  actor_id
	end "new_actor_id"
    from actor;