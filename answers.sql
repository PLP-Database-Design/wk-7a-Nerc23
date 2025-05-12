--Question 1:
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(50)
);

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES
  (101, 'Peter Tosh', 'Laptop'),
  (101, 'Peter Tosh', 'Mouse'),
  (102, 'Jane Smith', 'Tablet'),
  (102, 'Jane Smith', 'Keyboard'),
  (102, 'Jane Smith', 'Mouse'),
  (103, 'Emily Clark', 'Phone');


--Question 2:
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);


INSERT INTO Orders (OrderID, CustomerName) VALUES
   (101, 'Peter Tosh'),
   (102, 'Jane Smith'),
   (103, 'Emily Clark');


CREATE TABLE OrderDetails_2NF (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderDetails_2NF (OrderID, Product, Quantity) VALUES
   (101, 'Laptop', 2),
   (101, 'Mouse', 1),
   (102, 'Tablet', 3),
   (102, 'Keyboard', 1),
   (102, 'Mouse', 2),
   (103, 'Phone', 1);

