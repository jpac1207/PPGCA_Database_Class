SELECT
    AVG(salary)
FROM
    instructor
WHERE
    dept_name = 'Elec. Engineering';

-- Using alias

SELECT
    AVG(salary) AS mean_salary
FROM
    instructor
WHERE
    dept_name = 'Elec. Engineering';