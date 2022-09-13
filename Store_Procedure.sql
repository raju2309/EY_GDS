/* Sample for Syntax */
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customer
GO;


create table product23(productID int ,productName varchar(100))
Go

create table productDesc23(productID int ,productDesc varchar(800))
Go
Insert into product23 values(21, 'Nets'),(25, 'Nets are used for tennis, volleyball, football, basketball, hockey and badminton')
Go
Insert into product23 values(21, 'Racquets'),(25, 'Racquets are used for racquet sports such as tennis. ')
Go
Insert into productDesc23 values(21, 'Utilize'),(25, 'To be try')
Go
Insert into productDesc23 values(21, 'Utilize'),(25, 'used for racquet sports such as tennis.')
Go
select * from product23
select * from productDesc23

/* Stored Procedure */

create procedure GetProdDescription as 
begin
set nocount on
Select p.productID,p.productName, pd.productDesc from  product23 as p inner join productDesc23 pd on p.productID = pd.productID 
End

Exec GetProdDescription

/* Renaming Stored Procedure */
Exec Sp_rename 'GetProdDescription' ,'GetPD'
Exec GetPD

/* Stored Procedure  with Parameteres */
create procedure GetProdDesc1_WithParameters(@PID int) as 
begin
set nocount on
Select p.productID,p.productName, pd.productDesc from  product23 as p inner join productDesc23 pd on p.productID = pd.productID 
where p.productID = @PID
End

Exec GetProdDesc1_WithParameters 25

create table Employees12 (EmpID int  identity (1,1), EmpName varchar(500))
select * from Employees12
)
create Procedure NewEmp_withoutparameters12 (@Ename varchar(50), @EID int output)
as 
begin
Set nocount on
insert into Employees12 values ('Andrew')

Select @EID = SCOPE_IDENTITY()
end 

declare @EmpID int

Exec NewEmp_withoutparameters 'mountain' , @EID output

select @EID

Create Procedure GetEmployee
with Encryption
as
begin
set nocount on

Select EmpID.EmpName
from Employee12
End

sp_helptext GetEmployee


/*Local Procedure Variable temporary */

Create Procedure #Temp as 
begin 
Print('Local temp Procedure')
End

Exec #Temp

/*Global  Procedure  Variable temporary */

Create Procedure ##Temp as 
begin 
Print('Global temp Procedure')
End

Exec ##Temp

