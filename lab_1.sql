CREATE TABLE Personal_information_table
(
Roll_no varchar(255),
Phone_no bigint(255),
Name varchar(15),
PRIMARY KEY (Roll_no)
);

ALTER TABLE Personal_information_table
ALTER COLUMN Phone_no Integer;


INSERT INTO Personal_information_table
VALUES ('1401cs331','99222869511','pralay1');

INSERT INTO Personal_information_table 
VALUES ('1401cs332','99222869512','pralay2');

INSERT INTO Personal_information_table
VALUES ('1401cs333','99222869513','pralay3');

INSERT INTO Personal_information_table
VALUES ('1401cs334','99222869514','pralay4');

INSERT INTO Personal_information_table
VALUES ('1401cs335','99222869515','pralay5');

=====================================================================

CREATE TABLE Courses_information_table
(
Course_id varchar(10),
Name varchar(15),
PRIMARY KEY (Course_id)
);

INSERT INTO Courses_information_table
VALUES ('cs3351','pralay1');
 
INSERT INTO Courses_information_table
VALUES ('cs3352','pralay2');
 
INSERT INTO Courses_information_table
VALUES ('cs3353','pralay3');
 
INSERT INTO Courses_information_table
VALUES ('cs3354','pralay4');
 
INSERT INTO Courses_information_table
VALUES ('cs3355','pralay5');



INSERT INTO Courses_information_table (Course_id,Name)
VALUES ('CS345','pralay');

===========================================================================


CREATE TABLE Courses_of_students_table
(
Course_id varchar(10),
Roll_no varchar(255),
FOREIGN KEY (Course_id) REFERENCES Courses_information_table(Course_id) on DELETE CASCADE,
FOREIGN KEY (Roll_no) REFERENCES Personal_information_table(Roll_no) on DELETE CASCADE 
);



INSERT INTO Courses_of_students_table
VALUES ('cs3351','1401cs331');

INSERT INTO Courses_of_students_table
VALUES ('cs3352','1401cs332');
INSERT INTO Courses_of_students_table
VALUES ('cs3353','1401cs333');
INSERT INTO Courses_of_students_table
VALUES ('cs3354','1401cs334');

INSERT INTO Courses_of_students_table
VALUES ('cs3355','1401cs335');





CREATE TABLE Faculty_table
(
Faculty_name varchar(255),
Fac_id int(15),
Salary int(10),
PRIMARY KEY (Fac_id)
);

INSERT INTO Faculty_table
VALUES ('A','1','200');

INSERT INTO Faculty_table
VALUES ('B','2','200');

INSERT INTO Faculty_table
VALUES ('C','3','200');

INSERT INTO Faculty_table
VALUES ('D','4','200');

INSERT INTO Faculty_table
VALUES ('E','5','200');


CREATE TABLE Faculty_course_table
(
Fac_id int(15),
Course_id varchar(10),
FOREIGN KEY (Course_id) REFERENCES Courses_information_table(Course_id),
FOREIGN KEY (Fac_id) REFERENCES Faculty_table(Fac_id)
);

INSERT INTO Faculty_course_table
VALUES ('1','cs3351');

INSERT INTO Faculty_course_table
VALUES ('2','cs3352');


INSERT INTO Faculty_course_table
VALUES ('3','cs3353');


INSERT INTO Faculty_course_table
VALUES ('4','cs3354');


INSERT INTO Faculty_course_table
VALUES ('5','cs3355');

--------------------------------------------------------
======================================================

select * from Courses_information_table;


select * from   Personal_information_table;


SHOW CREATE TABLE `Courses_of_students_table`;

SELECT * FROM information_schema.TABLE_CONSTRAINTS 
WHERE information_schema.TABLE_CONSTRAINTS.CONSTRAINT_TYPE = 'FOREIGN KEY' 
AND information_schema.TABLE_CONSTRAINTS.TABLE_SCHEMA = 'Students'
AND information_schema.TABLE_CONSTRAINTS.TABLE_NAME = 'Courses_of_students_table';


UPDATE Personal_information_table SET Phone_no='123456'  WHERE Roll_no='1401cs332';

DELETE FROM Personal_information_table WHERE Phone_no='123456'; 
------------------------------------------------------------------



