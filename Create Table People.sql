create table  People(
Id int unique not null identity,
Name nvarchar(200) not null,
Picture VarBinary(max),
Gender char(1) NOT NULL CHECK (Gender IN ('M', 'F')),
Birthdate date not null,
Biography nvarchar(max),
Height decimal(6,2),
Weight decimal(5,2)
)
alter table people add primary key (Id);

select * from people;

insert into People (Name,Picture,Gender,Birthdate,Biography,Height,Weight)values
('Greeshma',null,'F','1993-08-13','i am greeshma',152.23,58.00),
('Rajesh',null,'M','1989-08-21','i am rajesh',160.00,65),
('Vinay',null,'M','1995-09-09','i am Vinay',165.00,60)



