USE employees;

# SELECT column_a, column_b, column_c
# FROM table_a
# WHERE column_a IN (
#     SELECT column_a
#     FROM table_b
#     WHERE column_b = true
# );

# 1. Find all the employees with the same hire date as employee 101010 using a subquery.
#69 Rows
SELECT CONCAT(first_name, ' ', last_name) AS employee_name, emp_no AS employee_number
FROM employees
WHERE hire_date IN (
        SELECT hire_date
        FROM employees
        WHERE emp_no = '101010'
    );


# 2.
