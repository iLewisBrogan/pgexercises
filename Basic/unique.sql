-- https://pgexercises.com/questions/basic/unique.html

-- How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.

with base as (
select distinct
  surname
from cd.members
order by surname
)

select * from base
limit 10;