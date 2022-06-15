CREATE DATABASE Employee;
use Employee;
CREATE table Employees(
Emp_id int,
Name varchar(100),
Surname Varchar(100),
location varchar(100),
Department Varchar(100),
Salary Float);

INSERT INTO Employees(Emp_id, Name ,Surname, location, Department, Salary)
VALUES(1, 'Felicia', 'Onwudinjo', 'Paris','Ile de france', 50000),
(2, 'Ferdi', 'Johnson','Paris','Ile de france', 50000),
(3, 'Nathan', 'Lamar','Paris','Ile de france', 50000),
(4, 'edgar', 'Rich', 'Paris','Ile de france', 50000),
(5, 'mathieu','Gatrnt','Paris','Ile de france', 50000);

select * from Employees;
#Write a query to get unique department ID from employee table

Select distinct(department) from Employees;

 
#Write a query to get the 2 columns Full name and Taxes  (20% from Salary)


#Write a query to get the maximum and minimum salary from employees table
#Write a query to get the average salary per department