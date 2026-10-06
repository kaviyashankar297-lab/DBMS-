CREATE DATABASE TOY_STORE;

USE TOY_STORE;

CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Brand VARCHAR(50),
    Category VARCHAR(50),
    AgeGroup VARCHAR(20),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Product VALUES
(101, 'Building Blocks', 'Lego', 'Building Blocks', '5-8', 899, 20),
(102, 'Teddy Bear', 'Funskool', 'Soft Toys', '3-6', 699, 15),
(103, 'Remote Car', 'Hot Wheels', 'Remote Control Toys', '8-12', 1499, 10),
(104, 'Chess Board', 'Hasbro', 'Board Games', '8+', 599, 25),
(105, 'Puzzle Game', 'Funskool', 'Educational Toys', '5-8', 499, 30),
(106, 'Action Figure', 'Marvel', 'Action Figures', '8-12', 999, 12),
(107, 'Toy Gun', 'Nerf', 'Outdoor Toys', '8+', 1299, 8),
(108, 'Doll House', 'Barbie', 'Soft Toys', '5-8', 1999, 5);



SELECT * FROM Product;



SELECT DISTINCT Category
FROM Product;



SELECT * FROM Product
WHERE Price > 1000;



SELECT * FROM Product
ORDER BY Price DESC;