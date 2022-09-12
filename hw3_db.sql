USE employeedb;
-- 1.	отсортируй данные по зарплате 
SELECT * FROM EMPLOYEE ORDER BY salary;
-- 2.	отсортируй данные по зарплате от большего к меньшему
SELECT * FROM EMPLOYEE ORDER BY salary DESC;
-- 3.	выведи первые 3 строчки таблицы
SELECT * FROM EMPLOYEE LIMIT 3;
-- 4.	выведи последние 3 строчки таблицы
SELECT * FROM EMPLOYEE ORDER BY empId DESC LIMIT 3;
-- 5.	выведи данные, где в названии отделов встречается буква “t”
SELECT * FROM EMPLOYEE WHERE dept LIKE "%t%";
-- 6.	подсчитай длину названия отдела “Management”
SELECT dept, length(dept) FROM EMPLOYEE WHERE dept = 'Management';
-- 7.	подсчитай сумму всех зарплат сотрудников
SELECT SUM(salary) FROM EMPLOYEE;
-- 8.	узнай среднюю зарплату сотрудников
SELECT AVG(salary) FROM EMPLOYEE;
-- 9.	округли среднюю зарплату сотрудников
SELECT ROUND(AVG(salary)) FROM EMPLOYEE;
-- 10.	узнай минимальную и максимальную зарплату
SELECT MIN(salary), MAX(salary) FROM EMPLOYEE;
-- 11.	подсчитай количество сотрудников
SELECT COUNT(*) FROM EMPLOYEE;
-- 12.	выведи количество сотрудников в каждом отделе
SELECT dept, COUNT(*) FROM EMPLOYEE GROUP BY dept;
-- 13.	выведи отделы, где минимальная зарплата больше 40 000
SELECT dept, MIN(salary) FROM EMPLOYEE GROUP BY dept HAVING MIN(salary) > 40000;






/* 
-- create db
CREATE DATABASE employeedb;
-- use db 
USE employeedb;
-- create table
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary INT NOT NULL
);

-- insert table
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales', 30000);
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting', 50000);
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales', 70000);
INSERT INTO EMPLOYEE VALUES (0004, 'Ivan', 'IT', 100000);
INSERT INTO EMPLOYEE VALUES (0005, 'Anna', 'IT', 40000);
INSERT INTO EMPLOYEE VALUES (0006, 'Mark', 'Management', 85000);
INSERT INTO EMPLOYEE VALUES (0007, 'Johny', 'Content', 66000);
INSERT INTO EMPLOYEE VALUES (0008, 'Igor', 'Sales', 90000);

-- fetch 
SELECT * FROM EMPLOYEE;

