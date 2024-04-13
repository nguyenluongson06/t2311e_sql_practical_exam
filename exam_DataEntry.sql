use [t2311e_exam]

insert into Teachers (FirstName, LastName, Subject)
values
    ('Nguyen', 'An', 'Mathematics'),
    ('Pham', 'Binh', 'Physics'),
    ('Tran', 'Cuong', 'History'),
    ('Le', 'Thao', 'Biology'),
    ('Huynh', 'Thanh', 'English');

insert into Classes (ClassName, TeacherID)
values
    ('Mathematics', 1),
    ('Physics', 2),
    ('History', 3),
    ('Biology', 4),
    ('English', 5);

insert into Students (FirstName, LastName, ClassID, BirthDate)
values
    ('Nguyen', 'Thi A', 1, '2000-05-10'),
    ('Tran', 'Van B', 2, '2001-08-15'),
    ('Le', 'Thi C', 3, '1999-12-20'),
    ('Pham', 'Van D', 1, '2002-03-25'),
    ('Dang', 'Van E', 4, '2000-01-05'),
    ('Nguyen', 'Thanh F', 5, '2003-06-30'),
    ('Tran', 'Thi G', 2, '2001-11-12'),
    ('Pham', 'Van H', 3, '2002-09-18'),
    ('Le', 'Thi I', 4, '2000-07-22'),
    ('Huynh', 'Van K', 5, '2001-04-08');

select * from students;
select * from classes;
select * from teachers;