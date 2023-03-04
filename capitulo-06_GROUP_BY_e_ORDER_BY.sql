SELECT COUNT( * ) AS record_count
  FROM station_data;

SELECT COUNT( * ) AS record_count
  FROM station_data
 WHERE tornado = 1;

SELECT year,
       COUNT( * ) AS record_count
  FROM station_data
 WHERE tornado = 1
 GROUP BY year;

SELECT year,
       month,
       COUNT( * ) AS record_count
  FROM station_data
 WHERE tornado = 1
 GROUP BY year,
          month;

SELECT year,
       month,
       COUNT( * ) AS record_count
  FROM station_data
 WHERE tornado = 1
 GROUP BY 1,
          2;

SELECT year,
       month,
       COUNT( * ) AS record_count
  FROM station_data
 WHERE tornado = 1
 GROUP BY year,
          month
 ORDER BY year,
          month;

SELECT year,
       month,
       COUNT( * ) AS record_count
  FROM station_data
 WHERE tornado = 1
 GROUP BY year,
          month
 ORDER BY year DESC,
          month;

SELECT COUNT(snow_depth) AS recorded_snow_depth_count
  FROM station_data;

SELECT month,
       AVG(temperature) AS avg_temp
  FROM station_data
 WHERE year >= 2000
 GROUP BY month;

SELECT month,
       ROUND(AVG(temperature), 2) AS avg_temp
  FROM station_data
 WHERE year >= 2000
 GROUP BY month;

SELECT year,
       SUM(snow_depth) AS total_snow
  FROM station_data
 WHERE year >= 2000
 GROUP BY year;

SELECT year,
       SUM(snow_depth) AS total_snow,
       SUM(precipitation) AS total_precipitation,
       MAX(precipitation) AS max_precipitation
  FROM station_data
 WHERE year >= 2000
 GROUP BY year;

SELECT year,
       SUM(precipitation) AS tornado_precipitation
  FROM station_data
 WHERE tornado = 1
 GROUP BY year;

SELECT year,
       SUM(precipitation) AS total_precipitation
  FROM station_data
 GROUP BY year
HAVING total_precipitation > 30;

SELECT station_number
  FROM station_data;

SELECT DISTINCT station_number
  FROM station_data;
