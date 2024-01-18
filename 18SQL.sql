

use sakila;

# function ( string, mathematical , conditional, null values)


select * from actor;

desc actor;

select last_update, adddate( last_update, 1) 
from actor;

select last_update, adddate( last_update, interval 3 hour) 
from actor;

select curdate(),adddate( curdate(),1   ) from dual;

select curdate(),adddate( curdate(),1   ) from dual;
select curtime() from dual;
select now() from dual;


select last_update, date( last_update) 
from actor;

select datediff( curdate(), "2024-01-22" ) from dual;

select date_format( curdate(),  "%Y-%M-%d %a" ) from dual;

# to_date
select str_to_date( "12 15,2024",  '%m %d,%Y' ) from dual;


select year(  curdate() ) from dual;

select extract(year from curdate() ) from dual;

select last_update,extract(month from last_update ) from actor;



SELECT year(FROM_UNIXTIME(1447430940)  );


SELECT to_UNIXTIME("2015-11-13 21:39:00");


select * from address;

-- group of row
select count(address2) from address;
select sum(city_id) from address;

select max(city_id) from address;
select count(*) from address;


select count(*) from address where district="Haryana";

select count(*) from address where district="QLD";

select count(district) from address;

select count( distinct(district) ) from address;


select * from address;

select district
from address group by district;

select district, count(*), sum(city_id)
from address group by district
having count(*) >= 9
order by count(*) desc;


select district, count(*), sum(city_id)
from address where district in ("Alberta","California")
group by district
having count(*) >= 9;