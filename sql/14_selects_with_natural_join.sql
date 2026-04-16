-- All attributes
SELECT
    *
FROM
    instructor
    NATURAL JOIN teaches;

-- Specific attributes
SELECT
    name,
    course_id
FROM
    instructor
    NATURAL JOIN teaches;

-- Join using clause
SELECT
    name,
    title
FROM
    instructor
    NATURAL JOIN teaches
    JOIN course USING (course_id);