select * from employee;
create table city (
    city_id bigserial not null primary key , city_name varchar(60)
);
select * from city;
drop table city;
alter table employee
    add foreign key (city_id) references city (city_id);

insert into city (city_name) values ('Грозный');
insert into city (city_name) values ('Иннополис');
insert into city (city_name) values ('Москва');
update employee set city_id = 3 where id = 6;
select first_name, last_name , city_name from employee inner join city on employee.city_id = city.city_id;
UPDATE employee SET  city_id = 2 WHERE ID = 6;
UPDATE employee SET  city_id = 0 WHERE ID = 2;
select first_name, last_name , city_name from employee RIGHT JOIN  city on employee.city_id = city.city_id;
select first_name, last_name , city_name from employee FULL JOIN  city on employee.city_id = city.city_id;
select first_name, last_name , city_name from employee CROSS JOIN  city;
