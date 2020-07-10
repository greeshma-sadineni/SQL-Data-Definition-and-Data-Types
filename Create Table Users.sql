create table users(
Id bigint unique identity,
Username varchar(30) unique not null,
[Password] varchar(26) not null,
ProfilePicture varbinary(max) check (Datalength(ProfilePicture) <= 900*1024),
LastLoginTime time,
IsDeleted varchar(5) check(IsDeleted in ('true','False'))
)
alter table users add primary key(Id)
select * from users;
insert into users (Username,Password,ProfilePicture,LastLoginTime,IsDeleted)values
('Greeeshma','gree123',null,'12:00:00','true'),
('Vinay','vinay123',null,'12:50:00','False'),
('Rajesh','Rajesh123',null,'11:50:00','true')

insert into users (Username,Password,ProfilePicture,IsDeleted)values
('Raji2','Raje',null,'true')
delete from users where Username='raj';

insert into users (Username,Password,ProfilePicture,IsDeleted)values
('Raji1','Rajesh123',null,'true')