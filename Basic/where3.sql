-- https://pgexercises.com/questions/basic/where3.html

-- How can you produce a list of all facilities with the word 'Tennis' in their name?

with base as (
select
  *
from cd.facilities
where name like '%Tennis%'
)

select * from base;