-- user table
INSERT INTO User (User_name, Email, Phone, Password, Address, City, Postal_code, Country, Registration_Date, Status, Date_of_birth, role) 
VALUES 
('John Doe', 'johndoe@example.com', '1234567890', 'password123', '123 Elm Street', 'New York', '10001', 'USA', '2025-05-04', 'Active', '1990-01-15', 'CUSTOMER'),
('Jane Smith', 'janesmith@example.com', '0987654321', 'password456', '456 Oak Avenue', 'Los Angeles', '90001', 'USA', '2025-05-03', 'Active', '1985-06-20', 'CUSTOMER'),
('Michael Brown', 'michaelb@example.com', '1122334455', 'password789', '789 Pine Road', 'Chicago', '60601', 'USA', '2025-05-02', 'Active', '1992-03-30', 'ADMIN'),
('Emily Davis', 'emilydavis@example.com', '2233445566', 'password000', '101 Maple Lane', 'Houston', '77001', 'USA', '2025-05-01', 'Active', '1995-08-25', 'CUSTOMER'),
('David Wilson', 'davidw@example.com', '3344556677', 'password111', '202 Birch Street', 'Phoenix', '85001', 'USA', '2025-04-30', 'Inactive', '1988-12-10', 'ADMIN'),
('Sarah Miller', 'sarahmiller@example.com', '4455667788', 'password222', '303 Cedar Boulevard', 'Philadelphia', '19101', 'USA', '2025-04-29', 'Active', '1994-04-05', 'CUSTOMER'),
('James Johnson', 'jamesj@example.com', '5566778899', 'password333', '404 Pine Street', 'San Antonio', '78201', 'USA', '2025-04-28', 'Active', '1990-07-19', 'CUSTOMER'),
('Olivia Martinez', 'oliviamartinez@example.com', '6677889900', 'password444', '505 Willow Way', 'San Diego', '92101', 'USA', '2025-04-27', 'Inactive', '1998-11-03', 'ADMIN'),
('Daniel Thomas', 'danielt@example.com', '7788990011', 'password555', '606 Redwood Drive', 'Dallas', '75201', 'USA', '2025-04-26', 'Active', '1993-02-17', 'CUSTOMER'),
('Sophia Lee', 'sophialee@example.com', '8899001122', 'password666', '707 Maple Terrace', 'Austin', '73301', 'USA', '2025-04-25', 'Active', '1997-09-12', 'CUSTOMER');


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
INSERT INTO Book (Title, Author, ISBN, Publisher, Published_Date, Price, Stock_quantity, Language, Pages, Book_Description, Rating, Status, Category, Photo) 
VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Scribner', '1925-04-10', 10.99, 150, 'English', 180, 'A story of the Jazz Age in the United States in the 1920s.', 4.5, 'Available', 'Fiction', 'great_gatsby.jpg'),
('1984', 'George Orwell', '9780451524935', 'Secker & Warburg', '1949-06-08', 15.99, 200, 'English', 328, 'A dystopian novel set in a totalitarian society governed by Big Brother.', 4.8, 'Available', 'Dystopian', '1984.jpg'),
('To Kill a Mockingbird', 'Harper Lee', '9780061120084', 'J.B. Lippincott & Co.', '1960-07-11', 12.50, 180, 'English', 281, 'A gripping novel about racial injustice in the American South.', 4.9, 'Available', 'Fiction', 'to_kill_a_mockingbird.jpg'),
('Moby-Dick', 'Herman Melville', '9781503280786', 'Harper & Brothers', '1851-10-18', 14.99, 120, 'English', 720, 'The epic tale of Captain Ahab’s obsession with hunting down Moby Dick, the giant white whale.', 4.3, 'Available', 'Adventure', 'moby_dick.jpg'),
('Pride and Prejudice', 'Jane Austen', '9781503290563', 'T. Egerton', '1813-01-28', 9.99, 220, 'English', 432, 'A romantic novel that explores the issues of class, marriage, and morality in early 19th century England.', 4.7, 'Available', 'Romance', 'pride_and_prejudice.jpg'),
('The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 'Little, Brown and Company', '1951-07-16', 11.99, 130, 'English', 277, 'A story of teenage angst and alienation as told through the eyes of Holden Caulfield.', 4.0, 'Available', 'Fiction', 'catcher_in_the_rye.jpg'),
('The Hobbit', 'J.R.R. Tolkien', '9780261102217', 'George Allen & Unwin', '1937-09-21', 13.50, 250, 'English', 310, 'The adventure of Bilbo Baggins as he sets off to help dwarves reclaim their home.', 4.6, 'Available', 'Fantasy', 'the_hobbit.jpg'),
('The Alchemist', 'Paulo Coelho', '9780061122415', 'HarperOne', '1988-11-01', 8.99, 300, 'English', 208, 'A philosophical book about a young shepherd on a journey to find a treasure.', 4.4, 'Available', 'Adventure', 'the_alchemist.jpg'),
('Brave New World', 'Aldous Huxley', '9780060850524', 'Chatto & Windus', '1932-09-01', 13.25, 170, 'English', 311, 'A dystopian novel that explores a future society controlled by technology and mass production.', 4.2, 'Available', 'Dystopian', 'brave_new_world.jpg'),
('The Lord of the Rings', 'J.R.R. Tolkien', '9780544003415', 'George Allen & Unwin', '1954-07-29', 25.99, 100, 'English', 1216, 'The epic tale of Frodo Baggins and his companions on a quest to destroy the One Ring.', 4.9, 'Available', 'Fantasy', 'lord_of_the_rings.jpg');


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

