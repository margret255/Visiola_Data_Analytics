--creating database
CREATE DATABASE company_db;
USE company_db;
--creating table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    state VARCHAR(50),
    profession VARCHAR(50),
    employment_status VARCHAR(50),
    salary DECIMAL(10,2),
    age INT
);
--Inserting  data
INSERT INTO employees (name, country, state, profession, employment_status, salary, age) 
VALUES
    ('Alice', 'Nigeria', 'Lagos', 'Engineer', 'Employed', 250000, 35),
    ('Bob', 'Ghana', 'Accra', 'Teacher', 'Self-Employed', 120000, 40),
    ('Charlie', 'Kenya', 'Nairobi', 'Doctor', 'Employed', 400000, 50),
    ('David', 'Uganda', 'Kampala', 'Developer', 'Freelancer', 180000, 29),
    ('Eve', 'Nigeria', 'Abuja', 'Engineer', 'Self-Employed', 300000, 45);
--employees by country
SELECT country, COUNT(*) AS total_employees
FROM employees
GROUP BY country;
--average salary by profession
SELECT profession, AVG(salary) AS average_salary
FROM employees
GROUP BY profession;
--highest salary by employment status
SELECT employment_status, MAX(salary) AS highest_salary
FROM employees
GROUP BY employment_status;
--count of self employeed by country
SELECT country, COUNT(*) AS self_employed_count
FROM employees
WHERE employment_status = 'Self-Employed'
GROUP BY country;
--Maximum Salary for Professions in Nigeria and Ghana
SELECT profession, MAX(salary) AS max_salary
FROM employees
WHERE country IN ('Nigeria', 'Ghana')
GROUP BY profession;
--Total Salary by State for Kenya and Uganda
SELECT state, SUM(salary) AS total_salary
FROM employees
WHERE country IN ('Kenya', 'Uganda')
GROUP BY state
ORDER BY total_salary DESC;
--Minimum Salary for Professions Where Age > 30

SELECT profession, MIN(salary) AS min_salary
FROM employees
WHERE age > 30
GROUP BY profession
ORDER BY min_salary ASC;

--Count of Employees by Employment Status in Nigeria and Ghana
SELECT employment_status, COUNT(*) AS employee_count
FROM employees
WHERE country IN ('Nigeria', 'Ghana')
GROUP BY employment_status
ORDER BY employee_count DESC;

--Average Salary by State for Salaries Between 50,000 and 300,000
SELECT state, AVG(salary) AS avg_salary
FROM employees
WHERE salary BETWEEN 50000 AND 300000
GROUP BY state;

--Highest Salary by Profession for Nigeria, Kenya, and Uganda (Salary > 100,000)
SELECT profession, MAX(salary) AS highest_salary
FROM employees
WHERE country IN ('Nigeria', 'Kenya', 'Uganda') AND salary > 100000
GROUP BY profession;

--iltering Employees Based on Multiple Conditions
SELECT *
FROM employees
WHERE salary BETWEEN 100000 AND 500000
AND employment_status IN ('Employed', 'Self-Employed')
AND country IN ('Uganda', 'Ghana')
ORDER BY salary DESC;


SELECT *
FROM employees
WHERE country = 'Nigeria'
AND profession IN ('Teacher', 'Engineer')
AND age BETWEEN 25 AND 50
AND salary > 200000
ORDER BY salary DESC;
--Average Salary by Country for Employees Older than 30
SELECT country, AVG(salary) AS avg_salary
FROM employees
WHERE age > 30
GROUP BY country
ORDER BY avg_salary DESC;

--Highest Salary by Employment Status for Employees Aged 30-60
SELECT employment_status, MAX(salary) AS highest_salary
FROM employees
WHERE age BETWEEN 30 AND 60
GROUP BY employment_status
ORDER BY highest_salary DESC;
--Highest Salary by Profession
SELECT profession, MAX(salary) AS highest_salary
FROM employees
GROUP BY profession
ORDER BY highest_salary DESC;
