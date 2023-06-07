create table salary(
	id serial not null primary key, --serial - автоматическая генерация уникального значения в postgreSQL
	monthly_salary int not null
);

select * from salary;

create table roles(
	id serial primary key,
	role_title varchar(50) unique not null --unique - данные в ячейке должны иметь уникальные значения
);

select * from roles;

create table roles_salary(
	id serial primary key,
	role_id int not null,
	salary_id int not null,
	foreign key (role_id) --создание реляции, связей между таблицами по ключам
		references roles (id),
	foreign key (salary_id)
		references salary (id)
);

select * from roles_salary;


insert
	into
	roles (role_title)
values 
	('QA_manual_junior'),
    ('QA_manual_middle'),
    ('QA_manual_senior'),
    ('QA_automation_junior'),
    ('QA_automation_middle'),
    ('QA_automation_senior'),
    ('Java_developer_junior'),
    ('Java_developer_middle'),
    ('Java_developer_senior'),
    ('CEO'),
    ('CTO'),
    ('HR'),
    ('Manager'),
    ('Designer');
   
   insert
	into
	salary (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

insert into roles_salary (role_id, salary_id) 
values (1, 1), (2, 6), (3, 11), (4, 5), (5, 9), (6, 14), (7, 15), (8, 16), (9, 3), (10, 12), (11, 7);

select * from roles_salary;

select r.role_title "Должность", s.monthly_salary "Зарплата"
from roles r join salary s on r.id = s.id;

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

select
	*
from
	employees;

insert
	into
	employees (employee_name)
values 
('Theresa Vasquez'),
('Michael Watts'),
('Mary Griffin'),
('Leonard Weber'),
('Steve Santiago'),
('Patricia Carter'),
('Robert Johnson'),
('Gerald Banks'),
('Nancy Wright'),
('Denise King'),
('Michael Smith'),
('Nicole Boyd'),
('Juanita Edwards'),
('Helen Hill'),
('Kelly Hayes'),
('Brandon McCarthy'),
('Audrey Price'),
('Lisa Jackson'),
('Debra Mullins'),
('Jerry Williams'),
('Timothy Rowe'),
('Evelyn Jones'),
('Mary Davis'),
('Jeffrey Jenkins'),
('Sharon McDaniel'),
('Dolores Black'),
('Ryan Lynch'),
('Mary Lindsey'),
('Betty Chapman'),
('Frank Williams'),
('John Taylor'),
('John Rivera'),
('David Garcia'),
('Ronald McBride'),
('Thomas Wright'),
('Joyce Day'),
('Ernest Rice'),
('Maria Fernandez'),
('Calvin Santos'),
('Jerry Smith'),
('Karen Harrison'),
('Robert Rodgers'),
('Jill Johnson'),
('Barbara Martin'),
('Anthony Harris'),
('Amanda Rivera'),
('Sandra Meyer'),
('Everett Newton'),
('Eric Estrada'),
('Andrea Dunn'),
('John Hill'),
('Maria Patton'),
('Amanda Edwards'),
('Howard Washington'),
('Randy Smith'),
('Regina Brown'),
('Michael Fleming'),
('James Barnes'),
('John Estrada'),
('Gloria Jones'),
('Alice Collins'),
('Ashley Palmer'),
('Robert Miller'),
('Jeffery Moss'),
('Virginia Riley'),
('Robert Davis'),
('Karen Hall'),
('Samuel Morgan'),
('Joseph Jackson'),
('Eugene Smith');

