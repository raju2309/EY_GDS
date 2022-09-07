create table salesman01(
     saleman_id int,
	 name varchar(40),
	 city varchar(20),
	 commission float
	 primary key(  saleman_id)
	 )
insert into salesman01 values (5001, 'James Hoog' , 'New York', 0.15),
                             (5002,'Nail Knite','Paris', 0.13), 
							 (5005,'Pit Alex','London', 0.11), 
							 (5006,'Mc Lyon','Paris', 0.14), 
							 (5003,'Lauson Hen',' ', 0.12), 
							 (5007,'Paul Adam','Rome', 0.13)



/* Question 2 Query */

 Select name,city from Salesmans where city = 'Paris'

/* Question 3 Query */

 Select a.*,b.cust_name from Orders01 a, customer01  b where b.customer_id = a.customer_id and a.ord_date = 2012-08-17

/* Question 4 Query */

 Select salesman_id, name from salesman01 where 1< (Select COUNT(*) from customer01 where salesman_id = salesman01.salesman_id) 
/* Question 5 Query */

 Select * from Orders01 a where purch_amt > (select AVG(purch_amt) from Orders01 b where a.customer_id= b.customer_id)

/* Question 6 Query */

 Select * from salesman01 where salesman_id in (Select distinct salesman_id from customer01 a where not exists ( select * from customer01 b where a.salesman_id = b.salesman_id
 and a.cust_name <> b.cust_name))

 /* Question 7 Query */

 Select salesman_id ,name from salesman01 a where 1 < (select count(*) from customer01 where salesman_id = a.salesman_id)

 /* Question 8 Query */

 Select * from salesman01 where city in (select city from customer01)