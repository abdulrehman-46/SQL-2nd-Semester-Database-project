CREATE DATABASE Course_Registration_System;

use Course_Registration_System;



-- CREATING TABLE User --
CREATE TABLE User (
    User_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT, CNIC VARCHAR(20) UNIQUE NOT NULL, Email VARCHAR(100) UNIQUE NOT NULL, 
    Phone_no VARCHAR(20) NOT NULL,First_name VARCHAR(50) NOT NULL, Last_name VARCHAR(50) NOT NULL, Father_name VARCHAR(100), 
    DOB DATE, Alternate_Phone VARCHAR(20), Address VARCHAR(255), Zip VARCHAR(20), Gender VARCHAR(10), Nationality VARCHAR(50),
    Skills TEXT, Bio TEXT
);



-- CREATING TABLE Admin --
CREATE TABLE Admin (
    Admin_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT, Role VARCHAR(50) NOT NULL, Access_Level VARCHAR(50),
    Joining_Date DATE, Designation VARCHAR(50), Office_Location VARCHAR(100), User_ID INT UNIQUE NOT NULL, 
    Department_ID INT, FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);


-- CREATING TABLE Student --
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY AUTO_INCREMENT, Degree VARCHAR(100) NOT NULL, Batch VARCHAR(20), Section VARCHAR(10),
    Status VARCHAR(20), Guardian_Name VARCHAR(100), Contact VARCHAR(20), Blood_Group VARCHAR(5),
    Emergency_Contact VARCHAR(20), User_ID INT UNIQUE NOT NULL, Department_ID INT,FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);


-- CREATING TABLE Instructor --
CREATE TABLE Instructor (
    Instructor_ID INT PRIMARY KEY AUTO_INCREMENT, Qualification VARCHAR(100), Experience_Years INT,
    Designation VARCHAR(50), Ranking VARCHAR(20), Salary DECIMAL(10,2), Specialization VARCHAR(100), Joining_Date DATE,
    Status VARCHAR(20), Office_Hours VARCHAR(100), Office_Location VARCHAR(100), LinkedIn_Profile VARCHAR(255),
    User_ID INT UNIQUE NOT NULL, Department_ID INT NOT NULL, FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);


-- CREATING TABLE Department --
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY AUTO_INCREMENT, Dept_name VARCHAR(100) UNIQUE NOT NULL, Building VARCHAR(50), Location VARCHAR(100),
    Contact VARCHAR(20) UNIQUE, HOD_name VARCHAR(100), Email VARCHAR(100) UNIQUE, Established_Year YEAR, Website VARCHAR(255)
);



-- CREATING TABLE Course --
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY AUTO_INCREMENT, Course_code VARCHAR(20) UNIQUE NOT NULL, Course_name VARCHAR(100) NOT NULL,
    Description TEXT, Type VARCHAR(20), Credits INT, Duration VARCHAR(20), Weekly_Hours INT, Level VARCHAR(20), Language VARCHAR(50),
    Syllabus_Link VARCHAR(255), Status VARCHAR(20), Max_Students INT, Department_ID INT NOT NULL,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);


-- CREATING TABLE Module --
CREATE TABLE Module (
    Module_ID INT PRIMARY KEY AUTO_INCREMENT, Title VARCHAR(100) NOT NULL, Objective TEXT, Sequence INT, Reading_Material_Link VARCHAR(255),
    Course_ID INT NOT NULL, FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);



-- CREATING TABLE Lesson --
CREATE TABLE Lesson (
    Lesson_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT, Topic VARCHAR(100) NOT NULL, Objectives TEXT, Duration VARCHAR(20),
    Lesson_Type VARCHAR(20), Required_Resources VARCHAR(255), Lesson_Material_Link VARCHAR(255), Module_ID INT NOT NULL,
    FOREIGN KEY (Module_ID) REFERENCES Module(Module_ID)
);



-- CREATING TABLE Assignment --
CREATE TABLE Assignment (
    Assignment_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT, Title VARCHAR(100) NOT NULL, Description TEXT, Type VARCHAR(20),
    Duration CHAR(1) NOT NULL, Total_marks INT NOT NULL, Weightage DECIMAL(5,2), Deadline DATETIME, Created_At DATETIME,
    Updated_At DATETIME, Lesson_ID INT, FOREIGN KEY (Lesson_ID) REFERENCES Lesson(Lesson_ID)
);



-- CREATING TABLE Grade --
CREATE TABLE Grade (
    Student_ID INT NOT NULL, Assignment_ID INT NOT NULL, Marks INT NOT NULL, Comments TEXT,
    Evaluation_Date DATETIME, PRIMARY KEY (Student_ID, Assignment_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Assignment_ID) REFERENCES Assignment(Assignment_ID)
);



-- CREATING TABLE Room --
CREATE TABLE Room (
    Room_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT, Room_Number VARCHAR(20) UNIQUE NOT NULL,
    Location VARCHAR(100), Capacity INT, Room_Type VARCHAR(20), Has_Projector BOOLEAN,
    Has_AC BOOLEAN, Floor INT, Status VARCHAR(20)
);




-- CREATING TABLE Schedule --
CREATE TABLE Schedule (
    Schedule_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT, Day VARCHAR(20) NOT NULL, Start_time TIME NOT NULL,
    End_time TIME NOT NULL, Mode VARCHAR(20), Topic VARCHAR(100), Week_Number INT, Meeting_Link VARCHAR(255),
    Is_Recorded BOOLEAN, Notes TEXT, Instructor_ID INT NOT NULL, Room_ID INT NOT NULL,
    FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID), FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);


-- CREATING TABLE Enrollment --
CREATE TABLE Enrollment (
    Enrollment_ID INT PRIMARY KEY AUTO_INCREMENT, Student_ID INT NOT NULL, Course_ID INT NOT NULL,
    Enrollment_Date DATE, Status VARCHAR(20), Grade_Level VARCHAR(20),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);



-- CREATING TABLE Teaching --
CREATE TABLE Teaching (
    Teaching_ID INT PRIMARY KEY AUTO_INCREMENT, Instructor_ID INT NOT NULL, Course_ID INT NOT NULL,
    Semester VARCHAR(20), Year INT, FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);



-- CREATING TABLE Submission --
CREATE TABLE Submission (
    Submission_ID INT PRIMARY KEY AUTO_INCREMENT, Student_ID INT NOT NULL, Assignment_ID INT NOT NULL,
    Submitted_At DATETIME, File_Link VARCHAR(255), Comments TEXT, Status VARCHAR(20),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Assignment_ID) REFERENCES Assignment(Assignment_ID)
);



-- CREATING TABLE Offering --
CREATE TABLE Offering (
    Offering_ID INT PRIMARY KEY AUTO_INCREMENT, Course_ID INT NOT NULL,
    Semester VARCHAR(20), Year INT, Max_Enrollment INT,
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);


-- CREATING TABLE Held_In --
CREATE TABLE Held_In (
    Offering_ID INT NOT NULL, Room_ID INT NOT NULL, PRIMARY KEY (Offering_ID, Room_ID),
    FOREIGN KEY (Offering_ID) REFERENCES Offering(Offering_ID),
    FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);


-- CREATING TABLE Supervision --
CREATE TABLE Supervision (
    Supervisor_ID INT NOT NULL, Student_ID INT NOT NULL, Start_Date DATE,
    End_Date DATE, PRIMARY KEY (Supervisor_ID, Student_ID),
    FOREIGN KEY (Supervisor_ID) REFERENCES Instructor(Instructor_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);


-- CREATING TABLE Feedback --
CREATE TABLE Feedback (
    Feedback_ID INT PRIMARY KEY AUTO_INCREMENT, Student_ID INT NOT NULL,
    Course_ID INT NOT NULL, Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comments TEXT, Submitted_At DATETIME,
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);