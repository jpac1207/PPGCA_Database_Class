-- Union
(
    SELECT
        course_id
    FROM
        section
    WHERE
        semester = 'Spring'
        AND year = 2009
)
UNION
(
    SELECT
        course_id
    FROM
        section
    WHERE
        semester = 'Fall'
        AND year = 2009
);

-- Intersection
(
    SELECT
        course_id
    FROM
        section
    WHERE
        semester = 'Fall'
        AND year = 2009
)
INTERSECT
(
    SELECT
        course_id
    FROM
        section
    WHERE
        semester = 'Spring'
        AND year = 2010
);

-- Exclusion
(
    SELECT
        course_id
    FROM
        section
    WHERE
        semester = 'Spring'
        AND year = 2009
)
EXCEPT
(
    SELECT
        course_id
    FROM
        section
    WHERE
        semester = 'Spring'
        AND year = 2010
);