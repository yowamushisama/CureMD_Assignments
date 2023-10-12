SELECT * FROM Students
WHERE Age > 20

SELECT s.firstName,s.LastName,s.Age, C.CourseName
FROM Students as s
inner join Courses as c on s.CourseID = c.CourseID
WHERE c.CourseID = 1
