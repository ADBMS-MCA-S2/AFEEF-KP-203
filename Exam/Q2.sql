create database Employee;
use Employee;
create table employee(
empno int,
ename varchar(50),
job varchar(50),
mgr varchar(50),
hiredate date not null,
sal int,
commission varchar(50),
deptno int,
primary key (empno),
foreign key(deptno) references department(deptno)
);

insert into employee values(101,'CHANDRAN','clerk','Sulaiman','2000-12-10',10000,'C',10);
insert into employee values(108,'SUNITA','developer','Sulaiman','2000-12-10',20000,'C',10);
insert into employee values(102,'LALITA','clerk','Sulaiman','2000-12-10',10000,'C',20);
insert into employee values(103,'JOHN','clerk','Sulaiman','2000-12-10',10000,'C',20);
insert into employee values(109,'BENNY','developer','Sulaiman','2000-12-10',180000,'C',20);
insert into employee values(104,'FIROS','clerk','Sulaiman','2000-12-10',10000,'C',30);
insert into employee values(110,'RAJAN','tester','Sulaiman','2000-12-10',22000,'C',30);
insert into employee values(105,'MANU','clerk','Sulaiman','2000-12-10',10000,'C',30);
insert into employee values(106,'REMY','secretary','Sulaiman','2000-12-10',22000,'C',40);
insert into employee values(111,'SOUBIN','clerk','Sulaiman','2000-12-10',10000,'C',40);
insert into employee values(107,'SAHEER','clerk','Sulaiman','2000-12-10',10000,'C',40);


create table department(
deptno int,
dname varchar(50),
loc varchar(50),
primary key(deptno)
);

insert into department values(10,'Education','A Block');
insert into department values(20,'Research','C Block');
insert into department values(30,'Accounts','B Block');
insert into department values(40,'CIVIL','MAIN Block');
insert into department values(50,'Media','ADM Block');


SELECT * FROM department;

select * from employee; 
truncate table employee;

/* queries*/

select count(*) from employee where employee.job='clerk';


select deptno,avg(sal) from employee group by deptno;
select deptno,count(*) from employee group by deptno;
select deptno,count(*) from employee where employee.job='clerk' group by deptno;
