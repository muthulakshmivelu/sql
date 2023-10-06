create table employeeinfo(empId int,empName varchar(30),salary int);
select * from employeeinfo

create procedure saveemployeeinfo(
@empId int,
@empName varchar(30),
@salary int
)
as 
begin
insert into employeeinfo values(@empId,@empName,@salary)

end
exec saveemployeeinfo @empId=5,@empName='abi',@salary=100000
drop procedure[saveemployeeinfo];
go
drop table employeeinfo

select sum(salary) from employeeinfo 

select avg(salary) from employeeinfo

select min(salary) from employeeinfo

select max(salary) from employeeinfo

select count(salary) from employeeinfo

SELECT empId, AVG(salary)as 'average', SUM(Salary) as 'total'  
FROM employeeinfo.empName  
GROUP BY empId;  
GO  
