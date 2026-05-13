-- Simple
UPDATE instructor
SET
    salary = salary * 1.05;

-- Simple WHERE
UPDATE instructor
SET
    salary = salary * 1.05
WHERE
    salary < 70000;

-- Self reference
UPDATE instructor
SET
    salary = salary * 1.05
WHERE
    salary < (
        SELECT
            AVG(salary)
        FROM
            instructor
    );

-- Case
UPDATE instructor
SET
    salary = CASE
        WHEN salary <= 100000 THEN salary * 1.05
        ELSE salary * 1.03
    END;

-- Scalar Example
UPDATE instructor I
SET
    salary = (
        SELECT
            AVG(salary)
        FROM
            instructor
        WHERE
            instructor.dept_name = I.dept_name
    )
WHERE
    I.salary < (
        SELECT
            AVG(salary)
        FROM
            instructor
        WHERE
            instructor.dept_name = I.dept_name
    );