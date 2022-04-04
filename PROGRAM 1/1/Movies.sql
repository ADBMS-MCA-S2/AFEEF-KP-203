CREATE database MOVIES;
USE MOVIES;
CREATE TABLE Movies(
title varchar(50),
director varchar(50),
myear int,
rating float,
primary key(title)
);
insert into Movies values("Fargo","Coen",1996,8.2);
insert into Movies values("Raising Arizona","Coen",1987,7.6);
insert into Movies values("Spiderman","Raimi",2002,7.4);
insert into Movies values("Wonder Boys","Hanson",2000,7.6);

select * from movies;

CREATE TABLE Actors(
actor varchar(50),
ayear int,
primary key(actor)
);

insert into Actors values("Cage",1964);
insert into Actors values("Hanks",1956);
insert into Actors values("Maguire",1975);
insert into Actors values("McDormand",1957);

select * from Actors;

CREATE TABLE Acts(
actor varchar(50),
title varchar(50),
foreign key(actor) references Actors(actor),
foreign key(title) references Movies(title)
);

insert into Acts values("Cage","Raising Arizona");
insert into Acts values("Maguire","Spiderman");
insert into Acts values("Maguire","Wonder Boys");
insert into Acts values("McDormand","Fargo");
insert into Acts values("McDormand","Raising Arizona");
insert into Acts values("McDormand","Wonder Boys");

select * from Acts;

create table Directors(
director varchar(50),
dyear int,
primary key(director)
);

insert into Directors(director,dyear) values("Coen",1954);
insert into Directors(director,dyear) values("Hanson",1945);
insert into Directors(director,dyear) values("Raimi",1959);


select * from Directors;

select title from Movies where myear>1997;
select title from Movies where director="Hanson" and myear>1997;
select title,rating from Movies;
create view Newtable as select Actors.actor,Directors.director from Actors,Directors;
select * from Newtable;

select movies.title from movies,acts where director="Coen" and actor="McDormand" and movies.title=acts.title;
