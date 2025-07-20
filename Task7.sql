USE StudentManagement;
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE scores (
    score_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    score INT,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);
INSERT INTO student (student_id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');
INSERT INTO scores (score_id, student_id, subject, score) VALUES
(1, 1, 'Math', 85),
(2, 1, 'Science', 78),
(3, 2, 'Math', 42),
(4, 2, 'Science', 38),
(5, 3, 'Math', 90),
(6, 3, 'Science', 92);
CREATE VIEW student_scores AS
SELECT s.student_id, s.name, sc.subject, sc.score
FROM student s
JOIN scores sc ON s.student_id = sc.student_id;
SELECT * FROM student_scores;
CREATE VIEW passed_students AS
SELECT student_id, name
FROM student
WHERE student_id NOT IN (
    SELECT student_id FROM scores WHERE score < 40
);
SELECT * FROM passed_students;