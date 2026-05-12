-- Simple
SELECT
    dept_name,
    mean_salary
FROM
    (
        SELECT
            dept_name,
            AVG(salary) AS mean_salary
        FROM
            instructor
        GROUP BY
            dept_name
    )
WHERE
    mean_salary > 42000;

-- Alias
SELECT
    dept_name,
    mean_salary
FROM
    (
        SELECT
            dept_name,
            AVG(salary) AS mean_salary
        FROM
            instructor
        GROUP BY
            dept_name AS dept_mean (dept_name, mean_salary)
    )
WHERE
    mean_salary > 42000;