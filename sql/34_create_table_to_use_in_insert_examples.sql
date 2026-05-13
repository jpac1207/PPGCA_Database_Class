CREATE TABLE
    student (
        id VARCHAR(5),
        name VARCHAR(20) NOT NULL,
        dept_name VARCHAR(20),
        total_cred INT,
        PRIMARY KEY (id),
        FOREIGN KEY (dept_name) REFERENCES department
    );

-- Some insertions
INSERT INTO
    student (id, name, dept_name, total_cred)
VALUES
    ('20261', 'Donald Knuth', 'Computer Science', 150),
    ('20262', 'John Von Neumann', 'Computer Science', 140);