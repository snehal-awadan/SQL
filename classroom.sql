# Create databaes:
create database if not exists college;

# use the defined database:
use college;

# create cols of the table:
create table student(
	rollno int primary key,
	name varchar(50),
    marks int not null,
    grade INT(1),
    city varchar(20)
);

ALTER TABLE student MODIFY marks INT;

# add info to column:
insert into student(rollno,name, marks, grade, city) values 
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

# show the table-cols:
select * from student;

# To select specific cols from the table (name and marks) only;
select name,marks from student;

# show all the tables:
show tables;

# to show distinct values from the selected cols:
select distinct city from student;

# WHERE clause:
select * from student where marks < 80;

# WHERE clause with AND operator:
select * from student where city = "mumbai" and marks > 80;

# WHERE clause with OR operator:
select * from student where city = "Pune" or marks > 70;

# WHERE clause with Between operator:
select * from student where marks between 80 and 90;

# WHERE clause with In operator:
select * from student where city in ("Mumbai" , "Pune");

# WHERE clause with NOT operator:
select * from student where city not in ('Mumbai', 'Delhi');

# LIMIT clause:
select * from student limit 3;
select * from student where marks > 75 limit 4;

# ORDER BY clause:
select * from student order by city asc;
select * from student order by city desc;

# Get the top 3 students:
select * from student order by marks desc limit 3;

# Get the maximum marks:
select max(marks) from student;

# Get the minimum marks:
select min(marks) from student;

# Get the average of the marks:
select avg(marks) from student;

# Get the total count of the student;
select count(rollno) from student;

# Get the sum of the marks:
select sum(marks) from student;

# GROUP BY clause:

# Q) Count the number of students in each city
select city, count(rollno) from student group by city; 

# Q) Find the average marcks of each city.
select city, avg(marks) from student group by city;

# HAVING clause:
# Q) Count number of student in each city where max marks corsss 90;

select city, count(name) from student group by city having max(marks) > 90;

# To off the safe mode in the SQL:
set sql_safe_updates = 0;

# UPDATE query:
update student set grade = "O" where grade = "A";
select * from student;

# Update marks:
update student set marks = 92 where marks = 12;

# Now update the grade accordingly;
update student set grade = "B" where marks between 80 and 90;
select * from student;

describe student;

# drop any table:
drop table student;