-- Задание 6. Какие компании совершали перелеты на Boeing
SELECT DISTINCT name FROM Company 
JOIN Trip ON Company.id = Trip.company  
WHERE plane = 'Boeing';

-- Задание 14. В какие города летал Bruce Willis?
SELECT DISTINCT town_to FROM Trip
JOIN Pass_in_trip ON Trip.id = Pass_in_trip.trip 
JOIN Passenger ON Pass_in_trip.passenger = Passenger.id
WHERE name = 'Bruce Willis'

-- Задание 29. Выведите имена пассажиров,  улетевших в Москву (Moscow) на самолете TU-134
SELECT DISTINCT name FROM Passenger
JOIN Pass_in_trip ON Passenger.id = Pass_in_trip.passenger 
JOIN Trip ON Pass_in_trip.trip = Trip.id 
WHERE town_to = 'Moscow' AND plane = 'TU-134'


-- Информация о сотруднике из таблицы employee, который зарабатывает больше всех
SELECT * FROM employee WHERE salary = (SELECT max(salary) from employee);
-- Зарплаты сотрудников из Москвы
SELECT salary FROM employee WHERE empId IN (SELECT pdId FROM personaldata WHERE city = "Moscow");
-- INNER JOIN
SELECT employee.name, personaldata.phone, employee.salary FROM employee 
JOIN personaldata ON employee.empId = personaldata.pdId;
-- OUTER JOIN
SELECT employee.name, personaldata.phone, employee.salary FROM employee 
LEFT JOIN personaldata ON employee.empId = personaldata.pdId;

SELECT employee.name, personaldata.phone, employee.salary FROM employee 
RIGHT JOIN personaldata ON employee.empId = personaldata.pdId;

