SELECT * 
FROM Patient 
ORDER BY Patient_ID;

SELECT * 
FROM Patient 
WHERE (Age>=70);

SELECT * 
FROM Patient 
WHERE (Gender='Male');

SELECT * 
FROM Patient 
WHERE Phone LIKE '010%';

SELECT * 
FROM Employee ; 

SELECT * 
FROM Lab_Test 
ORDER BY Test_ID;

SELECT * 
FROM Lab_Order 
ORDER BY Order_ID;

SELECT * 
FROM Payment 
ORDER BY Payment_ID;

SELECT * 
FROM Payment 
WHERE Status='Partially Paid';

SELECT * 
FROM Order_Test;

SELECT * 
FROM Order_Test 
WHERE (Result='High Glucose');

SELECT 
    P.Patient_Name      AS "Patient Name",
    P.Phone             AS "Phone Number",
    LO.Order_ID         AS "Order ID",
    OT.Test_ID          AS "Test ID",
    PAY.Status          AS "Payment Status",
    OT.Result           AS "Test Result"

FROM Patient P

JOIN Lab_Order LO
    ON P.Patient_ID = LO.Patient_ID

JOIN Order_Test OT
    ON LO.Order_ID = OT.Order_ID

JOIN Payment PAY
    ON LO.Order_ID = PAY.Order_ID

WHERE PAY.Payment_ID = (
    SELECT MAX(P2.Payment_ID)
    FROM Payment P2
    WHERE P2.Order_ID = LO.Order_ID
);


SELECT Test_ID, COUNT(*) AS Total_Requests
FROM Order_Test
GROUP BY Test_ID
ORDER BY Total_Requests DESC;
