show databases;
create database if not exists gamedb;
show databases;
use gamedb;

drop table orders;
drop table customers;

create table customers (
	customer_ID int AUTO_INCREMENT,
	NAME_customer varchar(50) not null,
	address  varchar(100),
	email  varchar(50) not null,
	password_ID  varchar(50) not null,
	primary key(customer_ID)
);

create table orders (
	order_ID int not null,
	customer_ID int not null,
	placed date,
	TOTAL dec(7,2),
    primary key (order_ID),
	foreign key (customer_ID) references customers(customer_ID)
);
describe orders;
describe customers;
show tables;


