SELECT
    dept_name,
    AVG(salary) as mean_salary
FROM
    instructor
GROUP BY
    dept_name
HAVING
    AVG(salary) > 42000;