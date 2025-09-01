CREATE TABLE Student (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    Course VARCHAR(50) DEFAULT 'General',
    AdmissionDate DATE NOT NULL
)



INSERT INTO Student (FirstName, LastName, Email, Age, Course, AdmissionDate)
VALUES 
('John', 'lockie', 'john.lockie@outlook.com', 20, 'Computer Science', '2023-08-01'),
('Jammie', 'Smith', 'jammie.smith@outlook.com', 19, 'Mathematics', '2023-08-10'),
('Alice', 'John', 'alice.john@outlook.com', 22, 'Physics', '2023-08-15'),
('Kesari', 'Williams', 'Kesari.williams@outlook.com', 21, 'Chemistry', '2023-08-20'),
('Michael', 'Clark', 'Michael.Clark@outlook.com', 25, DEFAULT, '2023-08-25'),
('Tim', 'Davis', 'Tim.davis@outlook.com', 18, 'Biology', '2023-08-30'),
('David', 'Warner', 'david.warner@gamil.com', 23, 'Engineering', '2023-09-01')

 select * from Student

ALTER TABLE Student
ADD PhoneNumber VARCHAR(15)

UPDATE Student
SET Age = 21
WHERE Email = 'john.lockie@outlook.com'

SELECT *
INTO Student_Backup
FROM Student;
 

update Student
set PhoneNumber= 9019368608

select * from Student
where Course='chemistry'

update Student_Backup
set Student_Backup.PhoneNumber= Student.PhoneNumber
From Student_Backup
join Student
on Student_Backup.StudentID=Student.StudentID

