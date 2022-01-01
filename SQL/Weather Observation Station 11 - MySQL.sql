select distinct city
from station
where (substring(city,1,1) not in ('a','e','i','o','u')) or
      (city not like '%a' and
       city not like '%e' and
       city not like '%i' and
       city not like '%o' and
       city not like '%u');
