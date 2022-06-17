--1. Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
--2. Наполнить таблицу employee 70 строками.

create table employees(
id serial primary key,
employee_name varchar(50) not null);

insert into employees(id, employee_name)
values(default,'Thomas'),
      (default,'Michael'),
      (default,'Elliott'),
      (default,'James'),
      (default,'Steven'),
      (default,'Anna_5'),
      (default,'Anna_7'),
      (default,'Anna_8'),
      (default,'Anna_9'),
      (default,'8_Jermaine'),
      (default,'8_Terence'),
      (default,'8_Mabel'),
      (default,'8_Mary'),
      (default,'8_Yoshie'),
      (default,'8_David'),
      (default,'8_Robert'),
      (default,'8_Stanley'),
      (default,'8_James'),
      (default,'8_Patty'),
      (default,'8_Jackson'),
      (default,'8_Frank'),
      (default,'8_William'),
      (default,'8_Earl'),
      (default,'8_Sylvia'),
      (default,'8_Kathleen'),
      (default,'8_Dallas'),
      (default,'8_Tamera'),
      (default,'Andrey_1'),
      (default,'Andrey_2'),
      (default,'Andrey_3'),
      (default,'Andrey_4'),
      (default,'Andrey_5'),
      (default,'Andrey_6'),
      (default,'Leticia_Long'),
      (default,'Christopher_Kumro'),
      (default,'Olive_Warne'),
      (default,'Kenneth_Coleman'),
      (default,'William_Owen'),
      (default,'Richard_Laflam'),
      (default,'Bettye_Bevington'),
      (default,'Frida_Krieger'),
      (default,'Rocky_Siddon'),
      (default,'Veronica_Jones'),
      (default,'Michael_Carrano'),
      (default,'Joanne_Hubler'),
      (default,'Thomas_Patel'),
      (default,'Angelina_Venezia'),
      (default,'Albert_Madrigal'),
      (default,'Alice_Garner'),
      (default,'Shirley_Hartung'),
      (default,'Derrick_Gary'),
      (default,'Pauline_Moody'),
      (default,'John_Perez'),
      (default,'Philip_Wilde'),
      (default,'Debra_Holland'),
      (default,'Amy_Mcmanus'),
      (default,'Karl_Storie'),
      (default,'Christine_Ackland'),
      (default,'James_Bradford'),
      (default,'Sadie_Mcdougall'),
      (default,'Gerald_Gross'),
      (default,'Frederick_Bumbrey'),
      (default,'Abbey_Tracy'),
      (default,'Michael_Carrano'),
      (default,'Bryan_Miller'),
      (default,'Anita_Frederick'),
      (default,'Ernest_Wood'),
      (default,'Mary_Tornow'),
      (default,'Marion_Daniel'),
      (default,'Carey_Biro');



--3. Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
-- 4.Наполнить таблицу salary 15 строками:

create table salary(
id serial primary key,
monthly_salary int not null);

insert into salary(monthly_salary)
values(1000),
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


-- 5.Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
-- 6.Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);


insert into employee_salary(employee_id, salary_id)
values(1,1),
      (2,2),
      (3,3),
      (4,4),
      (5,5),
      (6,6),
      (7,7),
      (8,8),
      (9,9),
      (10,10),
      (11,11),
      (12,12),
      (13,13),
      (14,14),
      (15,15),
      (16,15),
      (17,14),
      (18,13),
      (19,12),
      (20,11),
      (21,10),
      (22,9),
      (23,8),
      (24,7),
      (25,6),
      (26,5),
      (27,4),
      (28,3),
      (29,1),
      (30,16),
      (71,1),
      (72,2),
      (73,3),
      (74,4),
      (75,5),
      (76,6),
      (77,7),
      (78,8),
      (79,9),
      (80,10);
  	  
  	 
--  7. Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
-- 8.Поменять тип столба role_name с int на varchar(30)
-- 9. Наполнить таблицу roles 20 строками:
	 
  	 
create table roles (
id serial primary key,
role_name int unique not null
);

alter table roles alter column role_name type varchar(30);

insert into roles(role_name)
values('Junior Python developer'),
      ('Middle Python developer'),
      ('Senior Python developer'),
      ('Junior Java developer'),
      ('Middle Java developer'),
      ('Senior Java developer'),
      ('Junior JavaScript developer'),
      ('Middle JavaScript developer'),
      ('Senior JavaScript developer'),
      ('Junior Manual QA engineer'),
      ('Senior Manual QA engineer'),
      ('Project Manager'),
      ('Designer'),
      ('HR'),
      ('CEO'),
      ('Sales manager'),
      ('Junior Automation QA engineer'),
      ('Middle Automation QA engineer'),
      ('Senior Automation QA engineer');
	    


-- 10.Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- 11.Наполнить таблицу roles_employee 40 строками

create table  roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);


insert into roles_employee (employee_id, role_id)
	values(2,7),
	      (20,4),
	      (3,9),
	      (5,13),
	      (23,4),
	      (11,2),
	      (10,9),
	      (22,13),
	      (21,3),
	      (34,4),
	      (6,7),
	      (40,5),
	      (47,15),
	      (53,2),
	      (33,3),
	      (38,4),
	      (15,15),
	      (66,4),
	      (31,8),
	      (51,1),
	      (52,16),
	      (27,5),
	      (29,10),
	      (26,11),
	      (67,13),
	      (69,9),
	      (14,14),
	      (28,2),
	      (36,10),
	      (35,2),
	      (63,7),
	      (17,11),
	      (19,8),
	      (1,15),
	      (49,2),
	      (59,13),
	      (18,5),
	      (13,1),
	      (64,7),
	      (12,4);
	      
