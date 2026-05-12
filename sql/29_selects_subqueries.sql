-- IN
SELECT DISTINCT
    course_id
FROM
    section
WHERE
    semester = 'Fall'
    AND year = 2009
    AND course_id IN (
        SELECT
            course_id
        FROM
            section
        WHERE
            semester = 'Spring'
            AND year = 2010
    );

-- NOT IN
SELECT DISTINCT
    course_id
FROM
    section
WHERE
    semester = 'Fall'
    AND year = 2009
    AND course_id NOT IN (
        SELECT
            course_id
        FROM
            section
        WHERE
            semester = 'Spring'
            AND year = 2010
    );

-- Enumerated sets
SELECT DISTINCT
    name
FROM
    instructor
WHERE
    name NOT IN ('Mozart', 'Einstein');

-- Multiple attributes IN
SELECT
    COUNT(DISTINCT id)
FROM
    teaches
WHERE
    (course_id, section_id) IN (
        SELECT
            course_id,
            section_id
        FROM
            teaches
        WHERE
            course_id = 'CS-101'
            AND section_id = '1'
    );

-- Set comparison - SOME
SELECT
    name
FROM
    instructor
WHERE
    salary > SOME (
        SELECT
            salary
        FROM
            instructor
        WHERE
            dept_name = 'Biology'
    );

-- Set comparison - ALL
SELECT
    name
FROM
    instructor
WHERE
    salary > ALL (
        SELECT
            salary
        FROM
            instructor
        WHERE
            dept_name = 'Biology'
    );

-- Set comparison
SELECT
    dept_name
FROM
    instructor
GROUP BY
    dept_name
HAVING
    AVG(salary) >= ALL (
        SELECT
            AVG(salary)
        FROM
            instructor
        GROUP BY
            dept_name
    );

-- Set comparison - EXISTS
SELECT
    course_id
FROM
    section AS S
WHERE
    semester = 'Fall'
    AND year = 2009
    AND EXISTS (
        SELECT
            *
        FROM
            section AS T
        WHERE
            semester = 'Spring'
            AND year = 2010
            AND S.course_id = T.course_id
    );

-- Set comparison - NOT EXISTS
SELECT
    course_id
FROM
    section AS S
WHERE
    semester = 'Fall'
    AND year = 2009
    AND NOT EXISTS (
        SELECT
            *
        FROM
            section AS T
        WHERE
            semester = 'Spring'
            AND year = 2010
            AND S.course_id = T.course_id
    );
