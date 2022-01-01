select max(earning), max(t)
from
    (select distinct earning, count(*) t
    from (select months*salary earning
          from employee) as ms
    group by earning) as msg;
