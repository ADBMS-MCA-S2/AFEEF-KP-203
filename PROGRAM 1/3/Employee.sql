create database employee;
USE employee
create table Employee_Table(
EMPNO varchar(50),
EMP_NAME varchar(50),
DEPT_NAME varchar(50),
SALARY int(50),
DOJ VARCHAR(50),
BRANCH VARCHAR(50),
PRIMARY KEY(EMPNO)

);

insert into Employee_Table values("E101","Amit","Producction",45000,"12-Mar-00","Bangalore");
insert into Employee_Table values("E102","Amit","HR",70000,"03-Jul-02","Bangalore");
insert into Employee_Table values("E103","Sunita","Management",120000,"11-Jan-01","Mysore");
insert into Employee_Table values("E105","Sunita","IT",67000,"01-Aug-01","Mysore");
insert into Employee_Table values("E106","Mahesh","Civil",145000,"20-Sep-03","Mumbai");

select * from Employee_Table;
select EMPNO,SALARY from Employee_Table;
select avg(SALARY) FROM Employee_Table;
select count(EMPNO) FROM Employee_Table;
select distinct * FROM Employee_Table;
select distinct(EMP_NAME)FROM Employee_Table;
select sum(SALARY),EMP_NAME,count(*) as count from Employee_Table group by EMP_NAME having(count(*)>1);
select *from Employee_Table  where SALARY>120000;
select EMP_NAME from Employee_Table order by EMP_NAME desc;
SELECT * FROM Employee_Table where EMP_NAME="Amit" and SALARY>50000;