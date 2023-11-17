-- CREATE TABLES

CREATE TABLE university (
    university_id SERIAL PRIMARY KEY,
    university_name VARCHAR
);
CREATE TABLE college (
    college_id SERIAL PRIMARY KEY,
    college_name VARCHAR,
    university_id INTEGER REFERENCES university(university_id)
);
CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR
);
CREATE TABLE college_course (
    college_course_id SERIAL PRIMARY KEY,
    college_id INTEGER REFERENCES college(college_id),
    course_id INTEGER REFERENCES course(course_id)
);
create table subject(
subject_id serial primary key not null , subject_name VARCHAR not null)
CREATE TABLE course_subject (
    course_subject_id SERIAL PRIMARY KEY NOT NULL,
    course_id integer references course(course_id),
    subject_id INTEGER REFERENCES subject(subject_id)
);
create table semester(semester_id  SERIAL PRIMARY KEY NOT NULL, sem_month VARCHAR NOT null,sem_year INTEGER NOT null)

create table student(student_id serial primary key not null,student_name VARCHAR not null, DOB date ,phone integer ,joining_year integer, college_id integer references college(college_id),course_id integer references course(course_id))

create table marks(mark_id serial primary key not null,student_id integer references student(student_id),
semester_id integer references semester(semester_id),marks integer,subject_id integer references subject(subject_id))

-- INSERT DATAS

insert into university (university_name) values ('pondicherry university')

insert into college (college_name,university_id)
values ('PEC',1),('SMVEC',1),('MIT',1),('TAC',1),('IDHAYA',1);

insert into course (course_name)
values ('Mech'),('CSC'),('IT'),('EEE'),('ECE'),('MCA'),('BCA');

insert into course (course_name)
values ('B.Sc.,Chemistry'),('B.Sc., Computer Science'), ('M.Sc., Maths'),('M.Sc., Physics'),('B.A. Tamil'),('B.A. English');

insert into course (course_name)
values ('chemical engineering'),('BME');

insert into college_course (college_id,course_id)
values (1,1),(1,2),(1,3),(1,4),(1,14)

insert into college_course (college_id,course_id)
values (2,1),(2,2),(2,3),(2,4),(2,5)

insert into college_course (college_id,course_id)
values (3,2),(3,3),(3,4),(3,14),(3,15)

insert into college_course (college_id,course_id)
values (4,6),(4,7),(4,8),(4,9),(4,10)

insert into college_course (college_id,course_id)
values (5,11),(5,12),(5,13),(5,8),(5,10)

insert into subject(subject_name)
values ('tamil'),('english'),('maths'),('thermodynamics'),('physics'),('chemistry'),('environment science'),('database management system'),('artificial intelegence'),
       ('computer programing'),('java'),('python'),('algebra'),('trignometri'),('integral calculas');
insert into course_subject(subject_id,course_id)
values (4,1),(5,1),(6,1);
insert into course_subject(subject_id,course_id)
values (10,2),(11,2),(12,2),(10,3),(11,3),(12,3),(3,4),(2,4),(6,4),(4,5),(5,5),(6,5);
insert into course_subject(subject_id,course_id)
values (8,6),(9,6),(10,6),(7,7),(8,7),(9,7);

insert into course_subject(subject_id,course_id)
values (3,8),(6,8),(7,8),(10,9),(11,9),(12,9);

insert into course_subject(subject_id,course_id)
values (13,10),(14,10),(15,10),(3,11),(4,11),(5,11);

insert into course_subject(subject_id,course_id)
values (1,12),(2,12),(3,12),(1,13),(2,13),(3,13);

insert into course_subject(subject_id,course_id)
values (2,14),(3,14),(6,14),(2,15),(3,15),(4,15);

insert into semester(sem_month,sem_year)
values ('april',2023);

insert into student(student_name,DOB,phone,joining_year,course_id,college_id)
values ('Sriram','2004-08-09',0428356,2021,2,1);


INSERT INTO student(student_name, DOB, phone, joining_year, course_id, college_id)
VALUES
    ('ramajeyam', '2004-08-09', 0428356, 2021, 2, 1),
    ('Alice', '2003-03-15', 0712345, 2022, 3, 2),
    ('Bob', '2002-07-21', 0987654, 2020, 3, 3),
    ('Emily', '2005-01-12', 0567890, 2021, 7, 4),
    ('Daniel', '2003-11-05', 0123456, 2023, 2, 3),
    ('Grace', '2001-09-30', 0789012, 2020, 1, 3),
    ('Liam', '2004-06-18', 0345678, 2022, 13, 5),
    ('Olivia', '2002-04-25', 0890123, 2021, 8, 5),
    ('Mia', '2000-12-08', 0456789, 2023, 4, 2);

INSERT INTO marks(student_id, semester_id, marks, subject_id)
VALUES
    (1, 1, 85, 10),
    (1, 1, 92, 11),
    (1, 1, 78, 12),
    (2, 1, 89, 10),
    (2, 1, 95, 11),
    (2, 1, 20, 12),
    (8, 1, 88, 1),
    (8, 1, 76, 2),
    (8, 1, 76, 3);

INSERT INTO marks(student_id, semester_id, marks, subject_id)
VALUES
    (5, 1, 10, 7),
    (5, 1, 9, 8),
    (5, 1, 20, 9);