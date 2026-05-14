# 📌 Lab Management System Database

## 📖 Overview
This project is a relational database system designed using Oracle SQL to manage a laboratory workflow.

It handles:
- Patients
- Lab tests
- Orders
- Employees
- Payments

with full relationships and constraints.

---

## 🧠 Database Purpose
The system simulates a real-world laboratory environment where:

- Patients place lab orders
- Tests are assigned to employees
- Payments are tracked per order
- Results are recorded per test

---

## 🛠️ Technologies Used
- Oracle SQL Database
- SQL Constraints (PK, FK, CHECK)
- Relational Database Modeling
- Excel Integration

---

## 🗂️ Database Schema

### Main Tables
- Patient
- Employee
- Lab_Test
- Lab_Order
- Payment
- Order_Test (Junction Table)

---

## 🔗 Relationships
- One Patient → Many Orders
- One Order → Many Tests
- One Order → One Payment
- One Employee → Many Test Results

---

## 📊 Key Features
- Fully normalized relational database
- Primary & Foreign Key constraints
- Data validation using CHECK constraints
- Many-to-many relationship handling
- Realistic laboratory workflow simulation

---

## 📈 Sample Queries Included
- Retrieve patients by age
- Filter patients by gender
- Search phone numbers
- Track payment status
- Join multiple tables for reports

---

## 🧪 Example Query

```sql
SELECT 
    P.Patient_Name,
    LO.Order_ID,
    OT.Test_ID,
    PAY.Status AS Payment_Status,
    OT.Result
FROM Patient P
JOIN Lab_Order LO 
    ON P.Patient_ID = LO.Patient_ID
JOIN Order_Test OT 
    ON LO.Order_ID = OT.Order_ID
JOIN Payment PAY 
    ON LO.Order_ID = PAY.Order_ID;
```

---

## 🚀 What I Learned
- Database design from scratch
- Relational modeling (1:M, M:M)
- Writing SQL queries
- Data integrity using constraints
- Building real-world database systems

---

## ⭐ Future Improvements
- Add GUI application
- Build web-based interface
- Add analytics dashboard
- Implement stored procedures & triggers

---

## 💡 Note
This project is for educational purposes and demonstrates a real laboratory database system built using Oracle SQL.

---

## 👤 Author
Anas Ahmed
