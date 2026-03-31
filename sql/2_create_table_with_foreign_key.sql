CREATE TABLE
    course (
        course_id varchar(7),
        title varchar(50),
        dept_name varchar(20),
        credits numeric(3, 0),
        PRIMARY KEY (course_id),
        FOREIGN KEY (dept_name) REFERENCES department
    );