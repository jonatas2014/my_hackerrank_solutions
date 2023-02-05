WITH shortest AS (
    SELECT
     city,
     LENGTH(city)  nameLength
    FROM
     station
    ORDER BY
     nameLength ASC,
     city ASC
    LIMIT 1
),

longest AS (
    SELECT
      city,
      LENGTH(city) nameLength
    FROM
      station
    ORDER BY
      nameLength DESC,
    city ASC
    LIMIT 1
)
SELECT
  city,
  namelength
FROM
  shortest
UNION
SELECT
  city,
  namelength
FROM 
  longest


