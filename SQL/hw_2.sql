--=========TASKS=========--

-- 1. Вывести всех работников вместе с зарплатами, чьи зарплаты есть в базе.
select e.employee_name "Работник", s.monthly_salary "Зарплата"
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id; 

-- 2. Вывести всех работников, у которых ЗП меньше 2000.
select e.employee_name "Работник", s.monthly_salary "Зарплата"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id
where s.monthly_salary < 2000;

 -- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name  "Работник", s.monthly_salary "Зарплата" 
from employees e right join employee_salary es on e.id = es.employee_id 
right join salary s on es.salary_id = s.id
where e.employee_name is null;

 -- 4. Вывести все зарплатные позиции меньше 2000, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name  "Работник", s.monthly_salary "Зарплата" 
from employees e right join employee_salary es on e.id = es.employee_id 
right join salary s on es.salary_id = s.id
where e.employee_name is null and s.monthly_salary < 2000
order by 2;

 -- 5. Найти всех работников кому не начислена ЗП.
select e.employee_name "Работник", s.monthly_salary "Зарплата"
from salary s join employee_salary es on s.id = es.salary_id 
right join employees e on es.employee_id = e.id
where s.monthly_salary is null;

 -- 6. Вывести всех работников с названиями их должности.
select e.employee_name "Работник", r.role_title "Должность"
from employees e join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id;

 -- 7. Вывести имена и должность только Java разработчиков.
select e.employee_name "Работник", r.role_title "Должность"
from employees e join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%Java %';

 -- 8. Вывести имена и должность только Python разработчиков.
select e.employee_name "Работник", r.role_title "Должность"
from employees e join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%Python%';

 -- 9. Вывести имена и должность всех QA инженеров.
select e.employee_name "Работник", r.role_title "Должность"
from employees e join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%QA%';

 -- 10. Вывести имена и должность ручных QA инженеров.
select e.employee_name "Работник", r.role_title "Должность"
from employees e join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%Man%QA%';

 -- 11. Вывести имена и должность автоматизаторов QA
select e.employee_name "Работник", r.role_title "Должность"
from employees e join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%Auto%';

 -- 12. Вывести имена и зарплаты Junior специалистов
select e.employee_name "Работник", s.monthly_salary "Зарплата", r.role_title 
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like 'Junior%'
order by 2;

 -- 13. Вывести имена и зарплаты Middle специалистов
select e.employee_name "Работник", s.monthly_salary "Зарплата", r.role_title 
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like 'Middle%'
order by 2;

 -- 14. Вывести имена и зарплаты Senior специалистов
select e.employee_name "Работник", s.monthly_salary "Зарплата", r.role_title 
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like 'Senior%'
order by 2;

 -- 15. Вывести зарплаты Java разработчиков
select s.monthly_salary "Зарплата", r.role_title "Должность"
from salary s join roles_salary rs on s.id = rs.salary_id 
join roles r on rs.role_id = r.id
where r.role_title like '%Java dev%';

 -- 16. Вывести зарплаты Python разработчиков
select s.monthly_salary "Зарплата", r.role_title "Должность"
from salary s join roles_salary rs on s.id = rs.salary_id 
join roles r on rs.role_id = r.id
where r.role_title like '%Python dev%';

 -- 17. Вывести имена и зарплаты Junior Python разработчиков 
select e.employee_name "Работник", s.monthly_salary "Зарплата", r.role_title
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like 'Jun%Py%dev%';

 -- 18. Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name "Работник", s.monthly_salary "Зарплата", r.role_title
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like 'Mid%JavaScript%';

 -- 19. Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name "Работник", s.monthly_salary "Зарплата", r.role_title
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like 'Sen%Java dev%';

 -- 20. Вывести зарплаты Junior QA инженеров
select e.employee_name "Работник", s.monthly_salary "Зарплата", r.role_title
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like 'Jun%QA%';

 -- 21. Вывести среднюю зарплату всех Junior специалистов
select floor(avg(s.monthly_salary)) "Средняя Зарплата"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like 'Jun%';

 -- 22. Вывести сумму зарплат JS разработчиков
select sum(s.monthly_salary) "Сумма зарплат"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%JavaScr%';

 -- 23. Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary) "Минимальная ЗП"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%QA%';

 -- 24. Вывести максимальную ЗП QA инженеров
select max(s.monthly_salary) "Максимальная ЗП"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%QA%';

 -- 25. Вывести количество QA инженеров
select count(r.role_title) "Количество человек"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%QA%';

 -- 26. Вывести количество Middle специалистов.
select count(r.role_title) "Количество человек"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%Mid%';

 -- 27. Вывести количество разработчиков
select count(r.role_title) "Количество человек"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%dev%';

 -- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(s.monthly_salary) "Сумма зарплат"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where r.role_title like '%dev%';

 -- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name "Имя работника", r.role_title "Должность", s.monthly_salary "Зарплата"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
order by 3;

 -- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name "Имя работника", r.role_title "Должность", s.monthly_salary "Зарплата"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where s.monthly_salary between 1700 and 2300
order by 3;

 -- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name "Имя работника", r.role_title "Должность", s.monthly_salary "Зарплата"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where s.monthly_salary < 2300
order by 3;

 -- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name "Имя работника", r.role_title "Должность", s.monthly_salary "Зарплата"
from employees e join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where s.monthly_salary in (1100, 1500, 2000)
order by 3;