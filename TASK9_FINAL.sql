--Task 9
--Q1
CREATE Procedure StudentsNotEnrolled
as
Begin
    SELECT FirstName, LastName
    FROM Students
    WHERE CourseID IS NULL OR CourseID = 0;
End;
--Q2
CREATE PROCEDURE MostPopularCourse
AS
BEGIN
    SELECT TOP 1
        CourseID,
        COUNT(*) as EnrolledStudentcount
    FROM Students
    GROUP BY CourseID
    ORDER BY COUNT(*) DESC;
END;
--Q3
Create Procedure MoreThanAverageAge
as
Begin
    DECLARE @AverageAge INT;
    SELECT @AverageAge = AVG(Age) FROM Students;

    SELECT *
    FROM Students
    WHERE Age > @AverageAge;
END;

--Q4
CREATE PROCEDURE StatsforeachCourse
AS
BEGIN
    SELECT
        CourseID,
        COUNT(*) AS TotalStudents,
        AVG(Age) AS AverageAge
    FROM Students
    GROUP BY CourseID;
END;

--Q5
CREATE PROCEDURE ListCoursesWithNoStudents
AS
BEGIN
    SELECT CourseID, CourseName
    FROM Courses
    WHERE CourseID NOT IN (SELECT DISTINCT CourseID FROM Students);
END;

--Q6
CREATE PROCEDURE ListStudentswithsameCourses
@SpecificStudentID INT
AS
BEGIN
    SELECT DISTINCT S.StudentID, S.FirstName, S.LastName
    FROM Students S
    WHERE EXISTS (
        SELECT 1
        FROM Students AS SpecificStudent
        WHERE SpecificStudent.StudentID = @SpecificStudentID
        AND S.CourseID = SpecificStudent.CourseID
        AND S.StudentID != @SpecificStudentID
    );
END;
--Q7
CREATE PROCEDURE ListYoungandOldestStudentsForEachCourse
AS
BEGIN
   SELECT
       CourseID,
       MIN(Age) AS YoungestAge,
       MAX(Age) AS OldestAge,
       MIN(StudentID) AS YoungestStudentID,
       MAX(StudentID) AS OldestStudentID
   FROM Students
   GROUP BY CourseID;
END;


