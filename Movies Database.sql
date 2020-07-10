create database Movies;

create table Directors(
Id int primary key identity,
DirectorName nvarchar(20) not null,
Notes nvarchar(max)
)
create table Genres(
Id int primary key identity, 
GenreName nvarchar(20) not null unique, 
Notes nvarchar(max)
)
create table Categories(
Id int primary key identity, 
CategoryName nvarchar(20) not null unique,
Notes nvarchar(max)
)
create table Movies(
Id int primary key identity, 
Title nvarchar(20) not null, 
DirectorId int foreign key references Directors(Id) , 
CopyrightYear int, 
Length time, 
GenreId int foreign key references Genres(Id), 
CategoryId int foreign key references  Categories(Id), 
Rating decimal(2,1) not null, 
Notes nvarchar(max)
)
insert into Directors(DirectorName ,Notes)values
('Rajamouli',null),
('Koratalasiva',null),
('Sukumar',null),
('Trivikram',null),
('Ralesh',null)
select * from Directors;
insert into Genres(GenreName ,Notes)values
('Family',null),
('Adventure',null),
('Action',null),
('Drama',null),
('Comedy',null)

insert into Categories(CategoryName,Notes)values
('A',null),
('B',null),
('C',null),
('D',null),
('E',null)

insert into Movies values
('Palasa',1,2019,'2:30:00',1,2,4.5,null),
('Jersy',3,2012,'2:30:00',2,4,4.0,null),
('Okkadu',4,2002,'2:30:00',1,5,5.0,null),
('Athadu',2,2008,'2:30:00',2,1,4.2,null),
('Eega',3,2012,'2:30:00',5,3,4.0,null)

select * from Movies;
