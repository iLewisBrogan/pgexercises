-- https://pgexercises.com/questions/basic/selectspecific.html

-- You want to print out a list of all of the facilities and their cost to members. How would you retrieve a list of only facility names and costs?

with base as (
select
  name
, membercost
from cd.facilities
)

select * from base;