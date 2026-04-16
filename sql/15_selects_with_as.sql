-- AS in select clause
SELECT
    name AS instructor_name,
    course_id
FROM
    instructor,
    teaches
WHERE
    instructor.id = teaches.id;

-- AS in from clause
SELECT
    I.name,
    T.course_id
FROM
    instructor AS I,
    teaches AS T
WHERE
    I.id = T.id;