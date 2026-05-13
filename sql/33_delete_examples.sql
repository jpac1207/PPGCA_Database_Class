-- Simple
DELETE FROM instructor;

-- Where clause
DELETE FROM instructor
WHERE
    dept_name = 'Finance';

-- Composite Where clause
DELETE FROM instructor
WHERE
    salary BETWEEN 13000 AND 15000;

-- Subquery
DELETE FROM instructor
WHERE
    dept_name IN (
        SELECT
            dept_name
        FROM
            department
        WHERE
            building = 'Watson'
    );

-- Self Reference
DELETE FROM instructor
WHERE
    salary < (
        SELECT
            AVG(salary)
        FROM
            instructor
    );