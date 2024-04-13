drop table if exists students;
drop table if exists classes;
drop table if exists teachers;

create table teachers(
	TeacherID int primary key identity(1,1),
	FirstName varchar(100) not null,
	LastName varchar(100) not null,
	Subject varchar(255),
)

create table classes(
	ClassID int primary key identity(1,1),
	ClassName varchar(255) not null,
	TeacherID int foreign key references teachers(TeacherID),
)

create table students(
	StudentID int primary key identity(1,1),
	FirstName varchar(100) not null,
	LastName varchar(100) not null,
	ClassID int foreign key references classes(ClassID),
	BirthDate date,
)
