-- user table
INSERT INTO User VALUES
(1, 'Alice Smith', 'alice@example.com', '1234567890', 'pass1', '123 Main St', 'New York', '10001', 'USA', '2023-01-10', 'Active', '1990-05-15'),
(2, 'Bob Johnson', 'bob@example.com', '2345678901', 'pass2', '456 Elm St', 'Los Angeles', '90001', 'USA', '2023-02-15', 'Active', '1985-03-20'),
(3, 'Carol Danvers', 'carol@example.com', '3456789012', 'pass3', '789 Oak St', 'Chicago', '60601', 'USA', '2023-03-20', 'Inactive', '1992-08-10'),
(4, 'David Wright', 'david@example.com', '4567890123', 'pass4', '321 Maple St', 'Houston', '77001', 'USA', '2023-04-25', 'Active', '1988-12-05'),
(5, 'Eva Green', 'eva@example.com', '5678901234', 'pass5', '654 Pine St', 'Phoenix', '85001', 'USA', '2023-05-30', 'Suspended', '1995-06-22'),
(6, 'Frank Castle', 'frank@example.com', '6789012345', 'pass6', '987 Birch St', 'Philadelphia', '19101', 'USA', '2023-06-10', 'Active', '1987-11-17'),
(7, 'Grace Lee', 'grace@example.com', '7890123456', 'pass7', '741 Cedar St', 'San Antonio', '78201', 'USA', '2023-07-05', 'Active', '1991-02-28'),
(8, 'Harry Potter', 'harry@example.com', '8901234567', 'pass8', '852 Aspen St', 'San Diego', '92101', 'USA', '2023-08-01', 'Inactive', '1994-07-31'),
(9, 'Ivy Queen', 'ivy@example.com', '9012345678', 'pass9', '963 Redwood St', 'Dallas', '75201', 'USA', '2023-09-09', 'Active', '1989-01-22'),
(10, 'Jack Black', 'jack@example.com', '0123456789', 'pass10', '159 Spruce St', 'San Jose', '95101', 'USA', '2023-10-12', 'Suspended', '1993-05-10');

-- cart table

INSERT INTO Cart VALUES
(1, 1, '2024-01-01 10:00:00', '2024-01-01 11:00:00', 'Open', 150.00),
(2, 2, '2024-01-02 12:00:00', '2024-01-02 12:30:00', 'Pending', 230.50),
(3, 3, '2024-01-03 09:30:00', '2024-01-03 10:00:00', 'Closed', 75.20),
(4, 4, '2024-01-04 14:00:00', '2024-01-04 14:45:00', 'Open', 40.00),
(5, 5, '2024-01-05 16:00:00', '2024-01-05 16:30:00', 'Pending', 320.00),
(6, 6, '2024-01-06 18:00:00', '2024-01-06 18:15:00', 'Closed', 58.99),
(7, 7, '2024-01-07 11:00:00', '2024-01-07 11:20:00', 'Open', 100.00),
(8, 8, '2024-01-08 13:00:00', '2024-01-08 13:45:00', 'Pending', 210.00),
(9, 9, '2024-01-09 15:00:00', '2024-01-09 15:30:00', 'Closed', 500.00),
(10, 10, '2024-01-10 17:00:00', '2024-01-10 17:15:00', 'Open', 120.00);

-- Order Table
INSERT INTO `Order` VALUES
(1, 1, '2024-02-01', 150.00, 'Credit Card', 'Paid', '123 Main St, NY', 'FedEx', 10.00, 'Shipped', 'TRK123456', '2024-02-05', '2024-02-06', 'Delivered', 'DISC10', 10.00, 12.00, 'Fast delivery'),
(2, 2, '2024-02-02', 230.50, 'PayPal', 'Pending', '456 Elm St, LA', 'UPS', 15.00, 'Processing', 'TRK654321', '2024-02-06', NULL, 'Processing', 'DISC15', 15.00, 18.00, NULL),
(3, 3, '2024-02-03', 75.20, 'Debit Card', 'Paid', '789 Oak St, Chicago', 'DHL', 12.00, 'Shipped', 'TRK111111', '2024-02-07', '2024-02-08', 'Delivered', NULL, 0.00, 5.00, NULL),
(4, 4, '2024-02-04', 40.00, 'Credit Card', 'Paid', '321 Maple St, Houston', 'FedEx', 10.00, 'Delivered', 'TRK222222', '2024-02-08', '2024-02-09', 'Delivered', NULL, 0.00, 3.00, 'Thank you'),
(5, 5, '2024-02-05', 320.00, 'PayPal', 'Paid', '654 Pine St, Phoenix', 'UPS', 20.00, 'Shipped', 'TRK333333', '2024-02-09', '2024-02-10', 'Delivered', 'DISC20', 20.00, 25.00, NULL),
(6, 6, '2024-02-06', 58.99, 'Debit Card', 'Paid', '987 Birch St, Philadelphia', 'DHL', 15.00, 'Processing', 'TRK444444', '2024-02-10', NULL, 'Processing', NULL, 0.00, 6.00, NULL),
(7, 7, '2024-02-07', 100.00, 'Credit Card', 'Paid', '741 Cedar St, San Antonio', 'FedEx', 10.00, 'Shipped', 'TRK555555', '2024-02-11', '2024-02-12', 'Delivered', NULL, 0.00, 8.00, NULL),
(8, 8, '2024-02-08', 210.00, 'PayPal', 'Pending', '852 Aspen St, San Diego', 'UPS', 15.00, 'Processing', 'TRK666666', '2024-02-12', NULL, 'Processing', 'DISC5', 5.00, 17.00, NULL),
(9, 9, '2024-02-09', 500.00, 'Debit Card', 'Paid', '963 Redwood St, Dallas', 'DHL', 20.00, 'Shipped', 'TRK777777', '2024-02-13', '2024-02-14', 'Delivered', NULL, 0.00, 40.00, 'Big order'),
(10, 10, '2024-02-10', 120.00, 'Credit Card', 'Paid', '159 Spruce St, San Jose', 'FedEx', 10.00, 'Delivered', 'TRK888888', '2024-02-14', '2024-02-15', 'Delivered', NULL, 0.00, 10.00, NULL);

-- Book Table
INSERT INTO Book VALUES
(1, 'Book A', 'Author 1', 'ISBN001', 'Publisher 1', '2020-01-01', 25.99, 100, 'English', 300, 'Description 1', 4.5, 'Available'),
(2, 'Book B', 'Author 2', 'ISBN002', 'Publisher 2', '2021-02-01', 15.50, 200, 'English', 150, 'Description 2', 4.0, 'Available'),
(3, 'Book C', 'Author 3', 'ISBN003', 'Publisher 3', '2019-03-01', 20.00, 50, 'English', 500, 'Description 3', 3.8, 'Available'),
(4, 'Book D', 'Author 4', 'ISBN004', 'Publisher 4', '2022-04-01', 30.00, 80, 'English', 400, 'Description 4', 4.7, 'Available'),
(5, 'Book E', 'Author 5', 'ISBN005', 'Publisher 5', '2018-05-01', 18.75, 120, 'English', 350, 'Description 5', 4.1, 'Available'),
(6, 'Book F', 'Author 6', 'ISBN006', 'Publisher 6', '2017-06-01', 22.00, 90, 'English', 280, 'Description 6', 3.9, 'Available'),
(7, 'Book G', 'Author 7', 'ISBN007', 'Publisher 7', '2016-07-01', 19.99, 70, 'English', 310, 'Description 7', 4.3, 'Available'),
(8, 'Book H', 'Author 8', 'ISBN008', 'Publisher 8', '2015-08-01', 27.50, 60, 'English', 290, 'Description 8', 4.6, 'Available'),
(9, 'Book I', 'Author 9', 'ISBN009', 'Publisher 9', '2014-09-01', 23.99, 110, 'English', 330, 'Description 9', 4.2, 'Available'),
(10, 'Book J', 'Author 10', 'ISBN010', 'Publisher 10', '2013-10-01', 29.95, 40, 'English', 320, 'Description 10', 4.4, 'Available');

-- Genre Table
INSERT INTO Genre VALUES
(1, 'Fiction', 'Stories from imagination', 'Active'),
(2, 'Non-Fiction', 'Facts and real events', 'Active'),
(3, 'Mystery', 'Suspense and thrill', 'Active'),
(4, 'Science', 'Scientific works', 'Active'),
(5, 'Biography', 'Life stories', 'Active'),
(6, 'Fantasy', 'Fantasy world stories', 'Active'),
(7, 'Romance', 'Love and relationships', 'Active'),
(8, 'Horror', 'Scary stories', 'Active'),
(9, 'History', 'Historical records', 'Active'),
(10, 'Poetry', 'Poetic works', 'Active');

-- Book_Genre Table
INSERT INTO Book_Genre VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Cart_Book Table
INSERT INTO Cart_Book VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(6, 6, 1),
(7, 7, 4),
(8, 8, 1),
(9, 9, 5),
(10, 10, 1);

-- Order_Book Table
INSERT INTO Order_Book VALUES
(1, 1, 2, 25.99),
(2, 2, 1, 15.50),
(3, 3, 1, 20.00),
(4, 4, 1, 30.00),
(5, 5, 2, 18.75),
(6, 6, 1, 22.00),
(7, 7, 3, 19.99),
(8, 8, 1, 27.50),
(9, 9, 1, 23.99),
(10, 10, 2, 29.95);

