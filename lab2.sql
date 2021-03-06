CREATE TABLE student
(
	sid char(30),
	sname char(30),
	sex char(1),
	age int,
	year int,
	gpa real,
	PRIMARY KEY (sid)
);

CREATE TABLE dept
(
	dname char(30),
	numphds int,
	PRIMARY KEY (dname)
);

CREATE TABLE prof
(
	pname char(30),
	dname char(30),
	PRIMARY KEY (pname)
);

CREATE TABLE course(
	cno int,
	cname char(30),
	dname char(30),
	PRIMARY KEY (cno, dname)
):
CREATE TABLE major
(
	dname char(30),
	sid char(30),
	PRIMARY KEY (dname, sid)
);
CREATE TABLE section
(
	dname char(30),	
	cno char(30),
	sectno char(30),
	pname char(30),
	PRIMARY KEY (dname, cno, sectno)
);
CREATE TABLE enroll
(
	sid char(30),
	grade real,
	dname char(30),
	cno int,
	sectno char(30),
	PRIMARY KEY(sid, dname, cno, sectno)
);


INSERT INTO  course (cno, cname, dname) VALUES (302,	'Intro to Programming',		'Computer Sciences');
INSERT INTO  course (cno, cname, dname) VALUES (310, 	'Thermodynamics', 		'Chemical Engineering');
INSERT INTO  course (cno, cname, dname) VALUES (310, 	'Intro to Garbage', 	'Sanitary Engineering');
INSERT INTO  course (cno, cname, dname) VALUES (365,	'City Planning',	'Civil Engineering');
INSERT INTO  course (cno, cname, dname) VALUES (375,	'Highway Engineering',	'Civil Engineering');
INSERT INTO  course (cno, cname, dname) VALUES (461,	'College Geometry 1',	'Mathematics');
INSERT INTO  course (cno, cname, dname) VALUES (462,	'College Geometry 2',	'Mathematics');
INSERT INTO  course (cno, cname, dname) VALUES (467,	'Intro to Data Structures',	'Computer Sciences');
INSERT INTO  course (cno, cname, dname) VALUES (514,	'Manpower Utilization',	'Industrial Engineering');
INSERT INTO  course (cno, cname, dname) VALUES (561,	'Advanced City Planning',	'Civil Engineering');
INSERT INTO  course (cno, cname, dname) VALUES (561,	'Advanced Garbage Collection',	'Sanitary Engineering');
INSERT INTO  course (cno, cname, dname) VALUES (701,	'Compiler Construction',	'Computer Sciences');
INSERT INTO  course (cno, cname, dname) VALUES (726,	'Nonlinear Programming',	'Computer Sciences');

INSERT INTO  dept (dname, numphds) VALUES ('Chemical Engineering',	32);
INSERT INTO  dept (dname, numphds) VALUES ('Civil Engineering',	88);
INSERT INTO  dept (dname, numphds) VALUES ('Computer Sciences',	47);
INSERT INTO  dept (dname, numphds) VALUES ('Industrial Engineering', 41);
INSERT INTO  dept (dname, numphds) VALUES ('Mathematics',129);
INSERT INTO  dept (dname, numphds) VALUES ('Sanitary Engineering',3);


INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (1,	3.00,	'Chemical Engineering',	310,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (2,	3.00,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (3,	3.50,	'Civil Engineering',	375,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (4,	4.00,	'Mathematics',	461,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (5,	3.00,	'Industrial Engineering',	514,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (6,	3.50,	'Computer Sciences',	302,	2);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (7,	4.00,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (8,	4.00,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (9,	3.00,	'Civil Engineering',	375,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (10,	2.00,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (11,	3.00,	'Computer Sciences',	302,	2);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (12,	2.50,	'Computer Sciences',	302,	2);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (13,	2.50,	'Computer Sciences',	302,	2);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (14,	2.50,	'Mathematics',	462,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (15,	3.00,	'Chemical Engineering',	310,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (16,	3.00,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (16,	3.00,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (17,	3.00,	'Mathematics',	461,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (18,	2.00,	'Civil Engineering',	375,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (18,	3.50,	'Mathematics',	461,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (19,	3.50,	'Mathematics',	461,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (20,	2.50,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (21,	3.00,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (21,	3.50,	'Industrial Engineering',	514,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (22,	3.00,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (22,	3.00,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (23,	4.00,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (24,	4.00,	'Computer Sciences',	302,	2);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (25,	3.50,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (26,	3.50,	'Mathematics',	462,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (27,	2.50,	'Industrial Engineering',	514,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (28,	3.00,	'Mathematics',	461,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (29,	3.00,	'Civil Engineering',	365,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (29,	3.00,	'Civil Engineering',	375,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (29,	3.00,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (30,	4.00,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (31,	3.50,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (32,	2.00,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (33,	2.00,	'Civil Engineering',	365,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (33,	3.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (34,	1.00,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (35,	3.00,	'Mathematics',	461,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (36,	3.00,	'Civil Engineering',	375,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (37,	3.00,	'Mathematics',	462,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (38,	3.00,	'Computer Sciences',	302,	2);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (39,	3.00,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (40,	3.50,	'Mathematics',	462,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (41,	3.00,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (42,	3.50,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (43,	2.50,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (44,	4.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (45,	3.00,	'Chemical Engineering',	310,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (46,	4.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (47,	1.00,	'Civil Engineering',	365,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (47,	0.00,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (48,	1.50,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (49,	3.50,	'Chemical Engineering',	310,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (49,	3.50,	'Industrial Engineering',	514,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (50,	4.00,	'Industrial Engineering',	514,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (51,	3.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (52,	1.00,	'Computer Sciences',	302,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (52,	4.00,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (53,	4.00,	'Mathematics',	462,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (54,	3.00,	'Civil Engineering',	375,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (55,	2.50,	'Mathematics',	461,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (56,	2.50,	'Chemical Engineering',	310,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (57,	3.50,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (58,	2.00,	'Industrial Engineering',	514,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (59,	3.50,	'Mathematics',	462,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (60,	2.50,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (61,	3.50,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (61,	2.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (62,	2.50,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (63,	2.50,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (64,	4.00,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (64,	3.50,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (66,	1.50,	'Civil Engineering',	365,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (66,	4.00,	'Civil Engineering',	375,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (67,	3.50,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (67,	4.00,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (68,	3.50,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (69,	3.50,	'Computer Sciences',	302,	2);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (69,	2.00,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (70,	3.50,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (71,	2.50,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (72,	3.50,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (73,	3.00,	'Civil Engineering',	375,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (74,	2.50,	'Civil Engineering',	365,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (75,	3.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (76,	3.50,	'Civil Engineering',	365,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (77,	2.00,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (78,	3.00,	'Industrial Engineering',	514,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (79,	4.00,	'Civil Engineering',	365,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (80,	4.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (81,	2.50,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (82,	3.50,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (83,	3.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (84,	3.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (85,	3.50,	'Civil Engineering',	375,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (86,	2.50,	'Computer Sciences',	467,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (86,	3.00,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (87,	4.00,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (88,	2.00,	'Chemical Engineering',	310,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (89,	3.50,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (90,	3.50,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (90,	3.50,	'Mathematics',	462,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (91,	4.00,	'Mathematics',	462,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (92,	4.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (93,	4.00,	'Chemical Engineering',	310,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (94,	2.00,	'Mathematics',	461,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (96,	4.00,	'Civil Engineering',	365,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (96,	3.00,	'Civil Engineering',	561,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (97,	3.00,	'Industrial Engineering',	514,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (98,	4.00,	'Industrial Engineering',	514,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (99,	3.50,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (100,	2.00,	'Computer Sciences',	726,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (101,	4.00,	'Mathematics',	462,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (102,	3.50,	'Mathematics',	461,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (103,	4.00,	'Computer Sciences',	701,	1);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (104,	2.80,	'Computer Sciences',	302,	2);
INSERT INTO  enroll (sid, grade, dname, cno, sectno) VALUES (104,	2.60,	'Sanitary Engineering',	561,	1);


INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	25);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	26);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	27);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	28);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	29);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	30);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	31);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	32);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	33);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	34);
INSERT INTO  major (dname, sid) VALUES ('Chemical Engineering',	35);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	36);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	37);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	38);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	39);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	40);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	41);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	42);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	43);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	44);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	45);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	46);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	47);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	48);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	49);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	50);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	51);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	52);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	53);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	54);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	55);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	56);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	57);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	58);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	59);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	60);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	61);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	62);
INSERT INTO  major (dname, sid) VALUES ('Civil Engineering',	63);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	1);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	2);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	3);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	4);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	5);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	6);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	7);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	8);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	9);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	10);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	11);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	12);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	13);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	14);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	15);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	16);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	17);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	18);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	19);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	20);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	21);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	22);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	23);
INSERT INTO  major (dname, sid) VALUES ('Computer Sciences',	24);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	64);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	65);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	66);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	67);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	68);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	69);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	70);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	71);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	72);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	73);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	74);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	75);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	76);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	77);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	78);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	79);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	80);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	81);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	82);
INSERT INTO  major (dname, sid) VALUES ('Industrial Engineering',	83);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	10);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	1);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	2);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	3);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	84);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	85);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	86);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	87);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	88);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	89);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	90);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	91);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	92);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	93);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	94);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	95);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	96);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	97);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	98);
INSERT INTO  major (dname, sid) VALUES ('Mathematics',	99);
INSERT INTO  major (dname, sid) VALUES ('Sanitary Engineering',	4);



INSERT INTO  prof (pname, dname) VALUES ('Brian, C.',	'Computer Sciences');
INSERT INTO  prof (pname, dname) VALUES ('Brown, S.',	'Civil Engineering');
INSERT INTO  prof (pname, dname) VALUES ('Bucket, T.',	'Sanitary Engineering');
INSERT INTO  prof (pname, dname) VALUES ('Clark, E.',	'Civil Engineering');
INSERT INTO  prof (pname, dname) VALUES ('Edison, L.',	'Chemical Engineering');
INSERT INTO  prof (pname, dname) VALUES ('Jones, J.',	'Computer Sciences');
INSERT INTO  prof (pname, dname) VALUES ('Randolph, B.',	'Civil Engineering');
INSERT INTO  prof (pname, dname) VALUES ('Robinson, T.',	'Mathematics');
INSERT INTO  prof (pname, dname) VALUES ('Smith, S.',	'Industrial Engineering');
INSERT INTO  prof (pname, dname) VALUES ('Walter, A.',	'Industrial Engineering');



INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Chemical Engineering',	310,	1,	'Edison, L.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Civil Engineering',	365,	1,	'Randolph, B.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Civil Engineering',	375,	1,	'Brown, S.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Civil Engineering',	561,	1,	'Randolph, B.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Computer Sciences',	302,	1,	'Jones, J.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Computer Sciences',	302,	2,	'Smith, S.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Computer Sciences',	467,	1,	'Jones, J.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Computer Sciences',	701,	1,	'Clark, E.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Computer Sciences',	726,	1,	'Brian, C.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Industrial Engineering',	514,	1,	'Walter, A.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Mathematics',	461,	1,	'Robinson, T.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Mathematics',	462,	1,	'Robinson, T.');
INSERT INTO  section (dname, cno, sectno, pname) VALUES ('Sanitary Engineering',	561,	1,	'Bucket, T.');


INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (1,	'Jacobs, T.',	'm',	29,	5,	3.60);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (2,	'Pierson, E.',	'm',	32,	5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (3,	'Zeene, Ben N.',	'm',	21,	5,	3.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (4,	'Sulfate, Barry M.',	'm',	19,	2,	2.80);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (5,	'Form, Clara O.',	'f',	18,	1,	3.30);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (6,	'Scott, Kim J.',	'm',	20,	1,	3.80);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (7,	'Sather, Roberto B.',	'm',	22,	4,	2.20);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (8,	'Stanley, Leotha T.',	'm',	21,	3,	3.60);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (9,	'Smith, Joyce A.',	'f',	21,	4,	2.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (10,	'Jones, David S.',	'm',	19,	2,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (11,	'Paul, Mary W.',	'f',	23,	5,	3.60);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (12,	'Soong, V.',	'f',	24,	5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (13,	'Kellerman, S.',	'f',	21,	3,	2.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (14,	'Cheong, R.',	'm',	25,	4,	3.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (15,	'Borchart, Sandra L.',	'f',	26,	5,	3.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (16,	'Alsberg, David J.',	'm',	25,	5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (17,	'Thorton, James Q.',	'm',	28,	4,	2.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (18,	'Gooch',	'm',	26,	1,	1.40);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (19,	'Smith, L.',	'm',	43,	4,	0.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (20,	'Korpel, E.',	'f',	19,	3,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (21,	'Surk, K.',	'm',	23,	2,	2.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (22,	'Emile, R.',	'm',	18,	1,	2.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (23,	'Bomber, C.',	'f',	22,	4,	3.20);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (24,	'Carter, Jimmy',	'm',	56, 5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (25,	'Kissinger, Henry',	'm',	58,	5,	3.40);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (26,	'Ford, Gerald',	'm',	60,	5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (27,	'Anderson, P.',	'f',	18,	1,	3.20);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (28,	'Austin, G.',	'm',	25,	5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (29,	'Hamilton, S.',	'm',	21,	3,	2.80);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (30,	'Baker, C.',	'f',	18,	1,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (31,	'Andrews, R.',	'm',	19,	2,	2.80);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (32,	'Liu, Huihusan',	'm',	29,	5,	3.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (33,	'Chao, Tsechih',	'f',	23,	5,	3.60);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (34,	'Kasten, Norman L.',	'm',	23,	2,	2.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (35,	'Mathews, John W.',	'm',	29,	5,	3.60);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (36,	'Burroughs, Susan S.',	'f',	18,	1,	3.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (37,	'Dunbar, D.',	'm',	30,	5,	3.40);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (38,	'Auen, B.',	'm',	21,	3,	2.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (39,	'Shoemaker, A.',	'f',	22,	4,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (40,	'Rosemeyer, S.',	'f',	21,	3,	2.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (41,	'Fisher, C.',	'f',	22,	4,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (42,	'Trude, T.',	'm',	19,	2,	2.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (43,	'Ksar, J.',	'm',	20,	3,	3.40);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (44,	'Moeri, S.',	'f',	20,	4,	3.20);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (45,	'June, Granson',	'f',	18,	1,	3.10);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (46,	'Micheal, Zadicki T.',	'm',	22,	2,	2.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (47,	'Roger, Blotter N.',	'm',	21,	3,	1.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (48,	'Natividad, A.',	'f',	25,	5,	4.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (49,	'Villa-lobos, M.',	'm',	47,	5,	3.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (50,	'Moomchi, B.',	'm',	32,	5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (51,	'Jetplane, Leaving O.',	'm',	30,	1,	0.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (52,	'Fy, Clara I.',	'f',	18,	2,	2.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (53,	'Atny, Mary H.',	'f',	26,	5,	3.80);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (54,	'Maximillian',	'm',	98,	5,	3.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (55,	'Glitch, R.',	'm',	19,	1,	2.80);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (56,	'Starry, J.',	'f',	22,	4,	3.30);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (57,	'Hiemerschmitz, A.',	'f',	19,	1,	2.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (58,	'Marshmallton',	'm',	20,	3,	3.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (59,	'Ziebart, F.',	'm',	22,	4,	1.80);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (60,	'Calcmity, J.',	'f',	23,	3,	2.60);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (61,	'Kennedy, Ed',	'm',	55,	3,	2.30);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (62,	'Moses, A.',	'm',	18,	1,	3.20);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (63,	'Kool, Joseph F.',	'm',	35,	5,	3.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (64,	'Fred, Edwin B.',	'm',	80,	5,	4.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (65,	'Ripper, Jack T.',	'm',	18,	1,	0.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (66,	'Altenhaus, Stuart',	'm',	21,	4,	2.80);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (67,	'Altenhaus, Gloria',	'f',	22,	5,	4.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (68,	'Crist, J.',	'm',	23,	4,	3.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (69,	'Heilskov, G.',	'm',	23,	4,	2.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (70,	'Caucutt, B.',	'm',	24,	5,	3.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (71,	'Mark, B.',	'm',	24,	4,	3.60);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (72,	'Barnes, J.',	'm',	45,	5,	2.30);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (73,	'Quarnty, G.',	'f',	20,	2,	4.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (74,	'Andrus, J.',	'f',	21,	3,	3.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (75,	'Jones, A.',	'f',	23,	5,	3.20);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (76,	'Zorhoff, C.',	'm',	20,	3,	3.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (77,	'Paull, Thomas H.',	'm',	23,	4,	2.60);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (78,	'Cool, J.',	'm',	18,	2,	2.60);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (79,	'Evert, Chris',	'f',	21,	4,	3.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (80,	'Connors, Jimmy',	'm',	25,	1,	0.20);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (81,	'Smith, Ike Z.',	'm',	33,	1,	1.10);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (82,	'News, Nightly',	'm',	15,	1,	1.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (83,	'Jones, Ivan L.',	'm',	55,	5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (84,	'Smith, R.',	'm',	19,	3,	2.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (85,	'Mayer, N.',	'f',	21,	5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (86,	'Gonring, J.',	'm',	21,	4,	3.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (87,	'Mueller, D.',	'm',	20,	3,	3.30);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (88,	'Bates, M.',	'm',	22,	4,	3.30);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (89,	'Longlastname, A.',	'f',	99,	5,	4.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (90,	'Zappa, F.',	'm',	16,	4,	4.00);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (91,	'Ghandi, I.',	'f',	78,	1,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (92,	'Kirk, J.',	'm',	34,	5,	2.20);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (93,	'Andermanthenol, K.',	'm',	26,	5,	3.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (94,	'Uoiea, Z.',	'f',	19,	2,	3.30);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (95,	'Grzlbltz, Q.',	'm',	43,	5,	2.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (96,	'Birch, M.',	'f',	23,	5,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (97,	'Morgan, D.',	'm',	18,	1,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (98,	'Taylor, R.',	'm',	20,	3,	2.80);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (99,	'Jones, J.',	'f',	21,	1,	1.10);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (100,	'Gringo, C.',	'm',	25,	5,	2.90);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (101,	'Davis, Scott P.',	'm',	19,	3,	3.70);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (102,	'Bates, Michael L.',	'm',	22,	4,	3.40);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (103,	'Kaisler, Janet M.',	'f',	21,	4,	3.50);
INSERT INTO  student (sid, sname, sex, age, year, gpa) VALUES (104,	'Baskett, Wayse T.',	'm',	23,	3,	2.10);



-- 1
SELECT P.pname
FROM prof P, dept D
WHERE P.dname = D.dname AND D.numphds < 50;

-- 2
SELECT S.sname
FROM student S
WHERE S.gpa = (SELECT MIN(S1.gpa)
			FROM student S1);

-- 3
-- For each Computer Sciences class, print the cno, sectno, and the average GPA 
-- of the students enrolled in the class.

SELECT DISTINCT E.cno, E.sectno, AVG(S.gpa)
FROM enroll E, student S
WHERE  S.sid = E.sid AND E.dname = 'Computer Sciences' 
GROUP BY E.cno, E.sectno; 


 -- 4
 -- Print the course names, course numbers and section numbers of all 
 -- the classes with less than six students enrolled in them

SELECT C.cname, E.cno, E.sectno
FROM enroll E, course C
WHERE E.cno = C.cno AND E.dname = C.dname
GROUP BY C.cname, E.dname, E.cno, E.sectno
HAVING COUNT(*) < 6;
 


 -- 5
 -- Print the name(s) and sid(s) of the student(s) enrolled 
 -- in the most (highest number of) classes.

SELECT sid, sname
FROM student S NATURAL JOIN enroll E
GROUP BY sname, sid
HAVING COUNT(*) = (select MAX(temp_count.stud_count)
					FROM (SELECT COUNT(*) AS stud_count
						  FROM enroll e1
						  GROUP BY e1.sid) temp_count );


-- 6
-- Print the names of departments that have one or more 
-- majors who are under 18 years old.

SELECT M.dname 
FROM major M, student S
WHERE S.age <18 AND S.sid = M.sid;


-- 7
-- Print the names and majors of students who are taking one of 
-- the College Geometry courses. (Hint: You’ll need to use the
-- “like” predicate and the string matching character in your query.)


SELECT DISTINCT S.sname, E.dname
FROM enroll E, student S, course C
WHERE C.cname LIKE 'College Geometry _%' AND C.cno = E.cno 
AND C.dname = E.dname AND E.sid = S.sid; 

-- 8
-- For those departments that have no majors taking a College Geometry course, 
-- print the department name and the number of PhD students in the department.

SELECT D.dname, D.numphds
FROM dept D
MINUS
SELECT D.dname, D.numphds 
FROM student S, major M, dept D
WHERE S.sid = M.sid AND M.dname = D.dname 
			AND S.sid IN (SELECT E.sid           
			         	  FROM enroll E, course C
			     		  WHERE E.cno = C.cno AND C.cname LIKE 'College Geometry _%');


SELECT d1.dname, d1.numphds
FROM dept d1
MINUS
SELECT DISTINCT dname, numphds 
FROM student S NATURAL JOIN major M NATURAL JOIN dept D
WHERE sid IN (SELECT E.sid           
         	  FROM enroll E NATURAL JOIN course C
     		  WHERE C.cname LIKE 'College Geometry%');


-- 9
--  Print the names of students who are taking both a Computer 
--  Sciences course and a Mathematics course

SELECT S.sname
FROM student S, enroll E
WHERE E.dname = 'Computer Sciences' AND E.sid = S.sid 
	INTERSECT
SELECT S.sname
FROM student S, enroll E
WHERE E.dname = 'Mathematics' AND E.sid = S.sid;


-- 10
-- Print the age difference between the oldest and youngest Computer Sciences major(s).

-- SELECT (MAX(S.age) - MIN(S.age)) AS agedifference
-- FROM student S, enroll E
-- WHERE S.sid = E.sid AND E.dname = 'Computer Sciecnes';
SELECT MAX(S.age) - MIN(S.age) AS difference 
FROM student S 
WHERE S.sid IN (SELECT M.sid
				FROM major M
				WHERE M.dname = 'Computer Sciences');


-- 11 
-- For each department that has one or more majors with a GPA under 1.0, print the name of the
-- department and the average GPA of its majors.

SELECT M.dname, AVG(S.gpa)
FROM major M, student S
WHERE S.sid = M.sid
GROUP BY M.dname
HAVING MIN(S.gpa) < 1 ;



-- 12
-- Print the IDs, names, and GPAs of the students who are currently taking all of the 
-- Civil Engineering courses.

-- all the CE classes and use the course number 
-- use not exist  


SELECT E.sid, S.sname, S.gpa
FROM student S, enroll E
WHERE S.sid = E.sid
MINUS
SELECT sid, sname, gpa
FROM (SELECT sid, sname, gpa, cno, dname
      FROM (SELECT S1.sid, S1.sname, S1.gpa
            FROM student S1, enroll E1
            WHERE S1.sid = E1.sid),
           (SELECT C.cno, C.dname
            FROM course C
            WHERE C.dname = 'Civil Engineering')
      MINUS
      SELECT S2.sid, S2.sname, S2.gpa, E2.cno, E2.dname
      FROM student S2, enroll E2
      WHERE S2.sid = E2.sid);






