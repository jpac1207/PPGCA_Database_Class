SELECT
    COUNT(*)
FROM
    course;

-- Distinct
SELECT
    COUNT(DISTINCT id)
FROM
    teaches
WHERE
    semester = 'Spring'
    AND year = 2009;