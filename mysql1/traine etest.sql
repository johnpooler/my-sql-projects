show databases;
create database if not exists gametrainee;
use gametrainee;

drop table manager;
drop table recruiter;
drop table trainee;
drop table trainer;
drop table trainer_trainee;



create table manager (
	ID int AUTO_INCREMENT,
	NAME varchar(50) not null,
	salary int not null,
	PRIMARY KEY (ID)
);
CREATE TABLE recruiter (
    ID INT AUTO_INCREMENT,
    NAME VARCHAR(50) NOT NULL,
    salary int not null,
    manager_ID int,
    PRIMARY KEY (ID),
    foreign key (manager_ID) references manager(ID)
);
CREATE TABLE trainer (
    ID INT AUTO_INCREMENT,
    NAME VARCHAR(50) NOT NULL,
    salary int not null,
    manager_ID int,
    PRIMARY KEY (ID),
	foreign key (manager_ID) references manager(ID)
);
CREATE TABLE trainee (
    ID INT AUTO_INCREMENT,
    NAME VARCHAR(50) NOT NULL,
    date_arrival date,
    manager_ID int,
    recruiter_ID int,
    PRIMARY KEY (ID),
    foreign key (manager_ID) references manager(ID),
    foreign key (recruiter_ID) references recruiter(ID)
);
CREATE TABLE trainer_trainee (
	ID int auto_increment,
	trainer_ID INT,
    trainee_ID INT,
	primary key (ID),
    Foreign key (trainer_ID) references trainer(ID),
    foreign key (trainee_ID) references trainee(ID)
);

describe manager;
describe trainer;
describe recruiter;
describe trainee;
describe trainer_trainee;

show tables;








