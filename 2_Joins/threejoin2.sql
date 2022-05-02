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
, b.starttime
, b.slots
from cd.bookings as b
),

c as (
select
  c.facid
, c.name
, c.membercost
, c.guestcost
from cd.facilities as c
)

select
  a.member
, c.name as facility
, case
    when a.memid = 0 then b.slots*c.guestcost
    else b.slots*c.membercost
  end as cost
from a
inner join b
on b.memid = a.memid
inner join c
on c.facid = b.facid
where b.starttime >= '2012-09-14' and b.starttime < '2012-09-15' and (
        (a.memid = 0 and b.slots*c.guestcost > 30) or
        (a.memid != 0 and b.slots*c.membercost > 30)
      )
order by cost desc;