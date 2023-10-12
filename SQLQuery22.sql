CREATE TABLE Students (
	StudentID int Primary Key identity(1,1),
	FirstName varchar(50),
	LastName varchar(50),
	Age int,
	CourseID int,
	foreign key (CourseID) references Courses(CourseID)
);
CREATE TABLE Courses (
	CourseID  int Primary Key identity(1,1),
	CourseName varchar(100)
);

