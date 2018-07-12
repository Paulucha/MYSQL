-- @title infoShare Academy - kurs SQL
-- @author Mateusz Marmołowski
# www.cta.ai
# www.ai-factory.pl
# www.professor-why.pl
# www.edu-sense.pl



-- 1. wprowadzenie
-- SQL = Structured Query Language
-- Relational databases




-- 2. setup
-- sudo docker run -it -e MYSQL_ROOT_PASSWORD=pass -p 3306 -d mysql
-- sudo docker ps
-- wprowadzenie InteliJ i Workbench

-- 3. dokumentacja MySQL
-- https://dev.mysql.com/doc/refman/5.7/en/

-- 4. rodzaje danych
-- https://dev.mysql.com/doc/refman/5.7/en/data-types.html

-- https://dev.mysql.com/doc/refman/5.7/en/integer-types.html
-- https://dev.mysql.com/doc/refman/5.7/en/fixed-point-types.html
-- https://dev.mysql.com/doc/refman/5.7/en/date-and-time-types.html
-- https://dev.mysql.com/doc/refman/5.7/en/char.html

-- 5. tworzenie nowej tabeli "User" (CREATE TABLE + DESCRIBE)


-- ZADANIE 1


-- 6. zmiana nazwy i rozszerzanie tabeli (RENAME TABLE oraz ALTER TABLE ADD/DROP/RENAME TO)

-- ZADANIE 2


-- 7. usuwanie tabeli (DROP TABLE)

-- 8. dodawanie nowych rekordów (INSERT)



-- ZADANIE 3

-- 9. wyświetlanie rekordów (SELECT)
-- 	- pokaż wszystkie lub wybrane kolumny
-- 	- ustawianie aliasow na kolumnach
-- 	- obliczenia na kolumnach
-- 	- użycie DISTINCT

# select [kolumny] from [tabela]

# wybieranie poszczegolnych kolumn i zmiana ich nazwy w raporcie

# kalkulacje w ramach kolumny

# usuwanie duplikatów


-- ZADANIE 4

-- 10. warunkowy SELECT:
-- 	- dodanie WHERE i operatory =, <, >, !=. <>, <= ,>=
-- 	- between + and
-- 	- in (...) not in (...)
-- 	- like, not like, _,  %
-- 	- operatory OR + AND

# select [kolumny] from [tabela] where [warunki]


-- ZADANIE 5


-- 11. kolejność i podzbiory SELECT:
-- 	- ORDER BY
-- 	- LIMIT i OFFSET

# select [kolumny] from [tabela] where [warunek] order by [kolumna] [kierunek=ASC/DESC] LIMIT [liczba] OFFSET [liczba]


-- ZADANIE 6


-- 11. grupowanie i agregacje w SELECT:
-- 	- agregaty sum, avg, count, count(*), max, min
-- 	- GROUP BY (użytkownicy z różnych miast)
-- 	- HAVING (pokazuj tylko te skąd pochodzi więcej niż 2 użytkowników)

# role = 1 - admnistrator
# role = 2 - uzytkownik

# select [kolumny] from [tabela] where [warunek] group by [kolumna]
#   order by [kolumna] [kierunek=ASC/DESC] LIMIT [liczba] OFFSET [liczba]



-- ZADANIE 7


-- 12. aktualizacja (UPDATE) - modyfikujemy dane poszczególnych użytkowników


# update [tabela] set [kolumny z wartosciami] where [warunek];


-- ZADANIE 8


-- 13. usuwanie (DELETE)



-- ZADANIE 9
	

-- 14. tworzymy drugą tabelę Posts (id, date, title, body) i wprowadzamy Foreign Key "user_id", np. FOREIGN KEY (PersonID) REFERENCES Persons(ID)


-- ZADANIE 10


-- 15. próba naruszenia klucza obcego (błędny klucz, usunięcie rekordu zależnego)

-- 16. INNER JOIN / JOIN - wspólny podzbiór rekordów + alternatywny zapis (bez JOIN)

# select [kolumny] from [tabela1] inner join [tabela2] on [warunek -> tabela1.pole=tabela2.pole]

# select [kolumny] from [tabela1], [tabela2] where [warunek -> tabela1.pole=tabela2.pole]


-- ZADANIE 11


-- 17. (LEFT, RIGHT) [OUTER] JOIN / LEFT JOIN - asymetryczne dane (indywidualny i wspólny podzbiór)

# select [kolumny] from [tabela1] left join [tabela2] on [warunek -> tabela1.pole=tabela2.pole]



-- ZADANIE 12


-- 18. posługiwanie się operatorem NULL i dobre praktyki (IS NULL / IS NOT NULL)

-- ZADANIE 13


-- 19. wyrażenia i obliczenia w ramach zapytań

-- ZADANIE 14


-- 20. kolejność przetwarzania  w zapytaniu SQL
--     1. FROM and JOINs
--     2. WHERE
--     3. GROUP BY
--     4. HAVING
--     5. SELECT
--     6. DISTINCT
--     7. ORDER BY
--     8. LIMIT / OFFSET


-- 21. PROJEKT - budowa struktury danych od początku





-- INTERAKTYWNY KURS SQL
-- https://sqlbolt.com
