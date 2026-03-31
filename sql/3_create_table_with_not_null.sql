CREATE TABLE
    instructor (
        id varchar(5),
        name varchar(20) NOT NULL,
        dept_name varchar(20),
        salary numeric(8, 2),
        PRIMARY KEY (id),
        FOREIGN KEY (dept_name) REFERENCES course
    );