--Question 8: Create a stored procedure named GetStudentsByClassAndSubject that takes ClassID and Subject, and returns a list of students belonging to that class and subject.
create procedure GetStudentsByClassAndSubject
    @ClassID int,
    @Subject varchar(255)
as
begin
    declare @ClassName varchar(255);

    select @ClassName = ClassName
    from Classes
    where ClassID = @ClassID;

    select
        s.StudentID,
        s.FirstName,
        s.LastName,
        c.ClassName as ClassName,
        t.FirstName as TeacherFirstName,
        t.LastName as TeacherLastName
    from Students s
    inner join Classes c on s.ClassID = c.ClassID
    inner join Teachers t on c.TeacherID = t.TeacherID
    where s.ClassID = @ClassID and c.ClassName = @ClassName and t.Subject = @Subject;
end;
go