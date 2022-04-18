-- https://pgexercises.com/questions/basic/where.html

-- How can you produce a list of facilities that charge a fee to members?

with base as (
select
  *
from cd.facilities
where membercost > 0
)

select * from base;