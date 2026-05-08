SELECT
    dept_name,
    AVG(salary)
FROM
    instructor
GROUP BY
    dept_name;