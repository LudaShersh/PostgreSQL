create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values	('Lenette'),
		('Dana'),
		('Miquela'),
		('Borg'),
		('Mallissa'),
		('Terrijo'),
		('Adriaens'),
		('Raquel'),
		('Rurik'),
		('Prent'),
		('Jeffy'),
		('Vonni'),
		('Druci'),
		('Raphael'),
		('Xaviera'),
		('Nicko'),
		('Rebekkah'),
		('Leanora'),
		('Stanislaw'),
		('Sonya'),
		('Kassia'),
		('Karlis'),
		('Lynna'),
		('Deeyn'),
		('Robinet'),
		('Seward'),
		('Ki'),
		('Culley'),
		('Henrie'),
		('Deb'),
		('Egor'),
		('Meier'),
		('Christophorus'),
		('Gui'),
		('Karlens'),
		('Tam'),
		('Cymbre'),
		('Barbie'),
		('Charmain'),
		('Dougie'),
		('Carlotta'),
		('Rustin'),
		('Shermie'),
		('Alain'),
		('Sam'),
		('Riobard'),
		('Ellissa'),
		('Arlana'),
		('Wolfy'),
		('Sergeant'),
		('Angelita'),
		('Kala'),
		('Sallee'),
		('Clarisse'),
		('Silas'),
		('Tomasina'),
		('Cobbie'),
		('Curr'),
		('Enrika'),
		('Shawn'),
		('Leigh'),
		('Tiff'),
		('Truman'),
		('Maddie'),
		('Les'),
		('Reinaldo'),
		('Maighdiln'),
		('Nancy'),
		('Nichole'),
		('Richmond');

select * from employees;

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values	(1000),
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
select * from salary;

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
insert into employee_salary(id, employee_id, salary_id)
values	(1,71,7),
		(2,72,4),
		(3,73,9),
		(4,74,13),
		(5,75,4),
		(6,76,2),
		(7,77,10),
		(8,78,13),
		(9,79,4),
		(10,80,1),
		(11,11,7),
		(12,12,5),
		(13,13,9),
		(14,14,1),
		(15,15,5),
		(16,16,4),
		(17,17,2),
		(18,18,1),
		(19,19,11),
		(20,20,14),
		(21,21,15),
		(22,22,6),
		(23,23,3),
		(24,24,13),
		(25,25,16),
		(26,26,8),
		(27,27,2),
		(28,28,10),
		(29,29,7),
		(30,30,11),
		(31,31,14),
		(32,32,1),
		(33,33,15),
		(34,34,6),
		(35,35,2),
		(36,36,12),
		(37,37,10),
		(38,38,7),
		(39,39,4),
		(40,40,1);
	
select * from employee_salary;

select * from employee_salary;
UPDATE employee_salary
SET employee_id = '80' 
WHERE id = 10;

create table roles(
	id serial primary key,
	role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30);

insert into roles(role_name)
values	('Junior Python developer'),
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

select * from roles;


create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_employee(employee_id, role_id)
values	(5,11),
		(8,9),
		(3,4),
		(9,5),
		(1,9),
		(4,12),
		(7,3),
		(2,15),
		(21,6),
		(26,11),
		(24,14),
		(28,10),
		(22,9),
		(41,1),
		(49,5),
		(43,10),
		(45,11),
		(40,16),
		(50,4),
		(44,1),
		(51,6),
		(53,14),
		(59,3),
		(55,8),
		(58,11),
		(54,7),
		(60,5),
		(68,2),
		(63,9),
		(65,2),
		(66,1),
		(13,9),
		(15,5),
		(19,7),
		(11,11),
		(17,16),
		(14,3),
		(12,9),
		(33,13),
		(36,6);
select * from roles_employee
select * from roles_employee;
update roles_employee 
set role_id='16'
where id=6;
