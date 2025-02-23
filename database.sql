CREATE DATABASE express_demo;
USE express_demo;

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (name, price) VALUES
  ('iPhone 15', 35900.00),
  ('Samsung Galaxy S24', 32900.00),
  ('iPad Pro', 27900.00);