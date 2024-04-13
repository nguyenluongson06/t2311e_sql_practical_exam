--creating index for all tables if not exists
if not exists (select * from sys.indexes where name = 'IX_Teachers') create index IX_Teachers on teachers(FirstName, LastName, Subject);
if not exists (select * from sys.indexes where name = 'IX_Classes') create index IX_Classes on classes(ClassName, TeacherID);
if not exists (select * from sys.indexes where name = 'IX_Students') create index IX_Students on students(FirstName, LastName, ClassID, BirthDate);

--Question 3: - Write a SQL query to display a list of all students with class name and teacher in charge.
select
    s.FirstName as StudentFirstName,
    s.LastName as StudentLastName,
    c.ClassName,
    t.FirstName as TeacherFirstName,
    t.LastName AS TeacherLastName
from Students s
inner join Classes c on s.ClassID = c.ClassID
inner join Teachers t on c.TeacherID = t.TeacherID;

--Question 4: Write a SQL query to display students with birth dates from 2000 onwards.
select
    FirstName,
    LastName,
    BirthDate
from Students
where year(BirthDate) >= 2000;

--Question 5: Write an SQL query to display all students with class name and teacher in charge, sorted by student name
select
    s.FirstName as StudentFirstName,
    s.LastName as StudentLastName,
    c.ClassName,
    t.FirstName as TeacherFirstName,
    t.LastName as TeacherLastName
from
    Students s
inner join Classes c ON s.ClassID = c.ClassID
inner join Teachers t ON c.TeacherID = t.TeacherID
order by s.LastName, s.FirstName;

--Question 6: Update the name of the student whose StudentID is 3 to "John Doe".
begin transaction;
	update Students
	set FirstName = 'John', LastName = 'Doe'
	where StudentID = 3;
commit transaction;
select * from students;

--Question 7: Delete students whose StudentID is 7.
begin transaction;
	delete from Students where StudentID = 7;
commit transaction;
select * from students;