INSERT INTO
    instructor
SELECT
    id,
    name,
    dept_name,
    18000
FROM
    student
WHERE
    dept_name = 'Computer Science'
    AND total_cred > 140;