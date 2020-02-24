USE employees;
#

# CREATE DATABASE IF NOT EXISTS join_test_db;
#
# CREATE TABLE roles (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        email VARCHAR(100) NOT NULL,
#                        role_id INT UNSIGNED DEFAULT NULL,
#                        PRIMARY KEY (id),
#                        FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
# ('bob', 'bob@example.com', 1),
# ('joe', 'joe@example.com', 2),
# ('sally', 'sally@example.com', 3),
# ('adam', 'adam@example.com', 3),
# ('jane', 'jane@example.com', null),
# ('mike', 'mike@example.com', null),
# ('dayna', 'dayna@example.com', null),
# ('john', 'jsteinbeck@example.com', 2),
# ('mary', 'mshelly@example.com', 2),
# ('rick', 'rriordan@example.com', 2);
#
# # join
# #only users with a role are showing up
# SELECT users.name as user_name, roles.name as role_name
# FROM users
#          JOIN roles ON users.role_id = roles.id;
#
# #left join
# #all users, even with null roles, are showing.
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
#          LEFT JOIN roles ON users.role_id = roles.id;
#
# #right join
# #all roles, even those without users filling the roles. otherwise, only users with roles
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
#          RIGHT JOIN roles ON users.role_id = roles.id;

#Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use count and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use group by in the query.
# SELECT r.name as role, COUNT(*) AS role_count FROM roles

# DESCRIBE dept_manager;

#EMPLOYEES DATABASE---------------------------------------------
# 2. Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
USE employees;
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE dm.to_date > now() ORDER BY d.dept_name;



# 3. Find the name of all departments currently managed by women.
describe dept_manager;
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees as e
              ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW() AND e.gender = 'F' ORDER BY d.dept_name;


# 4. Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'Title', COUNT(*) AS 'Count'
FROM departments AS d
        JOIN dept_emp AS de ON de.dept_no = d.dept_no
        JOIN titles AS t ON t.emp_no = de.emp_no
WHERE de.to_date > NOW() AND t.to_date > NOW() AND d.dept_name = 'Customer Service'
GROUP BY t.title;


# 5. Find the current salary of all current managers.
# Department Name    | Name              | Salary
# -------------------+-------------------+-------
# Customer Service   | Yuchang Weedman   |  58745
# Development        | Leon DasSarma     |  74510
# Finance            | Isamu Legleitner  |  83457
# Human Resources    | Karsten Sigstam   |  65400
# Marketing          | Vishwani Minakawa | 106491
# Production         | Oscar Ghazalie    |  56654
# Quality Management | Dung Pesch        |  72876
# Research           | Hilary Kambil     |  79393
# Sales              | Hauke Zhang       | 101987




#BONUS
#Find the names of all current employees, their department name, and their current manager's name.
#    240,124 Rows
# Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman
#
#      .....


