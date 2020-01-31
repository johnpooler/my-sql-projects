insert into manager Values (2, 'john', 350000);
insert into manager(NAME, salary) values ('parmesan cheese', 5);
insert into manager(NAME, salary) values ('Rory', 450);

insert into trainee values (1, 'John Pooler', 13/01/2020, 1, 1);
insert into trainee values (3, 'bob', 13/01/2020, 1, 2);

insert into trainer values (1, 'Chris perrino', 20000, 1);

insert into recruiter values (1, 'Gary', 4200, 1);
insert into recruiter values (2, 'Daniela', 4000, 1);

insert into trainer_trainee(trainer_id, trainee_id) values (1, 1); 


update trainee set manager_ID=3 where manager_ID=1;
update trainer set manager_ID=3 where manager_ID=1;
update recruiter set manager_ID=3 where manager_ID=1;#change manager from rory to parmesan
delete from manager where ID=1;
delete from trainee where ID=2;


select distinct NAME from manager where name like '%cheese%';
select * from manager order by ID desc limit 3;
select * from manager;
select * from recruiter;
select * from trainee;
select * from trainer;
select * from trainer_trainee;
