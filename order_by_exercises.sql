USE employees;
-- WHERE EXERCISE
#Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
#Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
#Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';
--
-- ORDER BY EXERCISE
#Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
#Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
#Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;
#Now reverse the sort order for both queries.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;


-- WHERE EXERCISE
#Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%'; #this means starts with an e v %e% which would mean has an e and %e would mean ends with e
#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE (last_name LIKE 'e%' OR last_name LIKE '%e');
#Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%e';
--
-- ORDER BY EXERCISE
#Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;
#Now reverse the sort order for both queries.
SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;



-- WHERE EXERCISE
#Find all employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date LIKE '199%';
#Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date LIKE '%12-25';
#Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%';
--
-- ORDER BY EXERCISE
SELECT * FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%' ORDER BY birth_date ASC, hire_date DESC;


-- WHERE EXERCISE
#Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees where last_name LIKE '%q%';
#Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees where last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';


