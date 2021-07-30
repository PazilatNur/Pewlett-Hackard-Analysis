SELECT first_name, last_name, birth_date
from employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY birth_date asc;

SELECT first_name, last_name
from employees
WHERE birth_date > '1952-01-01' and birth_date < '1953-01-01';

SELECT first_name, last_name
INTO retirement_info
from employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


SELECT * FROM retirement_info;

DROP TABLE retirement_info;

SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');



SELECT r.emp_no, r.first_name, r.last_name, d.dept_no, d.to_date
from retirement_info as r 
LEFT JOIN dept_emp as d
ON r.emp_no=d.emp_no;

SELECT count(cu.emp_no), dp.dept_no
from current_emp as cu
LEFT JOIN dept_emp as dp
ON cu.emp_no=dp.emp_no
GROUP BY (dp.dept_no)
ORDER BY dp.dept_no;
