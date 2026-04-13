CREATE TABLE
    section (
        course_id VARCHAR(8),
        section_id VARCHAR(8),
        semester VARCHAR(6),
        year NUMERIC(4, 0),
        building VARCHAR(15),
        room_number VARCHAR(7),
        period_id VARCHAR(4),
        PRIMARY KEY (course_id, section_id, semester, year),
        FOREIGN KEY (course_id) REFERENCES course
    );

CREATE TABLE
    teaches (
        id VARCHAR(5),
        course_id VARCHAR(8),
        section_id VARCHAR(8),
        semester VARCHAR(6),
        year NUMERIC(4, 0),
        PRIMARY KEY (id, course_id, section_id, semester, year),
        FOREIGN KEY (course_id, section_id, semester, year) REFERENCES section,
        FOREIGN KEY (id) REFERENCES instructor
    );