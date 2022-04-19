-- https://pgexercises.com/questions/basic/selectall.html

-- How can you retrieve all the information from the cd.facilities table?

with base as (
select 
  *
from cd.facilities
)

select * from base;