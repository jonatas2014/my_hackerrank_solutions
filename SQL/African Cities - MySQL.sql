SELECT ci.name
FROM city ci, country co
WHERE ci.countrycode = co.code AND co.continent = 'Africa';
