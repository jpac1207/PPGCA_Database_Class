--- Course
INSERT INTO
    course (course_id, title, dept_name, credits)
VALUES
    (
        'CS-347',
        'Database System Concepts',
        'Computer Science',
        3
    );

-- Section
INSERT INTO
    section (
        course_id,
        section_id,
        semester,
        year,
        building,
        room_number,
        period_id
    )
VALUES
    ('CS-347', 1, 'Fall', 2009, 'Taylor', 3128, 'A');

--- Teaches
INSERT INTO
    teaches (id, course_id, section_id, semester, year)
VALUES
    (10225, 'CS-101', 1, 'Spring', 2010),
    (10222, 'CS-347', 1, 'Fall', 2009);