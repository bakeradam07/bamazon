DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    item_id INTEGER(10) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INTEGER(10) NOT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1, "Potatoes", "Vegetables", .75, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (2, "Onions", "Vegetables", .65, 75);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (3, "Tomatoes", "Vegetables", .80, 80);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (4, "Carrots", "Vegetables", .55, 50);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (5, "Bell Peppers", "Vegetables", .45, 50);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (6, "Lettuce", "Vegetables", .90, 60);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (7, "Broccoli", "Vegetables", 1.00, 75);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (8, "Salad Mix", "Vegetables", 1.25, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (9, "Cucumbers", "Vegetables", .60, 75);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (10, "Celery", "Vegetables", .30, 40);

SELECT * FROM products;