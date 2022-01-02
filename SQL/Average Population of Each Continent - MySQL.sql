SELECT co.continent, FLOOR(AVG(ci.population))
FROM country co, city ci
WHERE co.code = ci.countrycode
GROUP BY co.continent;
