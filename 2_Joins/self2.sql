with a as (
select
  a.firstname as memfname
, a.surname as memsname
, a.memid
, a.recommendedby
from cd.members as a
),

b as (
select
  b.firstname as recfname
, b.surname as recsname
, b.memid
, b.recommendedby
from cd.members as b
)

select
  a.memfname
, a.memsname
, b.recfname
, b.recsname
from a
left outer join b
on b.memid = a.recommendedby
order by memsname, memfname;