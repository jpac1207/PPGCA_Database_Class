-- All attributes from a relation

SELECT
    instructor.*
FROM
    instructor,
    teaches
WHERE
    instructor.id = teaches.id;

-- All attributes from the result relation


SELECT
    *
FROM
    instructor,
    teaches
WHERE
    instructor.id = teaches.id;