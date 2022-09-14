/* EXCERCISE - 2 SUB QUERY 
 
Modify your query from the first problem, such that the top three purchase order amounts are returned, regardless of how many records are returned per Vendor Id. 
In other words, if there are multiple orders with the same total due amount, all should be returned as long as the total due amount for these orders is one of the top three. 
Ultimately, you should see three distinct total due amounts (i.e., the top three) for each group of like Vendor Ids. However, there could be multiple records for each of these amounts

*/

select * from Purchasing.PurchaseOrderHeader;

with POH as
(
select DISTINCT Top 3 VendorID, PurchaseOrderID, OrderDate, TotalDue, TaxAmt, Freight,
MostExpOrder = ROW_NUMBER() over( Order by TotalDue DESC),
Top3 = ROW_NUMBER() over (Order by TotalDue DESC)
from Purchasing.PurchaseOrderHeader)
select * from POH where MostExpOrder<=3;

 
 
/* Exercise - 1.Create a query that displays all rows and the following columns from the AdventureWorks2019.HumanResources.Employee table: 

BusinessEntityID 

JobTitle 

VacationHours 

Also include a derived column called "MaxVacationHours" that returns the maximum amount of vacation hours for any one employee, in any given row. 
*/
/* Using subquery */

select BusinessEntityID, JobTitle, VacationHours,
(
select MAX(VacationHours)
from HumanResources.Employee) as MaxVacationHours
from HumanResources.Employee

/* Excercise 2*/
/*Add a new derived field to your query from Exercise 1, which returns the percent an individual employees' 
vacation hours are, of the maximum vacation hours for any employee. 
For example,
the record for the employee with the most vacation hours should have a value of 1.00, or 100%, in this column*/


select BusinessEntityID, JobTitle, VacationHours,
VacationHours * 100.00/(select MAX(VacationHours) 
from HumanResources.Employee) as 'Percentage'
from HumanResources.Employee

/*Refine your output with a criterion in the
WHERE clause that filters out any employees
whose vacation hours are less then 80% of the maximum amount of vacation hours for any one employee.
In other words, return only employees who have at least 80% as much vacation time as the employee with the most vacation time 
Hint: The query should return 60 rows. */ 

select BusinessEntityID, JobTitle, VacationHours,
VacationHours * 100.00/(select MAX(VacationHours) 
from HumanResources.Employee) as 'Percentage'
from HumanResources.Employee
where VacationHours >80




