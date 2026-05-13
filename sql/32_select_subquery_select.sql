SELECT
    dept_name,
    (
        SELECT
            COUNT(*)
        FROM
            instructor
        WHERE
            department.dept_name = instructor.dept_name
    ) AS instructors_number
FROM
    department;