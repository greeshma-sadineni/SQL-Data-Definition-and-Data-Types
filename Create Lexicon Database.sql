  create database Lexicon;
  create table Towns(
  Id int primary key identity,
  Name nvarchar(10))
  
  create table Addresses(
  Id int primary key identity,
  AddressText nvarchar(30) not null,
  TownId int foreign key references Towns(Id)
  ) 
  create table Departments(
  Id int primary key identity ,
  Name nvarchar(20)
  )
  create table Employees(
  Id int primary key identity, 
  FirstName nvarchar(10) not null,
  MiddleName nvarchar(10), 
  LastName nvarchar(10) not null, 
  JobTitle nvarchar(20) not null, 
  DepartmentId int foreign key references  Departments(Id), 
  HireDate date not null, 
  Salary decimal(8,2), 
  AddressId int  foreign key references Addresses(Id)
  )
  drop table Employees;
  alter table Employees
  drop column  Name;

    select * from Employees;
