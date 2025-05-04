-- USER TABLE
CREATE TABLE User (
    User_ID INT AUTO_INCREMENT PRIMARY KEY,
    User_name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Password VARCHAR(100),
    Address TEXT,
    City VARCHAR(50),
    Postal_code VARCHAR(10),
    Country VARCHAR(50),
    Registration_Date DATE,
    Status VARCHAR(20),
    Date_of_birth DATE,
    role ENUM('CUSTOMER', 'ADMIN') DEFAULT 'CUSTOMER'
);

-- CART TABLE
CREATE TABLE Cart (
    Cart_ID INT PRIMARY KEY,
    User_ID INT,
    Created_At DATETIME,
    Update_At DATETIME,
    Cart_Status VARCHAR(20),
    Cart_Total DECIMAL(10,2),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

-- ORDER TABLE
CREATE TABLE `Order` (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Cart_ID INT,
    Order_Date DATE,
    Total_Amount DECIMAL(10,2),
    Payment_Method VARCHAR(50),
    Payment_Status VARCHAR(20),
    Shipping_Address TEXT,
    Shipping_Method VARCHAR(50),
    Shipping_Cost DECIMAL(10,2),
    Shipping_Status VARCHAR(20),
    Tracking_Number VARCHAR(50),
    Estimated_Delivery_Date DATE,
    Delivered_Date DATE,
    Order_Status VARCHAR(20),
    Discount_Code VARCHAR(20),
    Discount_Amount DECIMAL(10,2),
    Tax_Amount DECIMAL(10,2),
    Note TEXT,
    FOREIGN KEY (Cart_ID) REFERENCES Cart(Cart_ID)
);

-- BOOK TABLE
CREATE TABLE Book (
    Book_ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(100),
    ISBN VARCHAR(20),
    Publisher VARCHAR(100),
    Published_Date DATE,
    Price DECIMAL(10,2),
    Stock_quantity INT,
    Language VARCHAR(50),
    Pages INT,
    Book_Description TEXT,
    Rating DECIMAL(2,1),
    Status VARCHAR(20),
    Category VARCHAR(100),
    Photo VARCHAR(255)
);


-- GENRE TABLE
CREATE TABLE Genre (
    Genre_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Genre_Description TEXT,
    Genre_Status VARCHAR(20)
);

-- BOOK_GENRE TABLE
CREATE TABLE Book_Genre (
    Book_ID INT,
    Genre_ID INT,
    PRIMARY KEY (Book_ID, Genre_ID),
    FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
    FOREIGN KEY (Genre_ID) REFERENCES Genre(Genre_ID)
);

-- CART_BOOK TABLE
CREATE TABLE Cart_Book (
    Book_ID INT,
    Cart_ID INT,
    Quantity INT,
    PRIMARY KEY (Book_ID, Cart_ID),
    FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
    FOREIGN KEY (Cart_ID) REFERENCES Cart(Cart_ID)
);

-- ORDER_BOOK TABLE
CREATE TABLE Order_Book (
    Order_ID INT,
    Book_ID INT,
    Quantity INT,
    Price_At_Order DECIMAL(10,2),
    PRIMARY KEY (Order_ID, Book_ID),
    FOREIGN KEY (Order_ID) REFERENCES `Order`(Order_ID),
    FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID)
);
