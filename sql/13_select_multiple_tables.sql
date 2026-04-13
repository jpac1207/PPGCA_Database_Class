-- cartesian product
SELECT
    *
FROM
    instructor,
    teaches;

-- predicate
SELECT
    *
FROM
    instructor,
    teaches
WHERE
    instructor.id = teaches.id;

-- selected attributes
SELECT
    name,
    course_id
FROM
    instructor,
    teaches
WHERE
    instructor.id = teaches.id;

-- multiple predicates
SELECT
    name,
    course_id
FROM
    instructor,
    teaches
WHERE
    instructor.id = teaches.id
    AND instructor.dept_name = 'Computer Science';