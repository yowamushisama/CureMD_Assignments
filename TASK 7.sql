-- Task 7
--Q1
Select s.FirstName,s.LastName
from Students as s 
inner join Courses as c  ON s.CourseID = c.CourseID
Where s.CourseID is	NULL

--Q2
Select TOP 1 c.CourseName,COUNT(*) as totalStudents
from Students as s
Join courses as c on s.CourseID = c.CourseID
Group by c.CourseName
Order by totalStudents DESC

--Q3
Select * from Students
Where Age > (Select Avg(Age) from Students)

--Q4
Select c.CourseName, Count(*) as totalStudents, Avg(s.Age) as AverageAge
From students as s
Join Courses as c on s.CourseID = c.CourseID
Group by c.CourseName
--Q5
Select c.CourseName
from Courses as c
left join Students as s on s.CourseID = c.CourseID
Where s.CourseID is NULL
--Q6
Select Distinct student2.* 
From Students as student1
join Students as student2 on student1.CourseID = student2.	CourseID
Where student1.firstName = 'Ahmed' AND student1.lastName = 'Hassan'

--Q7
SELECT
    c.CourseName,
    (SELECT TOP 1 FirstName + ' ' + LastName 
     FROM Students 
     WHERE CourseID = c.CourseID 
     ORDER BY Age ASC) AS YoungestStudent,
    (SELECT TOP 1 FirstName + ' ' + LastName 
     FROM Students 
     WHERE CourseID = c.CourseID 
     ORDER BY Age DESC) AS OldestStudent
FROM
    Courses c;