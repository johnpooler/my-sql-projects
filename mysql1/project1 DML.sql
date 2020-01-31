#customer
insert into customer values (1, 'Mateu');
insert into customer values (2, 'Joan');
insert into customer values (3, 'LLuc');
insert into customer values (4, 'Marc');

UPDATE customer SET name = 'johnny' where ID = 2;

DELETE FROM customer WHERE ID = 3;

SELECT* FROM customer;

#item
insert into item values (2, 'bingo', 1.20);
insert into item values (3, 'shmingo', 1.20);
insert into item values (4, 'minecraft', 1.20);
insert into item values (5, 'terraria', 0.20);
insert into item values (6, 'league of legends', 1.20);

UPDATE item SET name = 'patata' where ID = 1;
UPDATE item SET cost = 1.69 where ID = 2;

SELECT* FROM item;

DELETE FROM item WHERE ID = 2;

#_order_
insert into _order_ values (1, 2);
insert into _order_ values (2, 4);
insert into _order_ values (3, 3);
insert into _order_ values (4, 1);


SELECT* FROM _order_;



UPDATE _order_ SET customer_id = 1 where ID = 4;


DELETE FROM _order_ WHERE ID = 4;

#add item and quantity to an order































