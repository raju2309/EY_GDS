Select * from employees 

/* Questions 1 */
Select FIRST_NAME, LAST_NAME, round(SALARY/12,2) as 'Monthly Salary' from employees

/* Questions 2 */
Select manager_id, MIN(salary) from employees where manager_id is not null group by manager_id order by MIN(salary) DESC

/* Questions 3 */
Select department_id, AVG(salary) from employees group by department_id having count(*) > 10

/* Questions 4 */
Select first_name, last_name from employees where salary > (Select salary from employees where employee_id = 163 )

/* Questions 5 */
Select first_name, last_name , salary, department_id from employees where salary in (select min(salary) from employees group by DEPARTMENT_ID)

/* Questions 6 */

Select first_name, last_name, employee_id , salary from employees where manager_id = (Select employee_id from employees where first_name = 'Payam')




