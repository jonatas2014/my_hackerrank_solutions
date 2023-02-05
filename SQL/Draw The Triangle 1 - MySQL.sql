WITH RECURSIVE star_generator AS (
    SELECT
      20 star_qtd,
      REPEAT("* ", 20) repetitions
    UNION
    SELECT
      star_qtd - 1,
      REPEAT("* ", star_qtd - 1) repetitions
    FROM
      star_generator
    WHERE
      star_qtd > 1
)
SELECT
  repetitions
FROM
  star_generator;
