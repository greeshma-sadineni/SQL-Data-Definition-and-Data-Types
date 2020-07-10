create database Hotel;
create table Employees (
Id int primary key identity, 
FirstName nvarchar(10) not null, 
LastName nvarchar(10) not null,
Title nvarchar(10) , 
Notes nvarchar(100)
)
create table Customers(
AccountNumber int primary key identity,
FirstName nvarchar(10) not null, 
LastName  nvarchar(10) not null, 
PhoneNumber nvarchar(15) not null, 
EmergencyName  nvarchar(10) , 
EmergencyNumber nvarchar(15) not null, 
Notes nvarchar(100)
) 

 create table RoomStatus(
 RoomStatus nvarchar(10)primary key, 
 Notes  nvarchar(100)
 )
 create table RoomTypes(
 RoomType nvarchar(10) primary key,
 Notes nvarchar(100)
 )
  create table 	BedTypes(
  BedType nvarchar(10)  primary key,
  Notes  nvarchar(100)
  )
    create table Rooms(
	RoomNumber int primary key, 
	RoomType  nvarchar(10) foreign key references RoomTypes( RoomType ) , 
	BedType nvarchar(10) foreign key references BedTypes (BedType ) , 
	Rate int not null,
	RoomStatus nvarchar(10) foreign key references 	RoomStatus(	RoomStatus),
	Notes  nvarchar(100)
	) 
	create table Payments(
	Id int primary key identity, 
	EmployeeId int foreign key references  Employees(Id), 
	PaymentDate date not null, 
	AccountNumber int foreign key references Customers(AccountNumber), 
	FirstDateOccupied date not null,
	LastDateOccupied date not null, 
	TotalDays as datediff(day,FirstDateOccupied,LastDateOccupied),
	AmountCharged decimal(8,2) not null, 
	TaxRate decimal(2,1), 
	TaxAmount as AmountCharged*TaxRate , 
	PaymentTotal as AmountCharged +AmountCharged*TaxRate, 
	Notes nvarchar(100)
	 )
	 create table Occupancies(
	 Id int primary key identity, 
	 EmployeeId int  foreign key references  Employees(Id),
	 DateOccupied date not null, 
	 AccountNumber int  foreign key references Customers(AccountNumber) , 
	 RoomNumber int foreign key references Rooms(RoomNumber) , 
	 RateApplied decimal(8,2) not null,  
	 PhoneCharge  decimal(8,2) , 
	 Notes nvarchar(500)
	 )
	
 insert into  Employees(FirstName, LastName, Title, Notes)values
	 ('Raji','Bathula','Manager',null),
	 ('Rakesh','Bolla',null,null),
	  ('Soya','SAdineni','null',null)
insert into Customers(FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)values
('Greeshma','Sadineni','+91 9846534567',null,'+91 8703388765',null),
('vinay','Sadineni','+91 9898644567',null,'+91 9703346765',null),
('Chinnu','Bolla','+91 9846534567',null,'+91 9456788765',null)
select * from Customers;
insert into RoomStatus(RoomStatus, Notes)values
('Avaliable',null),
('NAvaila',null),
('problem',null)
select * from RoomStatus;
insert into RoomTypes(RoomType, Notes)values
('single',null),
('Double',null),
('SharedRoom',null)
select *from RoomTypes;
insert into BedTypes(BedType, Notes) values
('Mini',null),
('Big',null),
('Very Big',null)
select * from BedTypes;
insert into Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes) values
(1001,'single','Mini',500,'Avaliable',null),
(2001,'single','Big',1000,'NAvaila',null),
(3011,'SharedRoom','Mini',300,'NAvaila',null)
insert into Payments(EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied,AmountCharged, TaxRate, Notes)values
(2,'2019-10-12',2, '2019-10-13','2019-10-14',500,0.2,null),
(1,'2020-06-12',3, '2020-06-12','2020-06-15',2000,0.2,null),
(2,'2020-07-01',2, '2020-07-03','2020-07-09',3000,0.2,null)
select * from Payments;

insert into Occupancies(EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)values
(1,'2020-06-12',2,1001,1000,40,null),
(2,'2019-06-12',1,2001,50,30,null),
(1,'2020-07-06',2,1001,1000,50,null)
select * from Occupancies;

	 