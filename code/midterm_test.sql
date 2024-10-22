CREATE DATABASE midterm_test

SELECT * FROM course;
SELECT * FROM teacher;
SELECT * FROM student;
SELECT * FROM student_course;

CREATE TABLE course (
	id int NOT NULL,
	name varchar(30),
	teacher_id int NULL
);

INSERT INTO course VALUES ( 1, 'DATABASE DESIGN', 1 ),
( 2, 'ENGLISH LITERATURE', 2 ),
( 3, 'PYTHON PROGRAMMING', 1 );

CREATE TABLE teacher (
	id int NOT NULL,
	frist_name varchar (30),
	last_name varchar (30)
);

INSERT INTO teacher VALUES ( 1, 'Taylah', 'Booker' ),
( 2, 'Sarah-Louise', 'Blake' );

CREATE TABLE student (
	id int NOT NULL,
	frist_name varchar (30),
	last_name varchar (30)
);

INSERT INTO student VALUES ( 1, 'Shreya', 'Bain' ),
( 2, 'Rianna', 'Foster' ),
( 3, 'Yosef', 'Naylor' );

CREATE TABLE student_course (
	student_id int NOT NULL,
	course_id int NOT NULL
);

INSERT INTO student_course VALUES( 1, 2 ),
( 1, 3 ), ( 2, 1 ), ( 2, 2 ), ( 2, 3 ), ( 3, 1 );

SELECT student FROM student_course;

SELECT teacher FROM course;

SELECT course FROM student_course;

SELECT frist_name, last_name FROM student;

SELECT name FROM course WHERE teacher_id = 1;