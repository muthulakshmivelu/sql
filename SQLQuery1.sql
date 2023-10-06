create table empInfo(FirstName varchar(30) not null,
EmpId int identity(1000,1) primary key,
LastName varchar(30),
Email varchar(50) unique,
Age tinyint check(Age>=18),
IsMarried bit default(0)
);

select * from empInfo

insert into empInfo
(FirstName,LastName,Email,Age,IsMarried)
values
('Muthu',0,'muthulakshmivelu2304@gmail.com',18,0);


insert into empInfo
(FirstName,LastName,Email,Age,IsMarried)
values
('geetha','rchkhsgdjshdsjh','sjhdkajskasn',20,0);


insert into empInfo
(FirstName,LastName,Email,Age,IsMarried)
values
('velu','shfsfdsfs','safdyfdkjsdjks',22,1);


insert into empInfo
(FirstName,Email,Age,IsMarried)
values
('Mari','ksdjhfiusfhksj',21,1);

insert into empInfo
(FirstName,LastName,Email,Age,IsMarried)
values
('jeya','M','sjcnjshfksjd',18,1);

create table empSalary(empId int FOREIGN KEY REFERENCES empInfo(empId),Salary float);

select * from empSalary

insert into empSalary
values(1007,10000);

insert into empSalary
values(1001,10000);