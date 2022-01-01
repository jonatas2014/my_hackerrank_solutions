select concat(name, '(',  substring(occupation, 1, 1), ')' )
from occupations
order by name;

select concat('There are a total of ', count(name), ' ', lower(occupation), 's.') 
from occupations
group by occupation
order by count(name), occupation;
