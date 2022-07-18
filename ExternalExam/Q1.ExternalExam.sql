create database college;
use college;
create table Student(
rollno int not null,
name varchar(50),
address varchar(50),
totalmarks int not null,
primary key(rollno)
);


insert into Student values(101,"Anjali","B11",90);
insert into Student values(102,"Anuradha","B12",96);
insert into Student values(103,"Bismiya","B13",94);
insert into Student values(104,"Vimal","B14",93);
insert into Student values(105,"Vivek","B15",92);
insert into Student values(106,"Karthik","B16",95);

select * from Student;


create table Course(
cid int not null,
coursename varchar(50),
fees int not null,
primary key(cid)
);

insert into Course values(32,"MCA",40000);
insert into Course values(33,"CIVIL",80000);
insert into Course values(34,"MECH",50000);
insert into Course values(35,"EC",70000);

select * from Course;


create table Admission(
rollno int not null,
cid int not null,
sem varchar(20),
foreign key(rollno) references Student(rollno),
foreign key(cid) references Course(cid),
primary key(rollno,cid)
);

insert into Admission values(101,32,"SEM2");
insert into Admission values(102,32,"SEM4");
insert into Admission values(103,32,"SEM2");
insert into Admission values(104,33,"SEM8");
insert into Admission values(105,34,"SEM6");
insert into Admission values(106,35,"SEM4");

select * from Admission;

select name from Student where(select coursename from Course where cid=32);



create view abc As select * from Student where rollno in(select rollno from Admission where cid in 
(select cid from Course where coursename="MCA"));

select sum(fees) from Course where cid in(select cid from Admission where rollno=105) ;

select Course.coursename,count(Admission.rollno) from Course join Admission ON 
Course.cid=Admission.cid group by Admission.cid;