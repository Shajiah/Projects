CREATE TABLE Students  
(
	studentID int,
    studentName char(20),
    studentMajor char(30), 
    studentYear char(2),
    studentAge int,
    PRIMARY KEY (studentID)
);

CREATE TABLE Class
(
	className char(30),
    classSchedule char(30),
    classRoomNumber char(10),
    UNIQUE (classSchedule, classRoomNumber),
    PRIMARY KEY (className)
);

CREATE TABLE Enrolled
(
	studentID int,
	className char(50),
	PRIMARY KEY (studentID, className),

	FOREIGN KEY (studentID) REFERENCES Students (studentID)
							ON DELETE CASCADE,
	FOREIGN KEY (className) REFERENCES Class (className) 
							ON DELETE CASCADE
);


INSERT INTO Students
	VALUES (051135593, 'Maria White', English, SR, 21);
	VALUES(060839453, 'Charles Harris', Architecture, SR, 22);
	VALUES(099354543, 'Susan Martin', Law, JR, 20);
	VALUES(112348546, 'Joseph Thompson', Computer Science, SO, 19);
	VALUES(115987938, 'Christopher Garcia', Computer Science, JR, 20);
	VALUES(132977562, Angela Martinez, History, SR, 20);
	VALUES(269734834, Thomas Robinson, Psychology, SO, 18);
	VALUES(280158572, Margaret Clark, Animal Science, FR, 18);

INSERT INTO Class
	VALUES(Data Structures, MWF 10:00­ to 11:00, R128);
	VALUES(Database Systems, MWF 12:30­ to 1:45, 1320 DCL);
	VALUES(Operating System Design, TuTh 12­ to 1:20, 20 AVW);
	VALUES(Archaeology of the Incas, MWF 3­ to 4:15, R128);	

INSERT INTO Enrolled
	VALUES(051135593, Data Structures);
	VALUES(060839453, Data Structures);
	VALUES(051135593, Database Systems);
	VALUES(060839453, Database Systems);
	VALUES(051135593, Operating System Design);
	VALUES(099354543, Operating System Design);
	VALUES(112348546, Operating System Design);

INSERT INTO Students 
	VALUES(112348546, Juan Rodriguez, Psychology, JR, 20);
	/* This cant be inserted because that studentID already 
	exists and belongs to Joseph Thompson*/	
	
INSERT INTO Class
	VALUES(Algorithms, MWF 12:30 to ­1:45, 1320 DCL);	
	/* This cant be inserted because that there is already 
	a class in that room at that exact time. */	

INSERT INTO Enrolled
	VALUES(561254634, Data Structures);
	VALUES(051135593, Communication Networks);
	/* the first insertion violates the IC because that ID
	 doesnt exist in the students table */

DELETE FROM Class
	WHERE className='Data Structures';

DELETE FROM Students
	WHERE studentID = 051135593; 


