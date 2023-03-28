
CREATE DATABASE MadDB
GO

USE MadDB
go

CREATE TABLE department
(
	id INT PRIMARY KEY IDENTITY,
	departmentName NVARCHAR(30)
)
GO
insert into department values
('AlQuran'),
('AlHadith'),
('Arabic')
go

CREATE TABLE Teacher
(
	id INT PRIMARY KEY IDENTITY,
	TeaName NVARCHAR(30) NOT NULL,
	Email NVARCHAR(30) NOT NULL,
	ContactNo NVARCHAR(11) NOT NULL,
	joinDate DATE NOT NULL,
	departmentId INT REFERENCES department(id) NOT NULL,
	Salary MONEY NOT NULL,
	picture NVARCHAR(200) NULL,
	isActive BIT NULL
)
go
select*from Teacher
go

CREATE TABLE Class
(
	id INT PRIMARY KEY IDENTITY,
	ClassName NVARCHAR(30)
)
GO
insert into Class values
('Hefz'),
('Nurani'),
('Najera'),
('Hadith')
go


CREATE TABLE Student
(
	id INT PRIMARY KEY IDENTITY,
	StuName NVARCHAR(30) NOT NULL,
	Age NVARCHAR (2) not null,
	Gender NVARCHAR (20) NOT NULL,
	ClassId INT REFERENCES Class(id) NOT NULL,
	picture NVARCHAR(200) NULL,
	
)
go

CREATE TABLE Stuff
(
	id INT PRIMARY KEY IDENTITY,
	StufName NVARCHAR(30) NOT NULL,
	ContactNo NVARCHAR(11) NOT NULL,
	basicSalary MONEY NOT NULL,
	Address NVARCHAR(30) NOT NULL,	
)
go