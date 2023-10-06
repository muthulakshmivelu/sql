create table person(personId int,FirstName varchar(30),LastName varchar(30),primary key(personId));
drop table person

create table address(AddressId int,personId int,city varchar(100),state varchar(50),primary key(AddressId));
drop table address


create procedure saveperson(
@personId int,
@FirstName varchar(30),
@LastName varchar(30)
)
as 
begin

insert into person(personId,FirstName,LastName) values(@personId,@FirstName,@LastName);



end

exec saveperson @personId=6,@FirstName='krishna' , @LastName='veni'

create procedure saveaddress(
@AddressId int,
@personId int,
@city varchar(100),
@state varchar(50)
)
as 
begin

insert into address(AddressId,personId,city,state) values(@AddressId,@personId,@city,@state);



end

exec saveaddress @AddressId=6, @personId=3,@city='Banglore', @state='Karnataka'
select * from person

select * from address

drop procedure[saveperson];
Go
drop procedure[saveaddress];
Go

SELECT person.FirstName,person.LastName,address.city,address.state
FROM person
LEFT JOIN address
ON person.personId = address.personId;