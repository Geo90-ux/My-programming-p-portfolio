CREATE DATABASE IF NOT EXISTS student_budget_database;

USE student_budget_database;

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    trans_type ENUM('Cash', 'Card') NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    trans_datetime DATETIME NOT NULL,
    trans_type ENUM('Income', 'Expense') NOT NULL,
    notes TEXT
);

CREATE TABLE budget (
    budget_id INT AUTO_INCREMENT PRIMARY KEY,
    estimated_percentage DECIMAL(5,2),
    estimated_amount DECIMAL(10,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    estimated_datetime DATETIME NOT NULL,
    trans_type ENUM('Income', 'Expense') NOT NULL,
    notes TEXT
);

select * from transactions;
select * from budget;