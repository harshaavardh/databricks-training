select * from Employee  ;
select name ,salary from Employee;
select * from Employee where age >30 ;
select d.name 
from Employee e  join Department d on e.department_id = d.department_id;
select e.name
from Employee e join Department d on e.department_id = d.department_id 
where d.name ='IT';

select name from Employee
where name like 'J%';
select name from Employee
where name like '%e';
select name from Employee
where name like '%a%';
select name from Employee
where length(name)=9;
select name from Employee
where name like '_o%';

select * from Employee where year(hire_date)= 2020 ;
select * from Employee where month(hire_date)= 1 ;
select * from Employee where year(hire_date)<2019 ;
select * from Employee where hire_date >='2021-03-01' ;

select sum(salary) as total_salary from Employee ;
select avg(salary) as average_salary from Employee ;
select min(salary) as minimum_salary from Employee ;
select max(salary) as maximum_salary from Employee ;
select d.name ,avg(salary) as average_salary
from Employee e join Department d on e.department_id = d.department_id
group by d.name;


select d.name ,sum(salary) as total_salary
from Employee e join Department d on e.department_id = d.department_id
group by d.name;
select d.name ,avg(age) as average_age
from Employee e join Department d on e.department_id = d.department_id
group by d.name;
select year(hire_date) , count(*) 
from Employee group by year(hire_date);
select d.name, max(salary) as highest_salary
from Employee e join Department d on e.department_id = d.department_id
group by d.name ;
select d.name, avg(salary) as avg_salary
from Employee e join Department d on e.department_id = d.department_id
group by d.name order by avg_salary desc limit 1 ;