SELECT doctor, professor, singer, actor 
FROM 
(SELECT * FROM
                  (SELECT name, occupation, (ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name))
                   AS row_num 
                   FROM occupations)
PIVOT
     (MIN(name) for occupation IN ('Doctor' as doctor, 'Professor' as professor, 'Singer' AS singer, 'Actor' as actor))
ORDER BY row_num);
