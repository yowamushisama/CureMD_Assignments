--Task 7
--Q1
Create Procedure AddStudent (
    @pa_FirstName varchar(50),
    @pa_LastName varchar(50),
    @pa_Age int,
    @pa_CourseID int
)
As
BEGIN
    INSERT INTO Students (FirstName, LastName, Age, CourseID)
    VALUES (@pa_FirstName, @pa_LastName, @pa_Age, @pa_CourseID);
END;

Exec AddStudent @pa_FirstName = 'Zain', @pa_LastName = 'Butt', @pa_Age = 24,  @pa_CourseID = 1;
