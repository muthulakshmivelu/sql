create table empsal(empId int,empName varchar(30),position varchar(20),salary int);

drop table empsal

create procedure saveempsal(
@empId int,
@empName varchar(30),
@position varchar(20),
@salary int
)
as
begin 

insert into empsal values(@empId,@empName,@position,@salary)

end
exec saveempsal @empId=14,@empName='Maha',@position='HR',@salary=1750000;

select * from empsal
order by empName

select distinct position from empsal;

select * from empsal
order by salary desc

select * from empsal
order by position

select * from empsal
order by empName,empId;

create table