# HW_1
### Таблица employees

1) Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
2) Наполнить таблицу employee 70 строками.


### Таблица salary

3) Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
4) Наполнить таблицу salary 15 строками:

|id | monthly_salary |
|:--|:--------------:|
|1 | 1000
|2 | 1100
|3 | 1200
|4 | 1300
|5 | 1400
|6 | 1500
|7 | 1600
|8 | 1700
|9 | 1800
|10| 1900
|11| 2000
|12| 2100
|13| 2200
|14| 2300
|15| 2400
|16| 2500 


### Таблица employee_salary

5) Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
6) Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id


| id | employee_id | salary_id  |
| :-:| :---------: | :---------:|
|1  | 3    | 7          
|2  | 1    | 4
|3  | 5    |9
|4  | 40   | 13
|5  | 23   | 4
|6  | 11   | 2
|7  | 52   | 10
|8  | 15   | 13
|9  | 26   | 4
|10 | 16   | 1
|11 | 33   | 7
|...| ...  | ...



### Таблица roles

7) Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
8) Поменять тип столба role_name с int на varchar(30)
9) Наполнить таблицу roles 20 строками:

| id | role_name |
| :-:| :-------: |
|1     | Junior Python developer
|2     | Middle Python developer
|3     | Senior Python developer
|4     |Junior Java developer
|5     | Middle Java developer
|6     | Senior Java developer
|7     | Junior JavaScript developer
|8     | Middle JavaScript developer
|9     | Senior JavaScript developer
|10    | Junior Manual QA engineer
|11    | Middle Manual QA engineer
|12    | Senior Manual QA engineer
|13    | Project Manager
|14    | Designer
|15    | HR
|16    | CEO
|17    | Sales manager
|18    | Junior Automation QA engineer
|19    | Middle Automation QA engineer
|20    | Senior Automation QA engineer




### Таблица roles_employee

10) Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
11) Наполнить таблицу roles_employee 40 строками:

|id  | employee_id | role_id |
|:---:|:-----------:|:-------:|
|1 | 7 | 2 
|2 | 20 | 4
|3 |3  |9
|4 | 5 |13
|5 |23  |4
|6 |11 |2
|7 |10 |9
|8 |22 |13
|9 |21 |3
|10 |34 |4
|11 |6 |7
|... |... |...