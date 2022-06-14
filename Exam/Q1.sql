create database Library;
use Library;
create table books(
bookno int,
title varchar(50),
author varchar(50),
primary key(bookno)
);

insert into books values(1,"kazak","ov");
insert into books values(2,"mathilukal","basheer");
insert into books values(3,"adayalangal","sethu");
insert into books values(4,"velicham","basheer");
insert into books values(5,"purappad","thambi");

create table Library_Audit(
bookno int,
title varchar(50),
author varchar(50),
remarks varchar(100),
foreign key(bookno) references books(bookno)

);

