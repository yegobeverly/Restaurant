USE restaurant_db;

-- view the menu items table

SELECT *
FROM menu_items;

-- Find the number of items on the menu

SELECT COUNT(item_name) AS number_items
FROM menu_items;

-- Least and most expensive items on the menu

SELECT item_name, price AS maxprice
FROM menu_items
ORDER BY maxprice DESC ;

SELECT item_name, price AS minprice
FROM menu_items
ORDER BY minprice;

-- How many italian dishes are on the menu?

SELECT COUNT(item_name) AS italian_dishes
FROM menu_items
WHERE category = 'Italian';

-- What are the least and most expensive italian dishes on the menu?

SELECT item_name, price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price
;

SELECT item_name, price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC
;

-- How many dishes are in each category?

SELECT category, COUNT(item_name) AS count_dishes
FROM menu_items
GROUP BY category
ORDER BY count_dishes DESC;

-- What is the average dish price within each category?

SELECT category, AVG(price) AS average_price
FROM menu_items
GROUP BY category
ORDER BY average_price DESC;

