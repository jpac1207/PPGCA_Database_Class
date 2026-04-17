-- Simple order by
SELECT
    name
FROM
    instructor
WHERE
    dept_name = 'Elec. Engineering'
ORDER BY
    name;

-- Multiple order by
SELECT
    *
FROM
    instructor
ORDER BY
    salary DESC,
    name ASC;