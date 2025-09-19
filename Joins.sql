# JOINS:

# create stud table:
create database if not exists stud;

use stud;

create table student(
					student_id int,
                    name varchar(30));
                    
insert into student (student_id, name) values
					(101, "adam"),
                    (102, "bob"),
                    (103, "casey");
                    
# create course table:
create table course(
					id int primary key,
					course varchar(30)
                    );

# insert values :
insert into course (id, course) values 
					(102, "English"),
                    (105, "maths"),
                    (103, "Science"),
                    (107, "Computer Science");

select *from student;
select *from course;

# INNER JOIN: Retrieve COMMON data
select * from student inner join course on 
student.student_id = course.id;

# LEFT JOIN : common part + table(A/Left)
select * from student left join course on
student.student_id = course.id;

# RIGHT JOIN : Common part + table (B/Right):
select * from student right join course on
student.student_id = course.id;

# FULL JOIN : 
select * from student full join course 

# LEFT EXCLUSIVE JOIN : Only Table (LEFT) without common part

select * 
from student as a
left join course as b
on a.student_id = b.id
where b.id is null;

# RIGHT EXCLUSIVE JOIN : Only Table (RIGHT) without common part 
select * 
from student as a
right join course as b
on a.student_id = b.id
where a.student_id is null;


# SELF JOIN:

create table employee (
	id int primary key,
    name varchar(40),
    manager_id int
);

insert into employee (id, name, manager_id) values
			(101, "adam", 103),
            (102, "bob", 104),
            (103, "casey", null),
            (104, "donald", 103);

select * from employee;

select a.name as manager_name, b.name from employee as a
join employee as b
on a.id = b.manager_id;

# UNION : (Don't allow duplicates)
select name from employee
union 
select name from employee;

# UNION ALL: (Allow duplicates also)
select name from employee
union 
select name from employee;

