-- 1.	посмотреть все доступные БД 
SHOW databases;
-- 2.	подключиться к БД "city" 
USE world;
-- 3.	получить все данные из таблицы city
SELECT * FROM city;
-- 4.	вывести только столбцы с названием стран и населением из таблицы city 
SELECT CountryCode, Population FROM city;
-- 5.	получить уникальные значения поля Language из таблицы countrylanguage 
SELECT distinct Language FROM countrylanguage;
-- 6.	вывести города, где население превышает 5 000 000 человек из таблицы city 
SELECT * FROM city WHERE Population > 5000000;
-- 7.	вывести информацию о конкретном городе - "Лондон" из таблицы city 
SELECT * FROM city WHERE Name = 'London';
-- 8.	узнать все официальные языки, где процент говорящих выше 80 % из таблицы countrylanguage 
SELECT * FROM countrylanguage WHERE Percentage > 80;
-- 9.узнать все города из Австралии или из России из таблицы city 
SELECT * FROM city WHERE CountryCode = 'RUS' OR CountryCode = 'AUS';
-- 10.	узнать все города, которые НЕ находятся в Китае из таблицы city 
SELECT * FROM city WHERE NOT CountryCode = 'CHN';
-- 11.	узнать данные, где язык = Английский или код страны НЕ “CAN” и процент говорящих НИ меньше 50 из таблицы countrylanguage 
SELECT * FROM countrylanguage WHERE Language = 'English' OR NOT CountryCode = 'CAN' AND Percentage >= 50;
-- 12.	получить данные только определенных языков: Русский и Английский из таблицы countrylanguage 
SELECT * FROM countrylanguage WHERE Language IN ('English', 'Russian');
-- 13.	получить все города, населения которых от 1 000 000 до 5 000 000 из таблицы city 
SELECT * FROM city WHERE Population BETWEEN 1000000 AND 5000000;
-- 14.	узнаем все страны с буквами "St" в названии
SELECT * FROM country WHERE Name Like '%St%';





