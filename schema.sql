CREATE TABLE Patient (
    Patient_ID NUMBER PRIMARY KEY,
    Patient_Name NVARCHAR2(50) NOT NULL,
    Age NUMBER CHECK (Age > 0),
    Phone NVARCHAR2(20),
    Gender NVARCHAR2(10) CHECK (Gender IN ('Male', 'Female'))
);

CREATE TABLE Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name NVARCHAR2(50) NOT NULL
);

CREATE TABLE Lab_Test (
    Test_ID NUMBER PRIMARY KEY,
    Test_Name NVARCHAR2(50) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

CREATE TABLE Lab_Order (
    Order_ID NUMBER PRIMARY KEY,
    Patient_ID NUMBER,
    Order_Date DATE,
    Status NVARCHAR2(20) 
        CHECK (Status IN ('Pending', 'In Progress', 'Completed')),

    CONSTRAINT FK_Order_Patient
        FOREIGN KEY (Patient_ID)
        REFERENCES Patient(Patient_ID)
);

CREATE TABLE Payment (
    Payment_ID NUMBER PRIMARY KEY,
    Order_ID NUMBER,
    Amount NUMBER CHECK (Amount > 0),
    Payment_Date DATE,
    Method NVARCHAR2(30),
    Status NVARCHAR2(20)
        CHECK (Status IN ('Paid', 'Partially Paid', 'Pending')),

    CONSTRAINT FK_Payment_Order
        FOREIGN KEY (Order_ID)
        REFERENCES Lab_Order(Order_ID)
);

CREATE TABLE Order_Test (
    Order_ID NUMBER,
    Test_ID NUMBER,
    Emp_ID NUMBER,
    Result NVARCHAR2(20),
    Status NVARCHAR2(20)
        CHECK (Status IN ('Pending', 'Completed')),

    CONSTRAINT PK_Order_Test
        PRIMARY KEY (Order_ID, Test_ID),

    CONSTRAINT FK_OT_Order
        FOREIGN KEY (Order_ID)
        REFERENCES Lab_Order(Order_ID),

    CONSTRAINT FK_OT_Test
        FOREIGN KEY (Test_ID)
        REFERENCES Lab_Test(Test_ID),

    CONSTRAINT FK_OT_Employee
        FOREIGN KEY (Emp_ID)
        REFERENCES Employee(Emp_ID)
);

GROUP BY Test_ID
ORDER BY Total_Requests DESC;
