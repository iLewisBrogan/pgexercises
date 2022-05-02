with a as (
select
  concat_ws(
          ' '
          , a.firstname
          , a.surname
          ) as member
, a.memid
from cd.members as a
),

b as (
select
  b.facid
, b.memid
from cd.bookings as b
),

c as (
select
  c.facid
, c.name
from cd.facilities as c
)

select distinct
  a.member
, c.name as facility
from c
inner join b
on b.facid = c.facid
inner join a
on a.memid = b.memid
where c.name in ('Tennis Court 1', 'Tennis Court 2')
order by member, facility;