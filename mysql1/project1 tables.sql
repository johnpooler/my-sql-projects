show databases;
create database if not exists project1db;
use project1db;

DROP TABLE customer;
DROP TABLE _order_;
DROP TABLE item;
DROP TABLE order_item;


CREATE TABLE customer (
	ID int AUTO_INCREMENT,
	NAME varchar(50) not null,
	PRIMARY KEY (ID)
);
CREATE TABLE _order_ (
	ID int AUTO_INCREMENT,
    customer_ID int,
	PRIMARY KEY (ID),
    FOREIGN KEY (customer_ID) references customer(ID)
);
CREATE TABLE item (
	ID int AUTO_INCREMENT,
	NAME varchar(50) not null,
    cost dec(7,2) not null,
	PRIMARY KEY (ID)
);
CREATE TABLE order_item (
	ID int AUTO_INCREMENT,
    order_ID int,
    item_ID int,
    PRIMARY KEY (ID),
    FOREIGN KEY (order_ID) references _order_(ID),
    FOREIGN KEY (item_ID) references item(ID)

);

DESCRIBE customer;
DESCRIBE item;
DESCRIBE _order_;
DESCRIBE order_item;

show tables;