create table employee(empID int,
empName varchar(30),
managerID int);

create table emp_salary(empID int,
empSalary int);
 
 insert into employee values(1,'muthu',1),
(2,'geetha',2),
(3,'mari',2),
(4,'velu',2);

insert into emp_salary values(1,10000),(2,7000),(3,5000);

select * from employee

select * from emp_salary

SELECT employee.empID,employee.empName,emp_salary.empID,emp_salary.empSalary
FROM employee
INNER JOIN emp_salary ON employee.empID = emp_salary.empID;


SELECT employee.empID,employee.empName,eMployee.managerID,emp_salary.empID,emp_salary.empSalary
FROM employee
LEFT JOIN emp_salary
ON employee.empID =emp_salary.empID;


SELECT employee.empID,employee.empName,eMployee.managerID,emp_salary.empID,emp_salary.empSalary
FROM employee
RIGHT JOIN emp_salary
ON employee.empID =emp_salary.empID;
