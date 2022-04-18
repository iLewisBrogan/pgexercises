-- https://pgexercises.com/questions/basic/agg.html

-- You'd like to get the signup date of your last member. How can you retrieve this information?

with base as (
select
  max(joindate) as latest
from cd.members
)

select * from base;