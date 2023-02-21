SELECT PRODUCT_ID,
       DESCRIPTION,
       PRICE AS UNTAXED_PRICE,
       round(PRICE * 1.07, 2) AS TAXED_PRICE
  FROM PRODUCT;-- CAPÍTULO 04 - SELECT

SELECT NAME,
       CITY || ', ' || STATE AS LOCATION
  FROM CUSTOMER;

SELECT NAME,
       STREET_ADDRESS || ' ' || CITY || ', ' || STATE || ' ' || ZIP AS SHIP_ADDRESS
  FROM CUSTOMER;-- CAPÍTULO 05 - WHERE

SELECT *
  FROM station_data;

SELECT *
  FROM station_data
 WHERE year = 2010;

SELECT *
  FROM station_data
 WHERE year != 2010;

SELECT *
  FROM station_data
 WHERE year <> 2010;

SELECT *
  FROM station_data
 WHERE year BETWEEN 2005 AND 2010;

SELECT *
  FROM station_data
 WHERE year >= 2005 AND 
       year <= 2010;

SELECT *
  FROM station_data
 WHERE year > 2005 AND 
       year < 2010;

SELECT *
  FROM station_data
 WHERE month = 3 OR 
       month = 6 OR 
       month = 9 OR 
       month = 12;

SELECT *
  FROM station_data
 WHERE month IN (3, 6, 9, 12);

SELECT *
  FROM station_data
 WHERE month NOT IN (3, 6, 9, 12);

SELECT *
  FROM station_data
 WHERE month % 3 = 0;
