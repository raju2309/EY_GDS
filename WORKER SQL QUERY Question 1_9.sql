CREATE TABLE Worker23 (
	WORKER_ID int NOT NULL PRIMARY KEY ,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY int,
	JOINING_DATE CHAR(25),
	DEPARTMENT CHAR(25)
);
INSERT INTO Worker23 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus23 (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE char(25),
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
INSERT INTO Bonus23 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');

CREATE TABLE Title23 (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM CHAR(25),
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title23 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');

 /* Question 1*/
 Select * from Worker23 where SALARY in (Select SALARY from Worker23 w where Worker23.WORKER_ID  <> w.WORKER_ID)
 /* Question 2*/
 Select * from Worker23 where WORKER_ID in (Select WORKER_ID from WORKER23 where SALARY = (Select max(SALARY) from WORKER23  where SALARY < (Select max(SALARY) from WORKER23)))
  /* Question 3*/
 Select Top 50 percent * from WORKER23
  /* Question 4*/
   
 Select DEPARTMENT, count(*) as COUNT from WORKER23 group by DEPARTMENT
 /* Question 5 */
 Select DEPARTMENT , SUM(SALARY) as TOTAL_SALARIES from WORKER23 group by DEPARTMENT

 /* Question 6 */
 Select FIRST_NAME, SALARY from WORKER23 where SALARY = (Select max(SALARY) from WORKER23)
 /* Question 7 */
 Select Top 1 * from WORKER23 order by WORKER_ID DESC
  /* Question 8 */
  Select distinct SALARY from WORKER23 w where  3 >= (Select count(DISTINCT SALARY ) from WORKER23 w1 where w1.SALARY <= w.SALARY ) order by w.SALARY DESC
  /* Question 9 */
  Select FIRST_NAME , SALARY , DEPARTMENT from WORKER23 where SALARY in (Select max(SALARY) from WORKER23 group by DEPARTMENT)
