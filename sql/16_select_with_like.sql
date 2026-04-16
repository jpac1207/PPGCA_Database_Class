-- LIKE

SELECT
    dept_name
FROM
    department
WHERE
    building LIKE '%Watson%'


-- NOT LIKE

SELECT
    dept_name
FROM
    department
WHERE
    building NOT LIKE '%Watson%'