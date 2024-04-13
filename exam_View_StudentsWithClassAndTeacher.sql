--Question 9: Create a view named StudentsWithClassAndTeacher that displays information about students along with the class name and teacher in charge.create view StudentsWithClassAndTeacher as
select
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.ClassName as ClassName,
    t.FirstName as TeacherFirstName,
    t.LastName as TeacherLastName
from students s
inner join classes c on s.ClassID = c.ClassID
inner join teachers t on c.TeacherID = t.TeacherID;
