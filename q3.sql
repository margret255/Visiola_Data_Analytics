-- 1. Find the professions that have more than 10 employees
SELECT profession, COUNT(*) AS total_employees
FROM employees
GROUP BY profession
HAVING total_employees > 10;


-- 2. Retrieve the countries where the total number of employees is greater than 50
SELECT country, COUNT(*) AS total_employees
FROM employees
GROUP BY country
HAVING total_employees > 50;


-- 3. Get the employment statuses where there are more than 10 people aged between 25 and 45
SELECT employment_status, COUNT(*) AS total_employees
FROM employees
WHERE age BETWEEN 25 AND 45
GROUP BY employment_status
HAVING total_employees > 10;


-- 4. Retrieve the professions where the sum of all salaries is greater than 5,000,000
SELECT profession, SUM(salary) AS total_salary
FROM employees
GROUP BY profession
HAVING total_salary > 5000000;


-- 5. Retrieve the professions where the sum of salaries for employees aged 30 and above is more than 4,000,000
SELECT profession, SUM(salary) AS total_salary
FROM employees
WHERE age >= 30
GROUP BY profession
HAVING total_salary > 4000000;


-- 6. Find the professions where the average salary of people between 30 and 50 years old is at least 300,000
SELECT profession, ROUND(AVG(salary),2) AS avg_salary
FROM employees
WHERE age BETWEEN 30 AND 50
GROUP BY profession
HAVING avg_salary >= 300000;


-- 7. Get the states where the maximum salary of unemployed people is above 200,000
SELECT state, MAX(salary) AS max_salary
FROM employees
WHERE employment_status = 'Unemployed'
GROUP BY state
HAVING max_salary > 200000;


-- 8. Retrieve the professions where the highest salary of people below 30 is at least 400,000
SELECT profession, MAX(salary) AS max_salary
FROM employees
WHERE age < 30
GROUP BY profession
HAVING max_salary >= 400000;


-- 9. Find the professions where the average salary is above 250,000, but only for employees older than 30. Order by average salary in descending order
SELECT profession, ROUND(AVG(salary),2) AS avg_salary
FROM employees
WHERE age > 30
GROUP BY profession
HAVING avg_salary > 250000
ORDER BY avg_salary DESC;


-- 10. Retrieve the countries where the sum of all salaries is greater than 8,000,000, but only for employees who are employed. Order by total salary in descending order
SELECT country, SUM(salary) AS total_salary
FROM employees
WHERE employment_status = 'Employed'
GROUP BY country
HAVING total_salary > 8000000
ORDER BY total_salary DESC;


-- 11. Retrieve the professions where the total number of employees is more than 10, but only for people earning between 100,000 and 500,000. Order by total employees in descending order
SELECT profession, COUNT(*) AS total_employees
FROM employees
WHERE salary BETWEEN 100000 AND 500000
GROUP BY profession
HAVING total_employees > 10
ORDER BY total_employees DESC;


-- 12. Retrieve the employment statuses where there are more than 15 employees aged between 25 and 50. Order by status name alphabetically
SELECT employment_status, COUNT(*) AS total_employees
FROM employees
WHERE age BETWEEN 25 AND 50
GROUP BY employment_status
HAVING total_employees > 15
ORDER BY employment_status ASC;


-- 13. Retrieve the professions where the sum of salaries for employees older than 30 is above 5,000,000. Order by total salary in descending order
SELECT profession, SUM(salary) AS total_salary
FROM employees
WHERE age > 30
GROUP BY profession
HAVING total_salary > 5000000
ORDER BY total_salary DESC;


-- 14. Retrieve the countries where the sum of all salaries is greater than 8,000,000, but only for employees who are employed. Order by total salary in descending order
SELECT country, SUM(salary) AS total_salary
FROM employees
WHERE employment_status = 'Employed'
GROUP BY country
HAVING total_salary > 8000000
ORDER BY total_salary DESC;
