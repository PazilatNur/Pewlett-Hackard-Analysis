-- PH-EmployeeDB.
CREATE TABLE departments(
	dept_no varchar(4) not Null,
	dept_name varchar(40) NOT NUll,
	PRIMARY KEY (dept_no),
	UNIQUE(dept_name)
);

CREATE TABLE employees(
	emp_no int NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL,
	gender varchar NOT NULL,
	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager(
	dept_no varchar(4) NOT NULL,
	emp_no int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp(
	dept_no varchar NOT NULL,
	emp_no int NOT NUll,
	from_date date NOT NULL,
	to_date date NOT NULL,
FOREIGN KEY(emp_no) REFERENCES salaries (emp_no),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE titles(
	emp_no int NOT NULL,
	title varchar NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from departments;

DROP TABLE employees CASCADE;

CREATE TABLE employees(
	emp_no int NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	gender varchar NOT NULL,
	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

DROP TABLE dept_emp CASCADE;

CREATE TABLE dept_emp(
	dept_no varchar NOT NULL,
	emp_no int NOT NUll,
	from_date date NOT NULL,
	to_date date NOT NULL,
FOREIGN KEY(emp_no) REFERENCES salaries (emp_no),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_manager;
DROP TABLE dept_emp CASCADE;