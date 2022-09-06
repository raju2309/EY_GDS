create  database Emp
create table Employee(
     EMP_IDNO int,
	 EMP_FNAME varchar(20),
	 EMP_LNAME varchar(20),
	 EMP_DEPT int
	 )
insert into Employee(
     EMP_IDNO,  EMP_FNAME,EMP_LNAME, EMP_DEPT)
	 values(127323,'Michale', 'Robbin',57)
insert into Employee(
     EMP_IDNO,  EMP_FNAME,EMP_LNAME, EMP_DEPT)
	 values(526689,'Carlos', 'Snares',63)
insert into Employee(
     EMP_IDNO,  EMP_FNAME,EMP_LNAME, EMP_DEPT)
	 values(843795,'Enric', 'Dosio',57)
insert into Employee(
     EMP_IDNO,  EMP_FNAME,EMP_LNAME, EMP_DEPT)
	 values(328717,'Jhon', 'Snares',63)
insert into Employee 
	 values(444527,'Joseph', 'Dosni',47),
	 (659831,'Zanifer', 'Emily',47),
	 (847674,'kuleshwar', 'Sitaraman',57),
	 (748681,'Henrey', 'Gabriel',47),
	 (555935,'Alex', 'Manuel',57)

Select * from Employee where EMP_DEPT = 57

