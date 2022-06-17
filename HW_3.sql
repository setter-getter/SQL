--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select em.employee_name, s.monthly_salary from employees em
join employee_salary es on em.id = es.employee_id
join salary s on s.id = es.salary_id;


-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select em.employee_name from employees em
join employee_salary es on em.id = es.employee_id
join salary s on s.id = es.salary_id
where s.monthly_salary < 2000;


-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.monthly_salary from salary s
join employee_salary es on s.id = es.salary_id
where es.employee_id not in (select id from employees);


--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.monthly_salary from salary s
join employee_salary es on s.id = es.salary_id
where es.employee_id not in (select id from employees)
and s.monthly_salary < 2000;


-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name from employees
where id not in (select employee_id from employee_salary);


-- 6. ������� ���� ���������� � ���������� �� ���������.
select em.employee_name, r.role_name from employees em
join roles_employee re on re.employee_id  = em.id
join roles r on r.id = re.role_id;


-- 7. ������� ����� � ��������� ������ Java �������������.
select em.employee_name, r.role_name from employees em
join roles_employee re on re.employee_id  = em.id
join roles r on r.id = re.role_id
where r.role_name like '%Java%' and r.role_name not like '%JavaScript%';


-- 8. ������� ����� � ��������� ������ Python �������������.
select em.employee_name, r.role_name from employees em
join roles_employee re on re.employee_id  = em.id
join roles r on r.id = re.role_id
where r.role_name like '%Python%';


 -- 9. ������� ����� � ��������� ���� QA ���������.
select em.employee_name, r.role_name from employees em
join roles_employee re on re.employee_id  = em.id
join roles r on r.id = re.role_id
where r.role_name like '%QA%';


--10. ������� ����� � ��������� ������ QA ���������.
select em.employee_name, r.role_name from employees em
join roles_employee re on re.employee_id  = em.id
join roles r on r.id = re.role_id
where r.role_name like '%Manual QA%';


-- 11. ������� ����� � ��������� ��������������� QA
select em.employee_name, r.role_name from employees em
join roles_employee re on re.employee_id  = em.id
join roles r on r.id = re.role_id
where r.role_name like '%Automation QA%';


--12. ������� ����� � �������� Junior ������������
select em.employee_name, s.monthly_salary from employees em
join employee_salary es on es.employee_id = em.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like 'Junior%';


--13. ������� ����� � �������� Middle ������������
select em.employee_name, s.monthly_salary from employees em
join employee_salary es on es.employee_id  = em.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like 'Middle%';


-- 14. ������� ����� � �������� Senior ������������
select em.employee_name, s.monthly_salary from employees em
join employee_salary es on es.employee_id  = em.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like 'Senior%';


-- 15. ������� �������� Java �������������
select s.monthly_salary from salary s
join employee_salary es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Java%' and r.role_name not like '%JavaScript%';


--16. ������� �������� Python �������������
select s.monthly_salary from salary s
join employee_salary es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Python%';


-- 17. ������� ����� � �������� Junior Python �������������
select e.employee_name, s.monthly_salary from salary s
join employee_salary es on es.salary_id  = s.id
join employees e on e.id = es.employee_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Junior Python%';


-- 18. ������� ����� � �������� Middle JS �������������
select e.employee_name, s.monthly_salary from salary s
join employee_salary es on es.salary_id  = s.id
join employees e on e.id = es.employee_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Middle JavaScript%';


 --19. ������� ����� � �������� Senior Java �������������
select e.employee_name, s.monthly_salary from salary s
join employee_salary es on es.salary_id  = s.id
join employees e on e.id = es.employee_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Senior Java%' and r.role_name not like '%Senior JavaScript%';


--20. ������� �������� Junior QA ���������
select s.monthly_salary from salary s
join employee_salary es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Junior%QA%';


--21. ������� ������� �������� ���� Junior ������������
select AVG(s.monthly_salary) from salary s
join employee_salary es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Junior%';


-- 22. ������� ����� ������� JS �������������
select SUM(s.monthly_salary) from salary s
join employee_salary es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%JavaScript%';


--23. ������� ����������� �� QA ���������
select MIN(s.monthly_salary) from salary s
join employee_salary es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%QA%';


-- 24. ������� ������������ �� QA ���������
select MAX(s.monthly_salary) from salary s
join employee_salary es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%QA%';


--25. ������� ���������� QA ���������
select COUNT(role_name) from roles r
join roles_employee re on r.id = re.role_id 
where r.role_name like '%QA%';


-- 26. ������� ���������� Middle ������������.
select COUNT(role_name) from roles r
join roles_employee re on r.id = re.role_id 
where r.role_name like 'Middle%';


--27. ������� ���������� �������������
select COUNT(role_name) from roles r
join roles_employee re on r.id = re.role_id 
where r.role_name like '%developer';


--28. ������� ���� (�����) �������� �������������.
select SUM(s.monthly_salary) from salary s
join employee_salary es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%developer';


-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select e.employee_name, r.role_name, s.monthly_salary from employees e
join roles_employee re  on e.id = re.employee_id 
join roles r  on r.id = re.role_id 
left join employee_salary es on es.employee_id = re.employee_id 
left join salary s on s.id = es.salary_id
order by s.monthly_salary ;


--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select e.employee_name, r.role_name, s.monthly_salary from employees e
join roles_employee re  on e.id = re.employee_id 
join roles r  on r.id = re.role_id 
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary 


-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select e.employee_name, r.role_name, s.monthly_salary from employees e
join roles_employee re  on e.id = re.employee_id 
join roles r  on r.id = re.role_id 
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where s.monthly_salary < 2300
order by s.monthly_salary 


-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary from employees e
join roles_employee re  on e.id = re.employee_id 
join roles r  on r.id = re.role_id 
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary

