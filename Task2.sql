USE StudentManagement;
CREATE TABLE Courses(CourseID INT AUTO_INCREMENT PRIMARY KEY, CourseName VARCHAR(50));
CREATE TABLE Enrollments(EnrollmentID INT AUTO_INCREMENT PRIMARY KEY, StudentID INT, CourseID INT, EnrollmentDate DATE, FOREIGN KEY (StudentID) REFERENCES Students(StudentID), FOREIGN KEY (CourseID) REFERENCES Courses(CourseID));
INSERT INTO Courses (CourseName) VALUES ('Math'),('Science'),('English'),('History');
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate) VALUES (1, 1, '2024-01-15'), (2, 2, '2024-01-16'), (3, 1, '2024-01-17'), (3, 3, '2024-01-18'), (4, 4, '2024-01-19');
SELECT Students.Name AS StudentName, Courses.CourseName AS CourseEnrolled FROM Enrollments JOIN Students ON Enrollments.StudentID=Students.StudentID JOIN Courses ON Enrollments.CourseID=Courses.CourseID;
SELECT Courses.CourseName,COUNT(Enrollments.EnrollmentID) AS NumberOfStudents FROM Courses LEFT JOIN Enrollments ON Courses.CourseID=Enrollments.CourseID GROUP BY Courses.CourseName;
SELECT Students.Name AS StudentName, COUNT(Enrollments.CourseID) AS NumberOfCourses FROM Enrollments JOIN Students ON Enrollments.StudentID=Students.StudentID GROUP BY Students.StudentID HAVING NumberOfCourses>1;
SELECT CourseName FROM Courses LEFT JOIN Enrollments ON Courses.CourseID=Enrollments.CourseID WHERE Enrollments.CourseID IS NULL;
