--Creating Departments Table

Create table Department
(DepartmentID INT Primary Key,
DepartmentName VARCHAR(50) NOT NULL UNIQUE)

--Creating Students Table

Create Table Students
(StudentID INT Primary Key,
Name VARCHAR(50) NOT NULL,
Age INT check (Age >= 17),
DepartmentID INT Foreign Key REFERENCES Department(DepartmentID))

--Creating Courses Table

Create Table Courses
(CourseID INT Primary Key,
CourseName VARCHAR(50) NOT NULL,
DepartmentID INT Foreign Key REFERENCES Department(DepartmentID))


--INSERTING VALUES IN 3 TABLES

insert into Department
values(1,'Computer Science'),
(2,'Mechanical'),
(3,'Electrical'),
(4,'Civil'),
(5,'Electronics')

insert into Students
values(21,'Ritesh',18,5),
(22,'Shishira',19,4),
(23,'Sunil',20,1),
(24,'raaz',21,2),
(25,'kumar',22,3)

insert into Courses
values(102,'DBMS',2),
(103,'Thermodynamics',3),
(104,'Circuits',4),
(105,'Structures',5),
(106,'AI',1)

select * from Courses
--Apply WHERE & Operators

--Write SQL queries for the following:
--1. Display all students whose age is greater than 20.
select * from Students stu 

select Age from Students where Age>20

select stu.Age from Students stu where Age>20  -- Using Alias 

1.
--Display all courses of the "Computer Science" department.

select 
d.DepartmentName as Department_Name,
c.CourseName as Course_Name,
c.CourseID as Course_ID 
from Department d inner join Courses c on d.DepartmentID=c.DepartmentID 
where d.DepartmentName ='Computer Science' 

--3
--Display all students who belong to the "Electronics" department. 

select
st.Name as std_name,
dt.DepartmentName as dept_name
from students st join Department dt 
on st.DepartmentID=dt.DepartmentID
where 
dt.DepartmentName ='Electronics'

--4
--Display students whose age is between 18 and 22.
select *
from students
where age between 18 and 22
--for specific student 
select
s.name as student_name
from students s
where  s.age between 18 and 22


--Perform joins on the tables:

--INNER JOIN Students with Departments (to show student names with their department names).
select
s.name as std_name,
d.departmentname as dept_name
from students s inner join Department d
on s.DepartmentID=d.DepartmentID

--LEFT JOIN Courses with Departments (to show all courses, even if some department does not exist).
select
c.CourseName as course_name,
d.departmentname as dept_name
from 
Courses c left join Department d
on c.DepartmentID=d.DepartmentID


--RIGHT JOIN Students with Courses (to show all courses, even if no student has enrolled in them).

select
s.Name as std_name,
c.CourseName as course_name
from 
students s
right join 
Courses c
on s.DepartmentID = c.DepartmentID