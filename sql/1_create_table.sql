-- CREATE TABLE r 
-- (A_1 D_1,
-- A_2 D_2,
-- ..
-- A_n D_n,
-- <integrity_restriction_1>
-- .. 
-- <integrity_restriction_k>)


CREATE TABLE
    department (
        dept_name varchar(20),
        building varchar(15),
        budget numeric(12, 2),
        PRIMARY KEY (dept_name)
    );

