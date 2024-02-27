-- 1
SELECT d.emp_no, e.first_name, e.last_name, d.dept_no, e.hire_date
FROM dept_manager d
JOIN employees e
ON d.emp_no = e.emp_no;
-- 2
SELECT last_name, COUNT(last_name) AS quantity_of_employees
FROM employees
WHERE last_name LIKE 'Markovitch'
GROUP BY last_name;
-- 3
SELECT e.first_name, e.last_name, e.hire_date, t.title
FROM employees e
LEFT JOIN titles t
ON e.emp_no = t.emp_no
WHERE e.first_name LIKE 'M%' AND e.last_name LIKE '%H';
-- 4
CREATE TABLE salaries_copy 
SELECT * FROM salaries;
SELECT e.first_name, e.last_name, sc.emp_no, MAX(sc.salary), MIN(sc.salary)
FROM employees e
JOIN salaries_copy sc
ON e.emp_no = sc.emp_no
GROUP BY sc.emp_no;








