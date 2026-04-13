-- course
INSERT INTO
    course (course_id, title, dept_name, credits)
VALUES
    ('BIO-101', 'Intro. to Biology', 'Biology', 4),
    ('BIO-301', 'Genetics', 'Biology', 4),
    (
        'CS-101',
        'Intro to Computer Science',
        'Computer Science',
        4
    ),
    ('CS-190', 'Game Design', 'Computer Science', 4),
    (
        'EE-181',
        'Intro to Digital Systems',
        'Elec. Engineering',
        3
    );

-- section
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
    (
        'BIO-101',
        '1',
        'Summer',
        2009,
        'Painter',
        '514',
        'B'
    ),
    (
        'BIO-301',
        '1',
        'Summer',
        2010,
        'Painter',
        '514',
        'A'
    ),
    (
        'CS-101',
        '1',
        'Fall',
        2009,
        'Packard',
        '101',
        'H'
    ),
    (
        'CS-190',
        '1',
        'Spring',
        2009,
        'Taylor',
        '3128',
        'E'
    ),
    (
        'EE-181',
        '1',
        'Spring',
        2009,
        'Taylor',
        '3128',
        'C'
    );

-- teaches
INSERT INTO
    teaches (id, course_id, section_id, semester, year)
VALUES
    ('10222', 'CS-101', '1', 'Fall', 2009),
    ('10222', 'CS-190', '1', 'Spring', 2009),
    ('10221', 'BIO-101', '1', 'Summer', 2009),
    ('10221', 'BIO-301', '1', 'Summer', 2010),
    ('10223', 'EE-181', '1', 'Spring', 2009);