create database student_db;
use student_db;
CREATE TABLE student_tbl (id INT PRIMARY KEY,name VARCHAR(50),class VARCHAR(10),address VARCHAR(100),grade CHAR(2),sub1_mark INT,sub2_mark INT);
insert into student_tbl values(1,'Alice','fycs','Thane','A',50,60),(2,'Bob','sycs','Mumbai','B',65,62),(3,'John','fycs','Thane','F',52,50),(4,'Smith','tycs','Navi Mumbai','C',59,70),(5,'Peter','fycs','Thane','A',63,67);
select* from student_tbl;
select count(id) from student_tbl;
select count(*) from student_tbl;
select count(id) as records from student_tbl;
select count(distinct address) from student_tbl;
select min(sub1_mark) from student_tbl;
select max(sub1_mark) from student_tbl;
select avg(sub1_mark) from student_tbl;
select sum(sub2_mark) as summ,avg(sub2_mark) as average from student_tbl; -- summ ,average column names
select min(sub1_mark) from student_tbl group by class;
select min(sub1_mark),class from student_tbl group by class; -- class association
select max(sub1_mark),max(sub2_mark),class from student_tbl group by class;
select grade,avg(sub1_mark) from student_tbl group by grade having avg(sub1_mark)>50 ; -- SELECT column, AGG_FUNC(column)FROM tableGROUP BY column HAVING condition_on_aggregate;
select round(120.8); -- 121
select round(120.4); -- 120
 select round(120.5); -- 121
 