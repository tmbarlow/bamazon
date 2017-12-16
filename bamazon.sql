-- Drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "bamazon_db" database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect animals_db --
USE bamazon_db;

-- Creates the table "people" within animals_db --
CREATE TABLE products (
  -- unique id for each product 
  item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  -- Name of product --
  product_name VARCHAR(30) NOT NULL,
  -- department name --
  department_name VARCHAR (30) NOT NULL,
  -- cost to customer --
  price DECIMAL (4, 2),
  -- how much of the product is available in stores --
  stock_quantity INTEGER NOT NULL,
  -- Sets id as this table's primary key which means all data contained within it will be unique --
  PRIMARY KEY (item_id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES 
(111, "Snuggie", "Clothing", 25.00, 199),
(298, "Air Freshener", "Home", 4.01, 45), 
(123, "Pampers Baby Wipes", "Children", 1.50, 87),
-- (547, "Men's Compression Shirt", "Clothing", 19.59, 321), 
-- (489, "Gourmet PB&J", "Groceries", 4.99, 85), 
-- (666, "Werewolf Dog Muzzle", "Pets", 59.34, 71), 
-- (359, "LED Bathroom Infinity Mirror", "Bath", 329.99, 15), 
-- (789, "55 Gallon Drum of Lube", "Bedroom", 1468.80, 5), 
-- (881, "Magnetized Zen Garden", "Office", 32.95, 32);


SELECT * FROM products;