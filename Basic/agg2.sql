-- https://pgexercises.com/questions/basic/agg2.html

-- You'd like to get the first and last name of the last member(s) who signed up - not just the date. How can you do that?

with base as (
select
  firstname
, surname
, joindate
from cd.members
where joindate = (
  select max(joindate) from cd.members
  )
)

select * from base;