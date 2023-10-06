CREATE TABLE stu_tbl (
    StudentName varchar(30),
    Address varchar(100),
    Age int, 
);
select * from stu_bio

ALTER TABLE stu_tbl
ADD Marks int;

EXEC sp_rename 'stu_tbl', 'stu_bio'

INSERT INTO stu_bio
(StudentName,Address,Age,Marks  )
VALUES
('srisneka','srivi',21,100 ),
('kanimozhi','svks',20,98),
('krishna','rjpm',19,97);

UPDATE stu_bio
SET Address = 'madhurai', Age= 22
WHERE StudentName = 'srisneka';

DELETE FROM stu_bio  WHERE StudentName = 'srisneka';

truncate table stu_bio ;


ALTER TABLE stu_tbl
ADD Marks int;

EXEC sp_rename 'stu_tbl', 'stu_bio'

INSERT INTO stu_bio
(StudentName,Address,Age,Marks  )
VALUES
('srisneka','srivi',21,100 ),
('kanimozhi','svks',20,98),
('krishna','rjpm',19,97);

UPDATE stu_bio
SET Address = 'madhurai', Age= 22
WHERE StudentName = 'srisneka';

DROP TABLE stu_bio;

CREATE TABLE stu_tbl (
    StudentName varchar(30),
    Address varchar(100),
    Age int, 
);
select * from stu_bio

ALTER TABLE stu_tbl
ADD Marks int;

EXEC sp_rename 'stu_tbl', 'stu_bio'

INSERT INTO stu_bio
(StudentName,Address,Age,Marks  )
VALUES
('srisneka','srivi',21,100 ),
('kanimozhi','svks',20,98),
('krishna','rjpm',19,97);

UPDATE stu_bio
SET Address = 'madhurai', Age= 22
WHERE StudentName = 'srisneka';

