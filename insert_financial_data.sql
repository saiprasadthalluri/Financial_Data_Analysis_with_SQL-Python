-- insert_financial_data.sql

-- Insert sample data into Customers table
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address, City, State, ZipCode, DateOfBirth)
VALUES 
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm St', 'Somewhere', 'CA', '90210', '1980-01-01'),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak St', 'Anywhere', 'TX', '73301', '1990-05-15');

-- Insert sample data into Accounts table
INSERT INTO Accounts (CustomerID, AccountType, Balance, OpenDate)
VALUES 
(1, 'Checking', 1500.00, '2022-01-01'),
(1, 'Savings', 3000.00, '2021-06-15'),
(2, 'Checking', 2000.00, '2023-03-20');

-- Insert sample data into Transactions table
INSERT INTO Transactions (AccountID, TransactionDate, TransactionType, Amount)
VALUES 
(1, '2023-06-01', 'Deposit', 500.00),
(1, '2023-06-10', 'Withdrawal', 100.00),
(2, '2023-06-15', 'Deposit', 1000.00),
(3, '2023-06-20', 'Withdrawal', 200.00);
