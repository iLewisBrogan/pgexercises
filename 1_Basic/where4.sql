-- https://pgexercises.com/questions/basic/where4.html

-- How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.

with base as (
select
  *
from cd.facilities
where facid in (1, 5)
)

select * from base;