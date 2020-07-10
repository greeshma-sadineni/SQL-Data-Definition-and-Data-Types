insert into Towns (Name)values
('Sofia'), 
('Plovdiv'),
('Varna'),
('Burgas')
insert into Departments(Name) values
('Engineering'),
('Sales'), 
('Marketing'), 
('Software Development'),
( 'Quality Assurance')
select * from Departments;
insert into Employees(FirstName,MiddleName,LastName,JobTitle,DepartmentId, HireDate, Salary) values


('Meryl','trep' ,'Strep','CEO',2,'09/12/2007',3000.00),
('Peter', 'Pan', 'Pan','Intern',3,'20/08/2016',599.00)
insert into Employees(FirstName,MiddleName,LastName,JobTitle ,DepartmentId, HireDate, Salary) values
('Chuck','Norris','Norris','Senior Engineer',1,'02/03/2004',4000.00),
('Mel',' Gibson',' Gibson','.NETDeveloper',4,'01/02/2013',3500.00),
('Greta','Garbo','Garbo','Intern',5,'01/08/2016',525.25)
select * from Employees;
select FirstName+''+  MiddleName+''+ LastName as Name,JobTitle ,DepartmentId, HireDate, Salary from  Employees;
