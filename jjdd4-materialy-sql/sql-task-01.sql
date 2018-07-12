-- ZADANIE 1 - utwórz tablicę Products z kolumnami (id, name, manufacturer, price)
-- ZADANIE 2 - do Products dodaj stawkę VAT oraz liczbę sztuk w magazynie (vat, stock)

CREATE DATABASE myFirstDataBase;

USE myFirstDataBase;


CREATE TABLE Products (
  id           INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name         VARCHAR(255),
  manufacturer VARCHAR(255),
  price        DECIMAL(7, 2)
);

DESCRIBE Products;

DROP TABLE Products;

RENAME TABLE
    Products TO Product;

ALTER TABLE Products
  ADD COLUMN vat TINYINT;

ALTER TABLE Products
  ADD COLUMN stock SMALLINT UNSIGNED;


-- 	ZADANIE 3 - dodaj poniższe pozycje do tabeli Products

-- 	NAME            MANUFACTURER    NETPRICE  VAT    STOCK
-- 	------------    ------------  ----------  ---  -------
-- 	monitor 24''      Dell            999.00   8,  20@localhost
-- 	dysk 1TB			    Seagate         350.00  23, 200
-- 	pamięć ram 16GB 	Kingston        140.90   8, 190
-- 	klawiatura PL 	  Dell             90.00  23,  20
-- 	klawiatura EN	    Microsoft        87.00  23,  30
-- 	klawiatura DE 	  Apple            87.00  23,   0
-- 	Mysz bezprzew.		Microsoft        48.35   8, 200
-- 	płyta główna ATX 	Gigabyte        702.00  23,   3
-- 	Nvidia GTX780     Gigabyte        892.00  23,  21

INSERT INTO Products VALUES (1, "monitor 24''", "Dell", 999.00, 8, 20);
INSERT INTO Products VALUES (NULL, "dysk 1TB", "Seagate", 350.00, 23, 200);

INSERT INTO Products VALUES
  (NULL, "pamięć ram 16GB", "Kingston", 140.90, 8, 190),
  (NULL, "klawiatura PL", "Dell", 90.00, 23, 20),
  (NULL, "klawiatura EN", "Microsoft", 87.00, 23, 30),
  (NULL, "klawiatura DE", "Apple", 87.00, 23, 0),
  (NULL, "Mysz bezprzew.", "Microsoft", 48.35, 8, 200),
  (NULL, "płyta główna ATX", "Gigabyte", 702.00, 23, 3),
  (NULL, "Nvidia GTX780", "Gigabyte", 892.00, 23, 21);

-- ZADANIE 4
-- 	- wyświetl wszystkie produkty w formie NAZWA, CENA NETTO, CENA BRUTTO
-- 	- wyświetl listę nazw produktów
-- 	- wyświetl ceny produktów bez powtórzeń

SELECT name as "NAZWA", price as "CENA NETTO", ROUND((price+price*(vat/100)),2) as "CENA BRUTTO" FROM Products;
SELECT name as "nazwa produktu" FROM Products;
SELECT DISTINCT price FROM Products;


SELECT * FROM Products;
SELECT price FROM Products;
SELECT name, price FROM Products;


-- ZADANIE 5
-- 	- wyświetl produkty, których cena wynosi więcej niż 100 zł
--    i są dostępne aktualnie na magazynie
-- 	- wyświetl produkty, których stawka VAT to 23%
-- 	- wyświetl produkty, które w nazwie mają słowo "klawiatura"
-- 	- wyświetl nazwy produktów, których jest w magazynie od 1 do 30 sztuk

SELECT * FROM Products WHERE price > 100 AND stock>0;
SELECT * FROM Products WHERE vat = 23;
SELECT * FROM Products WHERE name LIKE "%klawiatura%";
SELECT name FROM Products WHERE stock BETWEEN 1 AND 30;

-- ZADANIE 6
-- 	- wyświetl dostępne produkty w kolejności od najtańszego
-- 	- wyświetl nazwy trzech najdroższych produktów

SELECT * FROM Products ORDER BY price DESC;
SELECT name FROM Products ORDER BY price DESC LIMIT 3;

-- ZADANIE 7
-- 	- wyświetl zestawienie sumarycznych kwot netto dla każdej stawki VAT w
--    formie RAZEM NETTO, STAWKA VAT
-- 	- ogranicz zestawienie sumaryczne tylko do tych produktów,
--    których dostępność w magazynie jest > 100
-- 	- wyświetl minimalną, maksymalną oraz średnią cenę produktów w sklepie
-- 	- wyświetl listę producentów wraz z ich liczbą produktów w ofercie sklepu

SELECT SUM(price) as "RAZEM NETTO", vat as "STAWKA VAT" FROM Products GROUP BY Products.vat;

SELECT SUM(price) as "RAZEM NETTO", vat as "STAWKA VAT" FROM Products WHERE stock>100 GROUP BY Products.vat;

SELECT min(price) as "CENA MINIMALNA", max(price) AS "CENA MAXYMALNA", round(avg(price),2) as "CENA SREDNIA" FROM Products;

SELECT manufacturer, sum(Products.stock) FROM Products GROUP BY manufacturer;

SELECT manufacturer, sum(Products.stock) FROM Products GROUP BY manufacturer HAVING sum(Products.stock)>100;

-- ZADANIE 8
-- 	- zmień stan magazynowy dwóch produktów na 1000 sztuk (przyszła dostawa)
-- 	- zmień stan magazynowy dwóch innych produktów, bo właśnie sprzedało się 5 sztuk każdego z nich
-- 	- podnieś wszystkie ceny w sklepie o 10%

UPDATE Products

-- ZADANIE 9 - usuń produkty, których stan magazynowy wynosi 0
