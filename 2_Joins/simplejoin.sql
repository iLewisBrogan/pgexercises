-- https://pgexercises.com/questions/joins/simplejoin.html

-- How can you produce a list of the start times for bookings by members named 'David Farrell'?

with base as (
select
  bks.starttime
from cd.bookings      as bks
inner join cd.members as membs
on membs.memid = bks.memid
where membs.firstname = 'David' and
      membs.surname = 'Farrell'
)

select * from base;