--Select 10 rows from the database to have understand columns and values--

SELECT *
FROM university_rankings ur 
LIMIT 10

--Add entry for Duke Tech--

INSERT INTO "university_rankings" ("year","world_rank","institution","country","score")
VALUES (2014, 350, 'Duke Tech', 'USA', 60.5);

-- Confirm added entry was done correctly--

SELECT *
FROM "university_rankings"
WHERE "year" = 2014 AND "institution" = 'Duke Tech';

--Confirm how many Japan Universities are in the top 200 in 2013--

SELECT COUNT(*) AS japan_top200_2013
FROM "university_rankings"
WHERE "year" = 2013
  AND "country" = 'Japan'
  AND "world_rank" GLOB '[0-9]*'
  AND CAST("world rank" AS INTEGER) <= 200;

--Find where Oxford is located for 2014--

SELECT institution, country, year, score
FROM "university_rankings"
WHERE "year" = 2014
  AND institution LIKE '%Oxford%';

--Increase Oxford's score by 1.2

UPDATE "university_rankings"
SET "score" = "score" + 1.2
WHERE "year" = 2014
  AND "institution" = 'University of Oxford';

--Preview how many rows from 2015 have a score lower than 45, delete them and verify they were deleted--

SELECT COUNT(*) AS to_delete
FROM "university_rankings"
WHERE "year" = 2015
  AND "score" < 45;

DELETE FROM "university_rankings"
WHERE "year" = 2015
  AND "score" < 45;

--Short overview of average score, min score and maximum score per year after cleaning of data--

SELECT
  "year",
  COUNT(*)                          AS n_universities,
  ROUND(AVG("score"), 2)            AS avg_score,
  ROUND(MIN("score"), 2)            AS min_score,
  ROUND(MAX("score"), 2)            AS max_score
FROM "university_rankings"
GROUP BY "year"
ORDER BY "year";



