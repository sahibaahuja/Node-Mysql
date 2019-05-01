DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT(10) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(40) NOT NULL,
  department_name VARCHAR(40) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT (10) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tank Top", "Clothing" , 5.50 , 40);
VALUES ("Jeans", "Clothing" , 21.95 , 100);
VALUES ("Leggings", "Clothing" , 9.99 , 80);
VALUES ("Eyeliner", "Cosmetics" , 5.50 , 40);
VALUES ("Lipstick", "Cosmetics" , 9.00 , 60);
VALUES ("Mascara", "Cosmetics" , 6.50 , 30);
VALUES ("scarves", "Accesories" , 12.95 , 90);
VALUES ("necklace", "Accesories" , 9.99 , 30);
VALUES ("earings", "Accesories" , 4.50 , 40);
