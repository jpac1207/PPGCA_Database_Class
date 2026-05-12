-- Max budget
WITH
    max_budget (value) AS (
        SELECT
            MAX(budget)
        FROM
            department
    )
SELECT
    budget
FROM
    department,
    max_budget
WHERE
    department.budget = max_budget.value;

-- Salaries above the mean - Multiple temp relations
WITH
    dept_total (dept_name, value) AS (
        SELECT
            dept_name,
            sum(salary)
        FROM
            instructor
        GROUP BY
            dept_name
    ),
    dept_total_mean (value) AS (
        SELECT
            AVG(value)
        FROM
            dept_total
    )
SELECT
    dept_name
FROM
    dept_total,
    dept_total_mean
WHERE
    dept_total.value > dept_total_mean.value;