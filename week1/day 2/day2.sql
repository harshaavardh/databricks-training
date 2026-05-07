-- 26
select department_id, count(*) as employee_count
from employee
group by department_id
having count(*) > 2;

-- 27
select department_id, avg(salary) as avg_salary
from employee
group by department_id
having avg(salary) > 55000;

-- 28
select year(hire_date) as hire_year, count(*) as employee_count
from employee
group by year(hire_date)
having count(*) > 1;

-- 29
select department_id, sum(salary) as total_salary
from employee
group by department_id
having sum(salary) < 100000;

-- 30
select department_id, max(salary) as max_salary
from employee
group by department_id
having max(salary) > 75000;

-- 31
select * from employee
order by salary;

-- 32
select * from employee
order by age desc;

-- 33
select * from employee
order by hire_date;

-- 34
select * from employee
order by department_id, salary;

-- 35
select department_id, sum(salary) as total_salary
from employee
group by department_id
order by total_salary;

-- 36
select e.name as employee_name, d.name as department_name
from employee e
join department d
on e.department_id = d.department_id;

-- 37
select p.name as project_name, d.name as department_name
from project p
join department d
on p.department_id = d.department_id;

-- 38
select e.name as employee_name, p.name as project_name
from employee e
join project p
on e.department_id = p.department_id;

-- 39
select e.name as employee_name, d.name as department_name
from employee e
left join department d
on e.department_id = d.department_id;

-- 40
select d.name as department_name, e.name as employee_name
from department d
left join employee e
on d.department_id = e.department_id;

-- 41
select e.name
from employee e
left join project p
on e.department_id = p.department_id
where p.project_id is null;

-- 42
select e.name, count(p.project_id) as project_count
from employee e
join project p
on e.department_id = p.department_id
group by e.emp_id, e.name;

-- 43
select d.name
from department d
left join employee e
on d.department_id = e.department_id
where e.emp_id is null;

-- 44
select name
from employee
where department_id = (
 select department_id
 from employee
 where name = 'John Doe'
);

-- 45
select d.name
from department d
join employee e
on d.department_id = e.department_id
group by d.department_id, d.name
order by avg(e.salary) desc
limit 1;

-- 46
select *
from employee
where salary = (
 select max(salary)
 from employee
);

-- 47
select *
from employee
where salary > (
 select avg(salary)
 from employee
);

-- 48
select max(salary) as second_highest_salary
from employee
where salary < (
 select max(salary)
 from employee
);

-- 49
select department_id, count(*) as employee_count
from employee
group by department_id
order by employee_count desc
limit 1;

-- 50
select *
from employee e
where salary > (
 select avg(salary)
 from employee
 where department_id = e.department_id
);

-- 51
select distinct salary
from employee e1
where 3 = (
 select count(distinct salary)
 from employee e2
 where e2.salary >= e1.salary
);

-- 52
select *
from employee
where age > all (
 select age
 from employee
 where department_id = 2
);

-- 53
select department_id
from employee
group by department_id
having avg(salary) > 55000;

-- 54
select *
from employee
where department_id in (
 select department_id
 from project
 group by department_id
 having count(project_id) >= 2
);

-- 55
select *
from employee
where hire_date = (
 select hire_date
 from employee
 where name = 'Jane Smith'
);

-- 56
select sum(salary) as total_salary
from employee
where year(hire_date) = 2020;

-- 57
select department_id, avg(salary) as avg_salary
from employee
group by department_id
order by avg_salary desc;

-- 58
select department_id, count(*) as employee_count, avg(salary) as avg_salary
from employee
group by department_id
having count(*) > 1
and avg(salary) > 55000;

-- 59
select *
from employee
where hire_date >= date_sub(curdate(), interval 2 year)
order by hire_date;

-- 60
select department_id,
count(*) as total_employees,
avg(salary) as average_salary
from employee
group by department_id
having count(*) > 2;

-- 61
select name, salary
from employee e
where salary > (
 select avg(salary)
 from employee
 where department_id = e.department_id
);

-- 62
select name
from employee
where hire_date = (
 select min(hire_date)
 from employee
);

-- 63
select d.name as department_name,
count(p.project_id) as total_projects
from department d
left join project p
on d.department_id = p.department_id
group by d.department_id, d.name
order by total_projects desc;

-- 64
select e1.department_id, e1.name, e1.salary
from employee e1
where salary = (
 select max(salary)
 from employee e2
 where e1.department_id = e2.department_id
);

-- 65
select name, salary
from employee e
where age > (
 select avg(age)
 from employee
 where department_id = e.department_id
);