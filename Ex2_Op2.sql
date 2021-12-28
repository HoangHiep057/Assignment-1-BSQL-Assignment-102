use[ex2_Op2]

create table Employees(
	ssn int,
	salary int,
	phone nvarchar(15),
	PRIMARY KEY(ssn)
)
go
create table Departments(
	dno int,
	budget int,
	dname nvarchar(15),
	PRIMARY KEY(dno)
)
go
create table work(
	ssn int,
	dno int,
	primary key(ssn,dno),
	foreign key(ssn) references Employees,
	foreign key(dno) references Departments
)
go
create table manages(
	ssn int,
	dno int,
	primary key (dno),
	foreign key (ssn) references Employees,
	foreign key (dno) references Departments
)
go
create table ChildrenOfEmployees(
	ssn int,
	name nvarchar(20),
	age int,
	primary key(ssn,name),
	foreign key(ssn) references Employees on delete cascade
)
go

