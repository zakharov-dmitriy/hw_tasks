-- 1. Создать таблицу employees
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

-- 2. Наполнить таблицу employees 70 строками
insert into employees (employee_name)
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

-- 3. Создать таблицу salary
create table salary(
	id serial not null primary key, --serial - автоматическая генерация уникального значения в postgreSQL
	monthly_salary int not null
);

-- 4. Наполнить таблицу salary 15 строками
insert into salary (monthly_salary)
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

-- 5. Создать таблицу employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int  not null,
	salary_id int not null
);

-- 6. Наполнить таблицу employee_salary 40 строками
insert into employee_salary (employee_id, salary_id) 
values (3,7), (1,4), (5,9), (40,13), (23,4), (11,2), (52,10), (15,13), (26,4), (16,1), (33,7);

--7. Создать таблицу roles
create table roles(
	id serial primary key,
	role_title int unique not null --unique - данные в ячейке должны иметь уникальные значения
);

--8. Поменять тип поля role_title с int на varchar(30)
alter table roles 
alter column role_title 
type varchar(50);

--9. Наполнить таблицу roles 20 строками
insert into roles (role_title)
values 
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

-- 10. Создать таблицу roles_employee
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees(id), -- создание реляции, связи между таблицами по ключам
	foreign key (role_id) references roles(id)
);

-- 11. Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
values (7,2),(20,4),(3,9),(5,13),(23,4),(11,2),(10,9),(22,13),(21,3),(34,4),(6,7);

insert into roles_employee (employee_id, role_id) 
values ((floor(random()*40)+1), (floor(random()*20)+1));



