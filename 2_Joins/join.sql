with a_base as (
select
  a.surname
, a.firstname
, a.memid
, a.recommendedby
from cd.members as a
),

b_base as (
select
  b.surname
, b.firstname
, b.memid
, b.recommendedby
from cd.members as b
)

select distinct
  b.firstname
, b.surname
from a_base as a
inner join b_base as b
on b.memid = a.recommendedby
order by surname, firstname;