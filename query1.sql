-- ============================================================
-- Query 1: Get movies released in 2020
-- ============================================================
SELECT
    id,
    title,
    release_date,
    rating
FROM
    movies
WHERE
    release_date >= '2020-01-01'
    AND release_date < '2021-01-01';


-- ============================================================
-- Query 2: Get actors whose first name ends with 'w'
-- Example: Matthew, Andrew, Bartholomew
-- ============================================================
SELECT
    id,
    first_name,
    last_name
FROM
    actors
WHERE
    LOWER(first_name) LIKE '%w';


-- ============================================================
-- Query 3: Get movies with rating between 4-8
--          released between 2004 and 2010
-- ============================================================
SELECT
    id,
    title,
    rating,
    release_date
FROM
    movies
WHERE
    rating BETWEEN 4 AND 8
    AND release_date >= '2004-01-01'
    AND release_date < '2011-01-01';