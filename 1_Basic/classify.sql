-- https://pgexercises.com/questions/basic/classify.html

-- How can you produce a list of facilities, with each labelled as 'cheap' or 'expensive' 
-- depending on if their monthly maintenance cost is more than $100? Return the name and monthly maintenance of the facilities in question.

with base as (
select
  name
, case when monthlymaintenance > 100
    then 'expensive'
    else 'cheap'
  end as cost
from cd.facilities
)

select * from base;