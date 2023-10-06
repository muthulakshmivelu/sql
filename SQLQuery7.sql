create table empTable(empId int identity(1,1),empName varchar(30),age int);


create procedure saveemployee(
@empName varchar(30),
@age int
)
as 
begin

insert into empTable(empName,age) values(@empName,@age);
declare @m_empId int= scope_identity()
select @m_empId as 'EmployeeId'


end

exec saveemployee @empName='raj' , @age=26

 

drop table emptable

DROP PROCEDURE [saveemployee];
GO