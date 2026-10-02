CREATE DATABASE school_management;

USE school_management;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10),
    class_name VARCHAR(20)
);

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

INSERT INTO teachers (first_name, last_name, subject)
VALUES
('Ahmed', 'Ali', 'Mathematics'),
('Fatima', 'Hassan', 'English'),
('Mohamed', 'Abdi', 'Science');

INSERT INTO students (first_name, last_name, age, gender, class_name)
VALUES
('Abdullahi', 'Ahmed', 18, 'Male', 'Form 4'),
('Amina', 'Hassan', 17, 'Female', 'Form 3'),
('Yusuf', 'Mohamed', 16, 'Male', 'Form 2');

INSERT INTO courses (course_name, teacher_id)
VALUES
('Mathematics', 1),
('English', 2),
('Science', 3);

SHOW TABLES;

SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM courses;
