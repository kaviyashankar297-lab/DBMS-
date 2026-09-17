USE TOY_STORE;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "TOY WORLD", "9876100001", "toyworld@gmail.com", "Chennai"),
(202, "KIDS TOY HUB", "9876100002", "kidstoyhub@gmail.com", "Madurai"),
(203, "FUN TOYS", "9876100003", "funtoys@gmail.com", "Coimbatore"),
(204, "HAPPY KIDS", "9876100004", "happykids@gmail.com", "Salem"),
(205, "PLAY HOUSE", "9876100005", "playhouse@gmail.com", "Trichy"),
(206, "TOY MART", "9876100006", "toymart@gmail.com", "Chennai"),
(207, "KIDS WORLD", "9876100007", "kidsworld@gmail.com", "Madurai"),
(208, "FUN ZONE", "9876100008", "funzone@gmail.com", "Coimbatore"),
(209, "LITTLE TOYS", "9876100009", "littletoys@gmail.com", "Salem"),
(210, "PLAY LAND", "9876100010", "playland@gmail.com", "Trichy"),
(211, "TOY HOUSE", "9876100011", "toyhouse@gmail.com", "Chennai"),
(212, "KIDS MART", "9876100012", "kidsmart@gmail.com", "Madurai"),
(213, "FUN WORLD", "9876100013", "funworld@gmail.com", "Coimbatore"),
(214, "TOY ZONE", "9876100014", "toyzone@gmail.com", "Salem"),
(215, "PLAY WORLD", "9876100015", "playworld@gmail.com", "Trichy"),
(216, "HAPPY TOYS", "9876100016", "happytoys@gmail.com", "Chennai"),
(217, "KIDS PLAY STORE", "9876100017", "kidsplaystore@gmail.com", "Madurai"),
(218, "TOY PLANET", "9876100018", "toyplanet@gmail.com", "Coimbatore"),
(219, "FUN MART", "9876100019", "funmart@gmail.com", "Salem"),
(220, "KIDS TOY STORE", "9876100020", "kidstoystore@gmail.com", "Trichy"),
(221, "TOY MART PLUS", "9876100021", "toymartplus@gmail.com", "Chennai"),
(222, "PLAY HOUSE PLUS", "9876100022", "playhouseplus@gmail.com", "Madurai"),
(223, "TOY EXPRESS", "9876100023", "toyexpress@gmail.com", "Coimbatore"),
(224, "KIDS CARE TOYS", "9876100024", "kidscaretoys@gmail.com", "Salem"),
(225, "HAPPY PLAY", "9876100025", "happyplay@gmail.com", "Trichy"),
(226, "TOY CARE", "9876100026", "toycare@gmail.com", "Chennai"),
(227, "FUN KIDS", "9876100027", "funkids@gmail.com", "Madurai"),
(228, "TOY GALLERY", "9876100028", "toygallery@gmail.com", "Coimbatore"),
(229, "KIDS FUN STORE", "9876100029", "kidsfunstore@gmail.com", "Salem"),
(230, "SUPER TOYS", "9876100030", "supertoys@gmail.com", "Trichy");


SELECT * FROM Seller;


-- =========================================
-- INVENTORY TABLE
-- =========================================

CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);


INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 45),
(302, 102, 202, "UNAVAILABLE", 0),
(303, 103, 203, "AVAILABLE", 25),
(304, 104, 204, "AVAILABLE", 20),
(305, 105, 205, "AVAILABLE", 35),

(306, 106, 206, "AVAILABLE", 25),
(307, 107, 207, "UNAVAILABLE", 0),
(308, 108, 208, "AVAILABLE", 30),
(309, 109, 209, "AVAILABLE", 35),
(310, 110, 210, "AVAILABLE", 25),

(311, 111, 211, "AVAILABLE", 35),
(312, 112, 212, "AVAILABLE", 30),
(313, 113, 213, "AVAILABLE", 25),
(314, 114, 214, "AVAILABLE", 20),
(315, 115, 215, "AVAILABLE", 40),

(316, 116, 216, "AVAILABLE", 35),
(317, 117, 217, "AVAILABLE", 30),
(318, 118, 218, "AVAILABLE", 25),
(319, 119, 219, "AVAILABLE", 40),
(320, 120, 220, "AVAILABLE", 25),

(321, 121, 221, "AVAILABLE", 30),
(322, 122, 222, "AVAILABLE", 35),
(323, 123, 223, "AVAILABLE", 20),
(324, 124, 224, "AVAILABLE", 15),
(325, 125, 225, "AVAILABLE", 25),

(326, 126, 226, "AVAILABLE", 20),
(327, 127, 227, "AVAILABLE", 30),
(328, 128, 228, "AVAILABLE", 15),
(329, 129, 229, "AVAILABLE", 20),
(330, 130, 230, "AVAILABLE", 15),

(331, 131, 201, "AVAILABLE", 30),
(332, 132, 202, "AVAILABLE", 35),
(333, 133, 203, "AVAILABLE", 25),
(334, 134, 204, "AVAILABLE", 40),
(335, 135, 205, "AVAILABLE", 45);


SELECT * FROM Inventory;
SELECT * FROM Seller;
SELECT * FROM Product;

UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;


UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;


UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;


UPDATE Seller
SET ContactNo = "9876543210"
WHERE SellerID = 215;

SELECT * FROM Seller
WHERE SellerID = 215;


DELETE FROM Inventory
WHERE InventoryID = 335;


SELECT * FROM Inventory;

SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";


SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT COUNT(*) AS AvailableProducts
FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";


SELECT COUNT(*) AS UnavailableProducts
FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


SELECT * FROM Inventory
ORDER BY Stock DESC;


SELECT * FROM Inventory;
SELECT * FROM Seller;

USE TOY_STORE;

DROP TABLE Inventory;
DROP TABLE Seller;
DROP TABLE Product;