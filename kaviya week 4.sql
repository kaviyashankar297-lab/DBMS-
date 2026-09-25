USE TOY_STORE;

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    Qty INT,
    TotalAmt DECIMAL(10,2),
    OrderStatus VARCHAR(20),
    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

INSERT INTO Orders VALUES
(401, 'ANU', 101, 2, 800, 'PENDING'),
(402, 'PRIYA', 102, 1, 399, 'PENDING'),
(403, 'KAVYA', 103, 2, 598, 'DELIVERED'),
(404, 'RAJ', 104, 1, 699, 'PENDING'),
(405, 'DIVYA', 105, 3, 1047, 'DELIVERED'),
(406, 'ARUN', 106, 1, 599, 'PENDING'),
(407, 'NITHYA', 107, 2, 998, 'DELIVERED'),
(408, 'SURESH', 109, 1, 799, 'PENDING'),
(409, 'MEENA', 110, 2, 1098, 'DELIVERED'),
(410, 'KARTHIK', 111, 1, 899, 'PENDING'),
(411, 'POOJA', 112, 2, 1598, 'DELIVERED'),
(412, 'RAVI', 113, 3, 2097, 'PENDING'),
(413, 'HARINI', 114, 2, 1198, 'DELIVERED'),
(414, 'VISHNU', 115, 1, 499, 'PENDING'),
(415, 'SANDHYA', 116, 3, 897, 'DELIVERED'),
(416, 'GOKUL', 117, 2, 798, 'PENDING'),
(417, 'JANANI', 118, 1, 349, 'DELIVERED'),
(418, 'ROHITH', 119, 1, 999, 'PENDING'),
(419, 'DHARSHINI', 120, 2, 1598, 'DELIVERED'),
(420, 'NAVEEN', 126, 1, 1299, 'PENDING');


CREATE TABLE Order_Details
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Qty INT,
    UnitPrice DECIMAL(10,2),

    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

INSERT INTO Order_Details VALUES
(501, 401, 101, 2, 400),
(502, 402, 102, 1, 399),
(503, 403, 103, 2, 299),
(504, 404, 104, 1, 699),
(505, 405, 105, 3, 349),
(506, 406, 106, 1, 599),
(507, 407, 107, 2, 499),
(508, 408, 109, 1, 799),
(509, 409, 110, 2, 549),
(510, 410, 111, 1, 899),
(511, 411, 112, 2, 799),
(512, 412, 113, 3, 699),
(513, 413, 114, 2, 599),
(514, 414, 115, 1, 499),
(515, 415, 116, 3, 299),
(516, 416, 117, 2, 399),
(517, 417, 118, 1, 349),
(518, 418, 119, 1, 999),
(519, 419, 120, 2, 799),
(520, 420, 126, 1, 1299);


SELECT * FROM Orders;

SELECT * FROM Order_Details;


UPDATE Orders
SET OrderStatus = "SHIPPED"
WHERE OrderID = 401;


UPDATE Orders
SET OrderStatus = "DELIVERED"
WHERE OrderID = 402;


SELECT * FROM Orders
ORDER BY CustomerName;


SELECT * FROM Orders
WHERE CustomerName = "PRIYA"
ORDER BY OrderID;


SELECT * FROM Orders
WHERE OrderStatus = "PENDING";


SELECT * FROM Orders
WHERE OrderStatus = "SHIPPED";


SELECT * FROM Orders
WHERE OrderStatus = "DELIVERED";


SELECT CustomerName, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerName;


SELECT CustomerName, SUM(TotalAmt) AS TotalAmountSpent
FROM Orders
GROUP BY CustomerName;


SELECT * FROM Orders;

SELECT * FROM Order_Details;


DROP TABLE IF EXISTS Order_Details;

DROP TABLE IF EXISTS Orders;