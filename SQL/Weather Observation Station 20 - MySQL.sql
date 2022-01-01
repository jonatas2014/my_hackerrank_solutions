select round(avg(dd.lat_n), 4) as median_val
from (
      select s.lat_n, @rownum:=@rownum+1 as `row_number`, @total_rows:=@rownum
      from station s, (select @rownum:=0) r
      order by s.lat_n
     ) as dd
where dd.row_number in ( floor((@total_rows+1)/2), floor((@total_rows+2)/2) );
