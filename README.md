📌 Lab Management System Database
📖 Overview

This project is a relational database system designed using Oracle SQL to manage a laboratory workflow.
It handles patients, lab tests, orders, employees, and payments with full relationships and constraints.

🧠 Database Purpose

The system simulates a real-world lab environment where:

Patients place lab orders
Tests are assigned to employees
Payments are tracked per order
Results are recorded per test
🛠️ Technologies Used
Oracle Database (SQL)
SQL Constraints (PK, FK, CHECK)
Data Modeling (Relational Schema)
Excel (for sample data integration)
🗂️ Database Schema
Main Tables:
Patient
Employee
Lab_Test
Lab_Order
Payment
Order_Test (Junction Table)
🔗 Relationships
One Patient → Many Orders
One Order → Many Tests (via Order_Test)
One Order → One Payment
One Employee → Many Test Results
📊 Key Features
Fully normalized relational database
Primary & Foreign Key constraints
Data validation using CHECK constraints
Many-to-many relationship handling
Realistic lab workflow simulation
📈 Sample Queries Included
Retrieve all patients over a certain age
Filter male patients
Find unpaid or partially paid orders
Get test results by type
Join queries across multiple tables
🧪 Example Query
SELECT 
    P.Patient_Name,
    LO.Order_ID,
    OT.Test_ID,
    PAY.Status AS Payment_Status,
    OT.Result
FROM Patient P
JOIN Lab_Order LO ON P.Patient_ID = LO.Patient_ID
JOIN Order_Test OT ON LO.Order_ID = OT.Order_ID
JOIN Payment PAY ON LO.Order_ID = PAY.Order_ID;
📁 Project Structure
Lab-Management-System/
│
├── schema.sql
├── insert_data.sql
├── queries.sql
├── ERD.png
└── README.md
🚀 What I Learned
Database design from scratch
Relationship modeling (1:M, M:M)
Writing complex SQL queries
Data integrity using constraints
Structuring real-world systems
👤 Author

Anas Ahmed

⭐ Future Improvements
Add GUI interface
Convert into web-based system
Add analytics dashboard
Implement stored procedures & triggers
💡 Important Note

This project is for learning purposes and simulates a real laboratory database system.
