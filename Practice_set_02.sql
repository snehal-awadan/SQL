# Practice Set : 02
# Write the Query to find average marks in each city in ascending order.

create database if not exists student;
use student;

# create cols of the table:
create table student(
	rollno int primary key,
	name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

# add info to column:
insert into student(rollno,name, marks, grade, city) values 
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select * from student;

# Write the Query to find average marks in each city in ascending order.
select city, avg(marks) from student group by city order by city;