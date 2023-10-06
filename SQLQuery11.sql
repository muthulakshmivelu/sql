create table details(empId int identity(1,1),empName varchar(30),dept varchar(20));

create table infom(empId int identity(1,1),address varchar(100),city varchar(30));

select *from details
select* from infom

create procedure savedetails(
@empName varchar(30),
@dept varchar(20)
)
as
begin
insert into details(empName,dept) values(@empName,@dept)
declare @m_empId int=scope_identity()
select @m_empId as 'EmpID'

end
exec savedetails @empName='sam',@dept='ECE'

create procedure saveinfom(
@address varchar(30),
@city varchar(20)
)
as
begin
insert into infom(address,city) values(@address,@city)
declare @m_empId int=scope_identity()
select @m_empId as 'EmpID'

end
exec saveinfom @address='west street',@city='madhurai'

select details.empName,details.dept,infom.address,infom.city
from details
right join infom
on details.empId=infom.empId;