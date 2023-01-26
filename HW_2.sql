select * from employee_salary;
select * from employees;
select * from roles;
select * from roles_employee;
select * from salary;

select employee_name, monthly_salary from salary join employee_salary 
on salary.id=employee_salary.salary_id 
join employees
on employee_salary.employee_id=employees.id;

select employee_name, monthly_salary from salary join employee_salary 
on salary.id=employee_salary.salary_id 
join employees
on employee_salary.employee_id=employees.id
where monthly_salary <2000;

select employee_name, monthly_salary from salary join employee_salary 
on salary.id=employee_salary.salary_id 
full join employees
on employee_salary.employee_id=employees.id
where employee_name is null;

select employee_name, monthly_salary from salary join employee_salary 
on salary.id=employee_salary.salary_id 
full join employees
on employee_salary.employee_id=employees.id
where employee_name is null and monthly_salary < 2000;

select employee_name, monthly_salary from salary join employee_salary 
on salary.id=employee_salary.salary_id 
full join employees
on employee_salary.employee_id=employees.id
where monthly_salary is null;

select employee_name, role_name from roles_employee join employees 
on roles_employee.employee_id=employees.id 
join roles
on roles_employee.role_id=roles.id;

select employee_name, role_name from roles_employee join employees 
on roles_employee.employee_id=employees.id 
join roles
on roles_employee.role_id=roles.id
where role_name like '%Java developer';

select employee_name, role_name from roles_employee join employees 
on roles_employee.employee_id=employees.id 
join roles
on roles_employee.role_id=roles.id
where role_name like '%Python developer';

select employee_name, role_name from roles_employee join employees 
on roles_employee.employee_id=employees.id 
join roles
on roles_employee.role_id=roles.id
where role_name like '%QA engineer';

select employee_name, role_name from roles_employee join employees 
on roles_employee.employee_id=employees.id 
join roles
on roles_employee.role_id=roles.id
where role_name like '%Manual QA engineer';

select employee_name, monthly_salary, role_name from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id
where role_name like 'Junior%';

select employee_name, monthly_salary, role_name from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id 
where role_name like 'Middle%';

select employee_name, monthly_salary, role_name from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id 
where role_name like 'Senior%';

select monthly_salary, role_name from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '%Java developer';

select monthly_salary, role_name from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '%Python developer';

select employee_name, monthly_salary, role_name from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id 
where role_name = 'Junior Python developer';

select employee_name, monthly_salary, role_name from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id 
where role_name = 'Middle JavaScript developer';

select employee_name, monthly_salary, role_name from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id 
where role_name = 'Senior Java developer';

select monthly_salary, role_name from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like 'Junior % QA engineer';

select avg(monthly_salary) from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like 'Junior %';

select sum(monthly_salary) from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '% JavaScript developer';

select min(monthly_salary) from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '% QA engineer';


select max(monthly_salary) from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '% QA engineer';


select count(role_name) from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '% QA engineer';


select count(role_name) from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like 'Middle%';

select count(role_name) from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '% developer';



select sum(monthly_salary) from employee_salary join salary 
on employee_salary.salary_id=salary.id 
join roles_employee on roles_employee.employee_id=employee_salary.employee_id 
join roles on roles.id=roles_employee.role_id;

select employee_name, role_name, monthly_salary from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id 
order by employee_name;


select employee_name, role_name, monthly_salary from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id 
where monthly_salary between 1700 and 2300
order by employee_name;

select employee_name, role_name, monthly_salary from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id 
where monthly_salary<2300
order by employee_name;

select employee_name, role_name, monthly_salary from employees join employee_salary 
on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on roles.id=roles_employee.role_id 
where monthly_salary in (1100, 1500, 2000)
order by employee_name;








