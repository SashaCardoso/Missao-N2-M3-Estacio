USE shop;

-- Insert dummy data into users table
INSERT INTO users (login, password, name, address, email, phone) VALUES
('johndoe', 'password123', 'John Doe', '123 Main St, Cityville, Country', 'johndoe@email.com', '123-456-7890'),
('janedoe', 'mypassword', 'Jane Doe', '456 Oak St, Townsville, Country', 'janedoe@email.com', '234-567-8901'),
('bobjohnson', 'securepassword', 'Bob Johnson', '789 Pine St, Villagetown, Country', 'bobjohnson@email.com', '345-678-9012'),
('emilywhite', 'strongpassword', 'Emily White', '101 Maple St, Hamlet, Country', 'emilywhite@email.com', '456-789-0123');

-- Insert dummy data into individuals table
INSERT INTO individuals (user_id, cpf) VALUES
(1, 12345678901),
(2, 23456789012),
(3, 34567890123),
(4, 45678901234);

-- Insert dummy data into companies table
INSERT INTO companies (user_id, cnpj) VALUES
(1, 12345678000199),
(2, 23456789000188),
(3, 34567890000177),
(4, 45678901000166);

-- Insert dummy data into products table
INSERT INTO products (name, quantity, price) VALUES
('Product A', 100, 10.99),
('Product B', 200, 20.50),
('Product C', 150, 15.75),
('Product D', 300, 30.00);

-- Insert dummy data into transactions table
INSERT INTO transactions (transaction_id, quantity, product_id, seller_cnpj, buyer_cpf) VALUES
(1, 2, 1, 12345678000199, 12345678901),
(2, 5, 2, 23456789000188, 23456789012),
(3, 1, 3, 34567890000177, 34567890123),
(4, 3, 4, 45678901000166, 45678901234);
