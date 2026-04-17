-- between
SELECT
    name
FROM
    instructor
WHERE
    salary BETWEEN 50000 AND 60000;

-- not between

SELECT
    name
FROM
    instructor
WHERE
    salary NOT BETWEEN 50000 AND 60000;