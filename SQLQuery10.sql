create table detail(empId int identity(1,1),empName varchar(30),dept varchar(20));

create table info(empId int identity(1,1),address varchar(100),city varchar(30));

select *from detail
select* from info

create procedure savedetail(
@empName varchar(30),
@dept varchar(20)
)
as
begin
insert into detail(empName,dept) values(@empName,@dept)
declare @m_empId int=scope_identity()
select @m_empId as 'EmpID'

end
exec savedetail @empName='sneha',@dept='IT'

create procedure saveinfo(
@address varchar(30),
@city varchar(20)
)
as
begin
insert into info(address,city) values(@address,@city)
declare @m_empId int=scope_identity()
select @m_empId as 'EmpID'

end
exec saveinfo @address='north street',@city='srivilliputhur'


select detail.empName,detail.dept,info.address,info.city
from detail
left join info
on detail.empId=info.empId;

select detail.empName,detail.dept,info.address,info.city
from detail
right join info
on detail.empId=info.empId;

select detail.empName,detail.dept,info.address,info.city
from detail
inner join info
on detail.empId=info.empId;

drop table detail
drop table info
drop procedure[savedetail];
go
drop procedure[saveinfo];
go