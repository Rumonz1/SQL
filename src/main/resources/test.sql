select * from employee;
select first_name as Имя, last_name as Фамилия from employee;
select * from employee where age < 30 or age > 50;
select * from employee where age between 30 and  50;
select first_name , last_name from employee
order by first_name , last_name desc ;
select * from employee where length(first_name) > 4;
update employee set first_name = 'Marina' where id = 6;
update employee set first_name = 'Nikolay' where id = 8;
select first_name as Имя, sum(age) as Суммарный_возраст
       from employee group by Имя;
select first_name as Имя, min(age) from employee group by Имя;
select first_name as Имя, max(age) as Максимальный_возраст_по_имени from employee
group by Имя having count(first_name) > 1 order by 2;