-- create_financial_data.sql

-- Create the database
CREATE DATABASE FinancialAnalysis;

-- Use the database
USE FinancialAnalysis;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    DateOfBirth DATE
);

-- Create Accounts table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(15, 2),
    OpenDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create Transactions table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    AccountID INT,
    TransactionDate DATE,
    TransactionType VARCHAR(20),
    Amount DECIMAL(15, 2),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);
