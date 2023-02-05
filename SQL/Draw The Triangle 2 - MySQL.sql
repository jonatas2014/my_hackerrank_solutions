WITH RECURSIVE pattern_20 AS(
    SELECT 
        1 stars_qtd,
        CAST("* " AS CHAR(40)) star_repetitions -- Using CHAR(40) is needed to define the max column "width"
    UNION
    SELECT
        stars_qtd + 1,
        REPEAT("* ", stars_qtd + 1) star_repetitions
    FROM
        pattern_20
    WHERE
        stars_qtd < 20
)
SELECT
    star_repetitions
FROM
    pattern_20;
