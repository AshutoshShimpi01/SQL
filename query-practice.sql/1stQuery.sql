


create table student
(
stud_id integer auto_increment,
name text,
last text,
coe text,

primary key(stud_id)

);

create table employee
(

emp_id int,
nm text,
ln text,
sal int,
primary key(emp_id)


);




alter table student add sal decimal(2);

insert into student values(1,'shri','jag','dy',1200);
insert into student values(2,'keshu','jag','don',2000);
insert into student values(3,'yog','khr','sdp',2200);
insert into student values(4,'ashu','shmp','sits',800);


insert into student(name,last) values('ram','sham');



select * from student;




select student.stud_id,student.name,student.last
from student
where sal>=900;


Output-

1|shri|jag|dy|1200
2|keshu|jag|don|2000
3|yog|khr|sdp|2200
4|ashu|shmp|sits|800
|ram|sham||
1|shri|jag
2|keshu|jag
3|yog|khr

[Execution complete with exit code 0]

----------------------

update student
set coe = 'coep'
where coe = 'don';
output-
2|keshu|jag|coep|2000 OR  where stud_id = 2;

-----------------------

update student
set coe = 'pict'
where coe = 'dy' or coe='sdp';

1|shri|jag|pict|1200
2|keshu|jag|don|2000
3|yog|khr|pict|2200

-------------------------

delete from student
where stud_id=1;

2|keshu|jag|don|2000
3|yog|khr|pict|2200
4|ashu|shmp|sits|800


----------------------

select *
from student
where coe in ('sits','sdp') and stud_id > 1;

2|keshu|jag|sits|2000
3|yog|khr|sdp|2200
4|ashu|shmp|sits|800
