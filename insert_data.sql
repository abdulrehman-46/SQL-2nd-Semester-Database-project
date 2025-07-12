-- INSERTING DATA INTO User --
INSERT INTO User ( User_ID, CNIC, Email, Phone_no, First_name, Last_name, Father_name, DOB, Alternate_Phone, Address, Zip, 
                   Gender, Nationality, Skills, Bio )
VALUES (1, '35202-12345178-1', 'ali.khan@example.com', '03470919084', 'Ali', 'Khan', 'Muhammad Khan', '2001-01-01', NULL, 'Street 1',
	    '44000', 'Male', 'Pakistani', 'C++, SQL', 'Hardworking student with a passion for tech.'),
	   (2, '35202-12345278-2', 'ayesha.malik@example.com', '03338141227', 'Ayesha', 'Malik', 'Muhammad Malik', '2002-01-01', NULL,
        'Street 2', '44001', 'Female', 'Pakistani', 'HTML, CSS', 'Creative designer with leadership skills.'),
	   (3, '35202-12345378-3', 'bilal.ahmed@example.com', '03357473240', 'Bilal', 'Ahmed', 'Muhammad Ahmed', '2003-01-01', NULL, 
        'Street 3', '44002', 'Male', 'Pakistani', 'Python, Java', 'Tech enthusiast who loves problem solving.'),
       (4, '35202-12345478-4', 'fatima.raza@example.com', '03323611821', 'Fatima', 'Raza', 'Muhammad Raza', '2004-01-01', NULL, 
		'Street 4', '44003', 'Female', 'Pakistani', 'UI/UX, Figma', 'Detail-oriented with excellent communication.'),
       (5, '35202-12345578-5', 'usman.chaudhry@example.com', '03250557910', 'Usman', 'Chaudhry', 'Muhammad Chaudhry', '2005-01-01',
        NULL, 'Street 5', '44004', 'Male', 'Pakistani', 'SQL, Networking', 'Keen learner of databases and infrastructure.'),
       (6, '35202-12345678-6', 'zainab.saeed@example.com', '03490990736', 'Zainab', 'Saeed', 'Muhammad Saeed', '2006-01-01', NULL, 
        'Street 6', '44005', 'Female', 'Pakistani', 'ReactJS, JS', 'Frontend developer passionate about web apps.'),
       (7, '35202-12345778-7', 'hamza.iqbal@example.com', '03488783900', 'Hamza', 'Iqbal', 'Muhammad Iqbal', '2007-01-01', NULL, 
        'Street 7', '44006', 'Male', 'Pakistani', 'Laravel, PHP', 'Backend developer focusing on secure systems.');
        
        
        
-- INSERTING DATA INTO Admin --
INSERT INTO Admin (Admin_ID, Role, Access_Level, Joining_Date, Designation, Office_Location, User_ID, Department_ID)
VALUES
    (1, 'System Admin', 'Full', '2022-01-01', 'Manager', 'Block A', 1, NULL),
    (2, 'Course Admin', 'Medium', '2022-02-01', 'Coordinator', 'Block B', 2, NULL),
    (3, 'HR Admin', 'High', '2022-03-01', 'HR Head', 'Main Office', 3, NULL),
    (4, 'Library Admin', 'Low', '2022-04-01', 'Librarian', 'Library Block', 4, NULL),
    (5, 'IT Admin', 'Medium', '2022-05-01', 'IT Coordinator', 'IT Lab', 5, NULL),
    (6, 'Exam Admin', 'High', '2022-06-01', 'Exam Head', 'Exam Wing', 6, NULL),
    (7, 'Student Affairs', 'Full', '2022-07-01', 'Director', 'Admin Block', 7, NULL);



-- INSERTING DATA INTO Student --
INSERT INTO Student (
    Degree, Batch, Section, Status, Guardian_Name, Contact, Blood_Group, Emergency_Contact, User_ID, Department_ID)
VALUES
    ('BS Software Engineering', '2022', 'A', 'Active', 'Ahmed Khan', '03001234567', 'B+', '03211234567', 1, 1),
    ('BS Computer Science', '2022', 'B', 'Active', 'Malik Faisal', '03011234567', 'O+', '03221234567', 2, 2),
    ('BS IT', '2023', 'A', 'Active', 'Abid Bhatti', '03021234567', 'A+', '03231234567', 3, 3),
    ('BS Data Science', '2022', 'C', 'Active', 'Raza Ali', '03031234567', 'AB+', '03241234567', 4, 4),
    ('BS Cyber Security', '2023', 'B', 'Active', 'Chaudhry Taimoor', '03041234567', 'B-', '03251234567', 5, 5),
    ('BS AI', '2024', 'A', 'Active', 'Saeed Iqbal', '03051234567', 'O-', '03261234567', 6, 6),
    ('BS Robotics', '2023', 'C', 'Active', 'Iqbal Sheikh', '03061234567', 'A-', '03271234567', 7, 7);




-- INSERTING DATA INTO Instructor --
INSERT INTO Instructor ( Qualification, Experience_Years, Designation, Ranking, Salary, Specialization, Joining_Date, Status,
    Office_Hours, Office_Location, LinkedIn_Profile, User_ID, Department_ID) 
VALUES
    ('PhD CS', 10, 'Professor', 'Senior', 200000.00, 'AI', '2015-01-01', 'Active', '9AM-1PM', 'A-101', 
    'linkedin.com/in/ali', 1, 1),
    ('MS IT', 8, 'Associate Prof', 'Mid', 180000.00, 'Networking', '2016-02-01', 'Active', '10AM-2PM', 'B-202', 
    'linkedin.com/in/ayesha', 2, 2),
    ('PhD DS', 12, 'Professor', 'Senior', 220000.00, 'Data Mining', '2014-03-01', 'Active', '8AM-12PM', 'C-303', 
    'linkedin.com/in/bilal', 3, 4),
    ('MS SE', 6, 'Lecturer', 'Junior', 150000.00, 'SE', '2018-04-01', 'Active', '11AM-3PM', 'D-404', 
    'linkedin.com/in/fatima', 4, 1),
    ('PhD AI', 11, 'Associate Prof', 'Mid', 190000.00, 'ML', '2013-05-01', 'Active', '9AM-1PM', 'E-505', 
    'linkedin.com/in/usman', 5, 6),
    ('MS CS', 7, 'Lecturer', 'Junior', 160000.00, 'Web Dev', '2017-06-01', 'Active', '12PM-4PM', 'F-606', 
    'linkedin.com/in/zainab', 6, 2),
    ('PhD Robotics', 15, 'Professor', 'Senior', 250000.00, 'Embedded', '2012-07-01', 'Active', '8AM-12PM', 'G-707', 
    'linkedin.com/in/hamza', 7, 7);




-- INSERTING DATA INTO Department --
INSERT INTO Department ( Dept_name, Building, Location, Contact, HOD_name, Email, Established_Year, Website)
VALUES
    ('Software Engineering', 'SE Block', 'Main Campus', '0512345671', 'Dr. Ali', 'se@uni.pk', 2010, 'se.uni.pk'),
    ('Computer Science', 'CS Block', 'Main Campus', '0512345672', 'Dr. Ayesha', 'cs@uni.pk', 2011, 'cs.uni.pk'),
    ('Information Technology', 'IT Block', 'Main Campus', '0512345673', 'Dr. Bilal', 'it@uni.pk', 2012, 'it.uni.pk'),
    ('Data Science', 'DS Block', 'Main Campus', '0512345674', 'Dr. Fatima', 'ds@uni.pk', 2013, 'ds.uni.pk'),
    ('Cyber Security', 'CY Block', 'Main Campus', '0512345675', 'Dr. Usman', 'cyber@uni.pk', 2014, 'cyber.uni.pk'),
    ('Artificial Intelligence', 'AI Block', 'Main Campus', '0512345676', 'Dr. Zainab', 'ai@uni.pk', 2015, 'ai.uni.pk'),
    ('Robotics', 'RB Block', 'Main Campus', '0512345677', 'Dr. Hamza', 'robo@uni.pk', 2016, 'robo.uni.pk');





-- INSERTING DATA INTO Course --
INSERT INTO Course (
    Course_code, Course_name, Description, Type, Credits, Duration, Weekly_Hours, Level, Language, Syllabus_Link, Status,
    Max_Students, Department_ID) 
VALUES
	('CS101', 'Intro to Programming', 'Basics of coding', 'Theory', 3, '16 weeks', 3, 'Beginner', 'English', '', 'Active', 50, 1),
	('SE201', 'Software Process Models', 'Development cycles', 'Theory', 3, '16 weeks', 3, 'Intermediate', 'English', '', 'Active', 45, 1),
	('AI301', 'AI Fundamentals', 'AI concepts', 'Theory', 3, '16 weeks', 3, 'Advanced', 'English', '', 'Active', 30, 6),
	('DS401', 'Data Analysis', 'Visualize and analyze data', 'Theory', 3, '16 weeks', 3, 'Advanced', 'English', '', 'Active', 35, 4),
	('IT501', 'Computer Networks', 'Network protocols', 'Theory', 3, '16 weeks', 3, 'Intermediate', 'English', '', 'Active', 40, 3),
	('CY601', 'Security Principles', 'Learn to secure systems', 'Theory', 3, '16 weeks', 3, 'Advanced', 'English', '', 'Active', 30, 5),
	('RB701', 'Intro to Robotics', 'Fundamentals of robotics', 'Theory', 3, '16 weeks', 3, 'Advanced', 'English', '', 'Active', 25, 7);




-- INSERTING DATA INTO Module --
INSERT INTO Module (Title, Objective, Sequence, Reading_Material_Link, Course_ID)
VALUES
	('Basics of C++', 'Learn variables and syntax', 1, '', 1),
	('If-Else and Loops', 'Master control structures', 2, '', 1),
	('Waterfall vs Agile', 'Understand software models', 1, '', 2),
	('AI Overview', 'Understand AI scope', 1, '', 3),
	('Data Viz Tools', 'Explore matplotlib, seaborn', 1, '', 4),
	('OSI Layers', 'Study 7 layers of OSI', 1, '', 5),
	('Firewalls and VPNs', 'Security measures overview', 1, '', 6);





-- INSERTING DATA INTO Lesson --
INSERT INTO Lesson (Topic, Objectives, Duration, Lesson_Type, Required_Resources, Lesson_Material_Link, Module_ID) VALUES
('Introduction to Programming', 'Learn basic syntax and structure', '2 hours', 'Lecture', 'Laptop, Internet', 'link.com/lesson1', 1),
('Control Structures', 'Understanding if, switch, loops', '2 hours', 'Lecture', 'Slides, Compiler', 'link.com/lesson2', 1),
('Functions in C++', 'Parameter passing, return values', '2.5 hours', 'Lab', 'Code editor', 'link.com/lesson3', 2),
('Arrays and Strings', 'Working with arrays and strings in C++', '3 hours', 'Lecture', 'Slides, Compiler', 'link.com/lesson4', 2),
('Object Oriented Basics', 'Classes, objects, encapsulation', '2 hours', 'Lecture', 'Code editor', 'link.com/lesson5', 3),
('Inheritance in C++', 'Base and derived classes', '2.5 hours', 'Lecture', 'Slides, IDE', 'link.com/lesson6', 3),
('Polymorphism', 'Virtual functions, function overriding', '2 hours', 'Lecture', 'Laptop, IDE', 'link.com/lesson7', 3);




-- INSERTING DATA INTO Assignment --
INSERT INTO Assignment (Title, Description, Type, Duration, Total_marks, Weightage, Deadline, Created_At, Updated_At, Lesson_ID) 
VALUES
	('Assignment 1', 'Basic syntax and output', 'Homework', 'W', 10, 5.00, '2025-07-01 23:59:59', NOW(), NOW(), 1),
	('Assignment 2', 'Control structure problems', 'Homework', 'W', 15, 7.00, '2025-07-05 23:59:59', NOW(), NOW(), 2),
	('Assignment 3', 'Create functions with return types', 'Lab Task', 'D', 20, 8.50, '2025-07-10 23:59:59', NOW(), NOW(), 3),
	('Assignment 4', 'String manipulations in C++', 'Project', 'W', 25, 10.00, '2025-07-15 23:59:59', NOW(), NOW(), 4),
	('Assignment 5', 'Class definition and use', 'Homework', 'W', 20, 7.50, '2025-07-18 23:59:59', NOW(), NOW(), 5),
	('Assignment 6', 'Implement inheritance', 'Lab Task', 'D', 30, 12.00, '2025-07-22 23:59:59', NOW(), NOW(), 6),
	('Assignment 7', 'Use of virtual functions', 'Homework', 'W', 15, 6.00, '2025-07-25 23:59:59', NOW(), NOW(), 7);




-- INSERTING DATA INTO Grade --
INSERT INTO Grade (Student_ID, Assignment_ID, Marks, Comments, Evaluation_Date) 
VALUES
	(1, 1, 9, 'Good work!', NOW()),
	(1, 2, 13, 'Need to improve loops', NOW()),
	(2, 1, 10, 'Perfect!', NOW()),
	(2, 3, 18, 'Well structured code', NOW()),
	(3, 4, 20, 'Nice effort', NOW()),
	(4, 5, 18, 'Minor mistake in class use', NOW()),
	(5, 6, 28, 'Excellent inheritance use', NOW());




-- INSERTING DATA INTO Room --
INSERT INTO Room (Room_Number, Location, Capacity, Room_Type, Has_Projector, Has_AC, Floor, Status) 
VALUES
	('A101', 'Main Block', 40, 'Lecture', TRUE, TRUE, 1, 'Available'),
	('B202', 'Science Wing', 30, 'Lab', TRUE, FALSE, 2, 'Occupied'),
	('C303', 'Engineering Wing', 50, 'Lecture', FALSE, TRUE, 3, 'Available'),
	('D404', 'Admin Block', 25, 'Meeting', TRUE, TRUE, 4, 'Under Maintenance'),
	('E505', 'Library Wing', 20, 'Discussion', FALSE, FALSE, 5, 'Available'),
	('F606', 'IT Wing', 60, 'Lab', TRUE, TRUE, 6, 'Available'),
	('G707', 'Old Campus', 35, 'Lecture', TRUE, TRUE, 2, 'Occupied');





-- INSERTING DATA INTO Schedule --
INSERT INTO Schedule (Day, Start_time, End_time, Mode, Topic, Week_Number, Meeting_Link, Is_Recorded, Notes, Instructor_ID, Room_ID) 
VALUES
	('Monday', '09:00:00', '10:30:00', 'Offline', 'OOP Basics', 1, NULL, FALSE, 'Intro to C++', 1, 1),
	('Tuesday', '11:00:00', '12:30:00', 'Offline', 'Functions', 1, NULL, FALSE, 'Simple programs', 2, 2),
	('Wednesday', '13:00:00', '14:30:00', 'Online', 'Control Structures', 2, 'zoom.com/xyz', TRUE, 'If-else practice', 3, 3),
	('Thursday', '10:00:00', '11:30:00', 'Offline', 'Arrays', 2, NULL, FALSE, 'Array concepts', 4, 4),
	('Friday', '14:00:00', '15:30:00', 'Online', 'Inheritance', 3, 'zoom.com/abc', TRUE, 'Virtual function', 5, 5),
	('Saturday', '08:00:00', '09:30:00', 'Offline', 'Polymorphism', 3, NULL, FALSE, 'Function overriding', 6, 6),
	('Sunday', '12:00:00', '13:30:00', 'Online', 'File Handling', 4, 'zoom.com/def', TRUE, 'Text vs Binary', 7, 7);





-- INSERTING DATA INTO Enrollment --
INSERT INTO Enrollment (Student_ID, Course_ID, Enrollment_Date, Status, Grade_Level) 
VALUES
	(1, 1, '2025-06-01', 'Active', 'A'),   (1, 2, '2025-06-01', 'Active', 'B'),
	(2, 1, '2025-06-02', 'Active', 'A'),   (2, 3, '2025-06-02', 'Inactive', 'C'),
	(3, 4, '2025-06-03', 'Active', 'B'),   (4, 5, '2025-06-03', 'Active', 'A'),
	(5, 6, '2025-06-04', 'Active', 'A');




-- INSERTING DATA INTO Teaching --
INSERT INTO Teaching (Instructor_ID, Course_ID, Semester, Year) 
VALUES
	(1, 1, 'Spring', 2025), (2, 2, 'Spring', 2025), (3, 3, 'Summer', 2025),
	(4, 4, 'Summer', 2025), (5, 5, 'Fall', 2025), (6, 6, 'Fall', 2025), (7, 7, 'Winter', 2025);




-- INSERTING DATA INTO Submission --
INSERT INTO Submission (Student_ID, Assignment_ID, Submitted_At, File_Link, Comments, Status) 
VALUES
	(1, 1, NOW(), 'link.com/file1', 'Submitted on time', 'Submitted'),
	(1, 2, NOW(), 'link.com/file2', 'Late by 1 day', 'Late'),
	(2, 1, NOW(), 'link.com/file3', 'On time', 'Submitted'),
	(2, 3, NOW(), 'link.com/file4', 'Compiled correctly', 'Submitted'),
	(3, 4, NOW(), 'link.com/file5', 'Submitted early', 'Submitted'),
	(4, 5, NOW(), 'link.com/file6', 'Complete', 'Submitted'),
	(5, 6, NOW(), 'link.com/file7', 'Well documented', 'Submitted');




-- INSERTING DATA INTO Offering --
INSERT INTO Offering (Course_ID, Semester, Year, Max_Enrollment) 
VALUES
	(1, 'Spring', 2025, 60), (2, 'Spring', 2025, 50), (3, 'Summer', 2025, 40),
	(4, 'Fall', 2025, 45), (5, 'Fall', 2025, 55), (6, 'Winter', 2025, 35),
	(7, 'Winter', 2025, 30);




-- INSERTING DATA INTO Held_In --
INSERT INTO Held_In (Offering_ID, Room_ID) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7);




-- INSERTING DATA INTO Supervision --
INSERT INTO Supervision (Supervisor_ID, Student_ID, Start_Date, End_Date) VALUES
	(1, 1, '2025-01-10', '2025-05-10'), (2, 2, '2025-01-10', '2025-05-10'),
	(3, 3, '2025-01-10', '2025-05-10'), (4, 4, '2025-01-10', '2025-05-10'),
	(5, 5, '2025-01-10', '2025-05-10'), (6, 6, '2025-01-10', '2025-05-10'),
	(7, 7, '2025-01-10', '2025-05-10');




-- INSERTING DATA INTO Feedback --
INSERT INTO Feedback (Student_ID, Course_ID, Rating, Comments, Submitted_At) VALUES
	(1, 1, 5, 'Great course!', NOW()), (2, 2, 4, 'Helpful instructor', NOW()),
	(3, 3, 3, 'Challenging but good', NOW()), (4, 4, 5, 'Very engaging', NOW()),
	(5, 5, 4, 'Useful materials', NOW()), (6, 6, 5, 'Excellent coverage', NOW()),
	(7, 7, 4, 'Enjoyed learning', NOW());
