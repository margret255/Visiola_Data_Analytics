-- Query 1: Salary Insights
-- Get the average salary of employees in each profession where avg salary is between 150,000 and 300,000.
-- Order by avg salary descending.

SELECT profession, ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY profession
HAVING avg_salary BETWEEN 150000 AND 300000
ORDER BY avg_salary DESC;


-- Query 2: Salary Levels Across Regions
-- Find countries where total salary is NOT between 5,000,000 and 12,000,000.
-- Order by total salary ascending.

SELECT country, SUM(salary) AS total_salary
FROM employees
GROUP BY country
HAVING total_salary NOT BETWEEN 5000000 AND 12000000
ORDER BY total_salary ASC;


-- Query 3: Industry-Wide Salary Insights
-- Get the average salary of employees in each profession where avg salary is between 120,000 and 400,000.
-- Order by avg salary descending.

SELECT profession, ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY profession
HAVING avg_salary BETWEEN 120000 AND 400000
ORDER BY avg_salary DESC;


-- Query 4: Industry-Wide Workforce Comparison
-- Find professions where the average age of employees is above 42.
-- Order by average age descending.

SELECT profession, ROUND(AVG(age),2) AS avg_age
FROM employees
GROUP BY profession
HAVING avg_age > 42
ORDER BY avg_age DESC;
