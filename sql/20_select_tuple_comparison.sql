SELECT
    name,
    course_id
FROM
    instructor,
    teaches
WHERE
    (instructor.id, dept_name) = (teaches.id, 'Elec. Engineering');