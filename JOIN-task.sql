-- 1
SELECT e.emp_no, d.dept_no
FROM employees e
INNER JOIN dept_emp d
ON e.emp_no = d.emp_no;
-- 2
SELECT e.emp_no, d.dept_no
FROM employees e
LEFT JOIN dept_manager d
ON e.emp_no = d.emp_no
WHERE d.dept_no IS NOT NULL;
-- 3
SELECT d.dept_name, de.emp_no
FROM departments d 
RIGHT JOIN dept_emp de
ON d.dept_no = de.dept_no;
-- 4
SELECT e.emp_no, AVG(s.salary) AS avg_salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no
GROUP BY e.emp_no;








