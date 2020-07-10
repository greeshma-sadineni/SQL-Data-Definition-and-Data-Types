create database CarRental;

create table Categories(
Id int primary key identity,
CategoryName nvarchar(20) not null unique, 
DailyRate int not null, 
WeeklyRate  int not null, 
MonthlyRate  int not null, 
WeekendRate int not null
)
create table Cars(
Id int primary key identity, 
PlateNumber varchar(10)not null unique, 
Manufacturer nvarchar(10), 
Model nvarchar(10) not null,
CarYear int not null, 
CategoryId int foreign key references Categories(Id), 
Doors int, 
Picture varbinary(max), 
Condition varchar(10), 
Available varchar(10) not null
)

create table Employees(
Id int primary key identity, 
FirstName nvarchar(10) not null, 
LastName nvarchar(10) not null, 
Title nvarchar(10) not null, 
Notes nvarchar(100)
)
 create table Customers(
 Id int primary key identity,
 DriverLicenceNumber nvarchar(15) unique, 
 FullName nvarchar(20) not null, 
 Address nvarchar(30) not null,
 City nvarchar(10) not null, 
 ZIPCode int not null, 
 Notes nvarchar(20)
 )  

 create table RentalOrders (
 Id  int primary key identity, 
 EmployeeId int foreign key references Employees(Id), 
 CustomerId int foreign key references  Customers(Id), 
 CarId int foreign key references cars(Id), 
 TankLevel int not null, 
 KilometrageStart int not null, 
 KilometrageEnd int not null, 
 TotalKilometrage as KilometrageEnd- KilometrageStart, 
 StartDate date not null,
 EndDate date not null, 
 TotalDays as datediff(day,StartDate, EndDate), 
 RateApplied decimal(8,2) not null, 
 TaxRate as RateApplied*0.1, 
 OrderStatus nvarchar(10) not null, 
 Notes nvarchar(100)
 )
 insert into  Categories(CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate) values
 ('Van',300,2000,5000,1500),
  ('Sumo',500,3000,8000,2000),
   ('Mini',200,4000,6000,1000)

 insert into cars(PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)values
 ('AP5001','Tata','Indigo',2014,1,4,null,'Good','Available'),
 ('MH9899','BMW','A6',2018,1,4,null,' very Good','Available'),
 ('TS4509','Maruthi','Suv',2015,2,4,null,'Good','Available')
 insert into Employees( FirstName, LastName, Title, Notes)values
 ('Greeshma','sadineni','Manager',null),
 ('Rajesh','Bathula','Supervisor',null),
  ('Vinay','Sadineni','Assistent',null)

  insert into Customers(DriverLicenceNumber, FullName, Address, City, ZIPCode, Notes)values
  ('AC5691234','Greeshma SAdineni',' ch colony 2nd line','Hyderabad',50089,'null'),
    ('BG765833','Rajesh Bathula',' chitanya colony','Khammam',50079,'null'),
	  ('HU5691234','Vinay Sadineni','srinagr colny  3nd line','Chennai',50069,'null')
	  insert into RentalOrders(EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, StartDate, EndDate, RateApplied, OrderStatus, Notes)
values
(1,2,3,45,350,750,'2019-07-07','2019-07-08',500,'Returned',null),
(2,3,1,75,500,1000,'2020-07-06','2020-07-08',1500,'Returned',null),
(1,1,2,55,250,750,'2020-06-07','2020-07-08',20000,'Returned',null)
  insert into RentalOrders values
  (1,1,2,55,250,750,'2020-06-07','2020-07-08',20000,'Returned',null)

select * from RentalOrders;