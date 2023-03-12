
--Ques-1-Create a database using SQL query.

CREATE DATABASE KULWINDER_SINGH01;

--FIRST TABLE
CREATE TABLE STUDENT
(
Admission_no int IDENTITY(1,1),
student_name varchar(50) NOT NULL,
student_id varchar (30) PRIMARY KEY,
student_roll_no varchar(30),
student_college varchar(50),
student_city varchar(50),
student_DOB date,
student_age int CHECK (student_age>=19),
);
SELECT * FROM STUDENT;
INSERT INTO STUDENT VALUES ('Kulwinder singh','qwerty','1907566','RBIENT','Hoshiarpur','2001-05-16',20),
('Davinder singh','qwert01','1907568','RBIENT','Hoshiarpur','1999-04-27',22),
('Gurpreet singh','qwert02','1907569','RBIENT','Chohal','2000-03-23',23),
('Rahul kumar','qwert03','1907560','RBIENT','Una','2001-09-18',21),
('Harsh','qwert04','1907561','RBIENT','Hoshiarpur','2000-10-26',23),
('Amit patial','qwert05','1907562','RBIENT','Hoshiarpur','2000-01-24',23),
('Aman kumar','qwert06','1907563','RBIENT','Hoshiarpur','2000-02-27',23),
('Vikas kumar','qwert07','1907564','RBIENT','Kangra','2001-04-12',21),
('Harveen singh','qwert08','1907565','RBIENT','Hoshiarpur','2003-08-02',19),
('Harpreet pal','qwert09','1907567','RBIENT','Hoshiarpur','2002-02-23',20),
('Hardeep singh','qwert21','1907568','RBIENT','Dasua','1999-06-01',22),
('Karundeep singh','qwert24','19075656','RBIENT','Nangal','1998-01-13',24),
('Jashan singh','qwert28','19075698','RBIENT','Hoshiarpur','1998-01-13',24),
('Karandeep singh','qwert23','19075609','RBIENT','Moga','1998-01-13',24),
('Karandeep goyal','qwert29','19075690','RBIENT','Tanda','1999-01-13',24),
('abhishek sharma','qwert222','19075566','RBIENT','Pune','2000-07-18',24),
('Kuldeep singh','qwert20','1907523','RBIENT','Hoshiarpur','2001-01-10',23),
('Karun gill','qwert27','19075689','RBIENT','Goa','2000-12-01',24),
('Shivani','qwert289','19075623','RBIENT','Jammu','1998-02-08',26),
('krishna','qwert287','1907512','RBIENT','Hoshiarpur','2002-01-14',22),
('Raghuveer','qwert223','19075633','RBIENT','Gurdaspur','2001-03-08',22),
('Bhanu partaap singh','qwert290','19075634','RBIENT','Hoshiarpur','1996-10-17',26),
('Vipin choudary','qwert212','19075345','RBIENT','Una','1999-03-14',23),
('Harpreet singh','qwert264','1907509','RBIENT','Hoshiarpur','1999-01-23',23),
('Rishabh singh','qwert278','19075612','RBIENT','Kangra','1998-08-17',24);


--SECOND TABLE
CREATE TABLE STUDENT_ACEDEMICS
(
Admission_number bigint IDENTITY(1,1),
ID varchar(30) PRIMARY KEY,
FOREIGN KEY (ID) REFERENCES STUDENT(student_id) ,
Score float check(score>=33),
Grade varchar(5) NOT NULL,
Attendance decimal(10),
Leaves int,
Performance varchar(10)
);
select*from STUDENT_ACEDEMICS;
INSERT INTO STUDENT_ACEDEMICS VALUES
('qwerty',90.8,'A',99.1,1,'good'),
('qwert01',92.8,'A+',99,1,'good'),
('qwert02',93.6,'B',92.7,2,'average'),
('qwert03',92.3,'A+',98.1,1,'good'),
('qwert04',89.8,'B',99.9,0,'average'),
('qwert05',75.9,'C',75.8,4,'bad'),
('qwert06',91.7,'A',97.3,2,'good'),
('qwert07',99.8,'A+',99.1,1,'good'),
('qwert08',95.3,'A+',99.1,1,'good'),
('qwert09',90.8,'A',98.9,2,'good'),
('qwert21',90.8,'A',97.4,2,'good'),
('qwert24',91.5,'A',98,2,'good'),
('qwert28',90.8,'B',92.8,3,'average'),
('qwert23',95.3,'A+',99.1,1,'good'),
('qwert222',90.8,'A',97.9,2,'good'),
('qwert20',45.8,'C',56,8,'bad'),
('qwert27',90.8,'A',99.1,1,'good'),
('qwert289',90.8,'A',99.1,1,'good'),
('qwert287',90.8,'A',99.1,1,'good'),
('qwert223',90.8,'B+',97.0,2,'good'),
('qwert29',90.8,'B+',99.1,1,'good'),
('qwert290',90.8,'A',98.9,1,'good'),
('qwert212',85.8,'B',99.1,1,'average'),
('qwert264',90.8,'A',99.7,0,'good'),
('qwert278',56.8,'C',45.9,9,'bad');
--THIRD TABLE
CREATE TABLE TEACHER
(
teacher_id INT IDENTITY(1,1) PRIMARY KEY,
teacher_name varchar(50) ,
teacher_mobile varchar(15) NOT NULL,
gender char(1),
city varchar(50),
subject varchar(50),
service_experiance int CHECK(service_experiance>=5),
);
select*from TEACHER;

INSERT INTO TEACHER VALUES
('Shubash','8078074322','M','Pune','Computer science',8),
('Rahul','8078076322','M','Una','Science',10),
('Anjali','7878454322','F','Mahalpur','Maths',15),
('Sham kumar','9878074322','M','Goa','Scial science',8),
('Pankaj','8078074309','M','Hoshiarpur','Computer science',9),
('Kiran','80780743654','F','Hamirpur','English',10),
('Arjun','8078074765','M','Dasua','Computer science',12),
('Ravi','8078074309','M','Tanda','Maths',13),
('Himmat','8078034822','M','Pune','Physics',8),
('Khushi kumari','80780742542','F','Mohali','Chemistry',16),
('Jeneder pal','807809822','M','Panchkula','Physical science',11),
('Harman','80780743544','M','Chandigarh','History',19),
('Rishabh','807807409','M','Mani majra','Maths',11),
('Virat','8078074334','M','Shimla','History',12),
('Anupama','807807498','F','Kasol','Computer science',9),
('Ashwin','8078074334','M','Hoshiarpur','English',6);

--FOURTH TABLE
CREATE TABLE PARENTS
(
sr_no INT IDENTITY(1,1),
name VARCHAR(50) NOT NULL,
city varchar(50) DEFAULT 'NULL',
mobile varchar(15) ,
child_id varchar(30) PRIMARY KEY,
FOREIGN KEY (child_id) REFERENCES STUDENT_ACEDEMICS(ID),
child_marks float,
child_attendance decimal(10),
child_performance varchar(30)
);
select*from PARENTS
INSERT INTO PARENTS VALUES
('Ajmer singh','Hoshiarpur','6283255695','qwerty',90.8,99.1,'good'),
('Ram pal','Pune','6283255692','qwert01',92.8,99,'good'),
('Harikishan yadav','Una','5283255695','qwert02',93.6,92.7,'average'),
('Tajinder singh','Una','62832556923','qwert03',92.3,98.1,'good'),
('Harman mankotia','Hamirpur','62832565695','qwert04',89.8,99.9,'average'),
('Kamlesh kumari','Pune','62832675695','qwert05',75.9,75.8,'bad'),
('Rahul','Goa','6283895695','qwert06',91.7,97.3,'good'),
('Harvinder singh','Dasua','6282345695','qwert07',99.8,99.1,'good'),
('Shamsher singh','Hamirpur','6283255695','qwert08',95.3,99.1,'good'),
('Heera singh','Una','62832123695','qwert09',90.8,98.9,'good'),
('Rina kumari','Tanda','62832865695','qwert21',90.8,97.4,'good'),
('Ashok pal','Gurdaspur','6283255695','qwert24',91.5,98,'good'),
('Gurmeet singh','Gurdaspur','6283276395','qwert28',90.8,92.8,'average'),
('Balkar singh','Tanda','62832764695','qwert23',95.3,99.1,'good'),
('Kashmir singh','Gurdaspur','6283255695','qwert222',90.8,97.9,'good'),
('Sewa singh','Tanda','62887545695','qwert20',45.8,56,'bad');
--FIFTH TABLE
CREATE TABLE PARENT_TEACHER
(
--sr_no INT IDENTITY(1,1),
parent_name varchar(50) NOT NULL,
student_id varchar(30) PRIMARY KEY,
FOREIGN KEY (student_id) REFERENCES STUDENT_ACEDEMICS(ID),
teacher_name varchar(50),
teacher_mobile varchar(15),
teacher_subject varchar(50),
parent_feedback  VARCHAR(50) DEFAULT 'Nice',
);
SELECT *FROM PARENT_TEACHER;


INSERT INTO  PARENT_TEACHER VALUES
('Ajmer singh','qwerty','Shubash','8078074322','Computer science','NICE'),
('Ram pal','qwert01','Rahul','8078076322','Science','NICE'),
('Harikishan yadav','qwert02','Anjali','7878454322','Maths','NOT BAD'),
('Tajinder singh','qwert03','Sham kumar','9878074322','Scial science','NOT BAD'),
('Harman mankotia','qwert04','Pankaj','8078074309','Computer science','NICE'),
('Kamlesh kumari','qwert05','Kiran','80780743654','English','GOOD'),
('Rahul','qwert06','Arjun','8078074765','Computer science','NICE'),
('Harvinder singh','qwert07','Ravi','8078074309','Maths','EXCELENT'),
('Shamsher singh','qwert08','Himmat','8078034822','Physics','NICE'),
('Heera singh','qwert09','Khushi kumari','80780742542','Chemistry','NICE'),
('Rina kumari','qwert21','Jeneder pal','807809822','Physical science','GOOD'),
('Ashok pal','qwert24','Harman','80780743544','History','NICE'),
('Gurmeet singh','qwert28','Rishabh','807807409','Maths','VERY GOOD'),
('Balkar singh','qwert23','Virat','8078074334','History','NICE'),
('Kashmir singh','qwert222','Anupama','807807498','Computer science','EXCELENT');
SET IDENTITY_INSERT  PARENT_TEACHER2 OFF

SELECT * FROM PARENTS;
--sixth table.
CREATE TABLE PARENT_TEACHER2

(
parent_name2 varchar(50) NOT NULL,
student_id2 varchar(30) PRIMARY KEY,
FOREIGN KEY (student_id2) REFERENCES STUDENT_ACEDEMICS(ID),
teacher_name2 varchar(50),
teacher_mobile2 varchar(15),
teacher_subject2 varchar(50),
parent_feedback2  VARCHAR(50) DEFAULT 'Nice',
);
SELECT*FROM PARENT_TEACHER2;
--SET IDENTITY_INSERT  PARENT_TEACHER2 OFF

--Ques.3.-Write a query to find the distinct record from a table.

SELECT DISTINCT mobile,child_marks,child_attendance,child_performance FROM PARENTS;

--Ques.4.-Write a query to get top 10 records from a table.

SELECT TOP 10 student_name,student_id,student_roll_no,student_college FROM STUDENT;

--Ques.5.Write a query to copy data of one table to another table.

INSERT INTO PARENT_TEACHER2
SELECT * FROM PARENT_TEACHER;
select*from PARENT_TEACHER2;

--Ques.6.Write a query to modify datatype of column in a table from integer to string.

ALTER TABLE STUDENT_ACEDEMICS ALTER COLUMN Leaves varchar(10);
SELECT*FROM STUDENT_ACEDEMICS
--Ques.7.Write a example of delete and truncate using above table.

DELETE FROM PARENTS WHERE city='Hamirpur';
select*from PARENTS

--TRUNCATE OPERATION

TRUNCATE TABLE PARENTS;

--Ques.8.-write a query update the rows for specific id's.

UPDATE TEACHER SET city='Barnala' WHERE city='pune';
SELECT *FROM TEACHER
--Ques.9.Write a query  to add dummy row in table and then delete that dummy row.

 --Adding dummy row

 INSERT INTO TEACHER  VALUES('Dummy row','Dummy row','D','Dummy row','Dummy row',23);
 SELECT *FROM TEACHER

 --Deleting dummy row

DELETE FROM TEACHER WHERE teacher_name='Dummy row';

--Ques.10.Write a query to add column in table of type of string.

--Adding column

 ALTER TABLE TEACHER ADD Qualification varchar(20);
 SELECT * FROM TEACHER;
--Ques.11.Write a query to remove adove column from table.

ALTER TABLE TEACHER DROP COLUMN Qualification;
 
 select*from TEACHER

 --Ques.13.Write a select query using alias on each column of table.
 
 SELECT name AS full_name,city AS area,mobile AS PHONE,child_id AS ID,child_marks AS marks,child_attendance AS attendance ,
 child_performance AS performance FROM PARENTS;

 










 
