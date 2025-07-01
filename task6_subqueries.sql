-- Task 6: Subqueries and Nested Queries

-- 1. SELECT me Subquery (Scalar Subquery)
SELECT name,
       (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

-- 2. WHERE me Subquery ()
SELECT name, department_id
FROM employees
WHERE department_id IN (SELECT id FROM departments WHERE location = 'Delhi');

-- 3. FROM me Subquery
SELECT dept_name, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg
JOIN departments ON dept_avg.department_id = departments.id;

-- 4. Correlated Subquery
SELECT e1.name, e1.salary
FROM employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e1.department_id
);

-- 5. EXISTS Subquery
SELECT name
FROM employees e
WHERE EXISTS (
    SELECT 1 FROM projects p WHERE p.employee_id = e.id
);
