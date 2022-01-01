select distinct city from station
where (substring(city, 1, 1) in ('a','e','i','o','u')) and
      (city like '%a' or
       city like '%e' or
       city like '%i' or
       city like '%o' or
       city like '%u');
