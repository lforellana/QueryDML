CREATE database EJERCICIO2;

USE EJERCICIO2;

--Tablas
CREATE TABLE Prices (
    product_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    price DECIMAL(10, 2),
    );

CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT
);


-- Insertar Registros
INSERT INTO Prices ([product_id], [start_date], [end_date], [price]) 
VALUES 
 (1, '2023-01-01', '2023-01-10', 15.99),
 (2, '2023-01-11', '2023-01-20', 20.50),
 (3, '2023-02-01', '2023-02-15', 10.75),
 (4, '2023-02-16', '2023-02-28', 18.25),
 (5, '2023-03-01', '2023-03-10', 5.99),
 (6, '2023-03-11', '2023-03-20', 8.50),
 (7, '2023-04-01', '2023-04-15', 12.35),
 (8, '2023-04-16', '2023-04-30', 25.00),
 (9, '2023-05-01', '2023-05-10', 7.99),
 (10, '2023-05-11', '2023-05-20', 15.50),
 (11, '2023-06-01', '2023-06-10', 9.25),
 (12, '2023-06-11', '2023-06-20', 22.75),
 (13, '2023-07-01', '2023-07-15', 14.99),
 (14, '2023-07-16', '2023-07-31', 30.00),
 (15, '2023-08-01', '2023-08-10', 18.50),
 (16, '2023-08-11', '2023-08-20', 35.75),
 (17, '2023-09-01', '2023-09-10', 11.99),
 (18, '2023-09-11', '2023-09-20', 24.50),
 (19, '2023-10-01', '2023-10-15', 22.25),
 (20, '2023-10-16', '2023-10-31', 40.00)
;

-- Insertar Registros
INSERT INTO UnitsSold ([product_id], [purchase_date], [units])
VALUES
    (1, '2023-01-01', 5),
    (2, '2023-01-02', 8),
    (1, '2023-01-03', 10),
    (3, '2023-01-04', 15),
    (2, '2023-01-05', 12),
    (1, '2023-01-06', 7),
    (3, '2023-01-07', 20),
    (2, '2023-01-08', 6),
    (1, '2023-01-09', 9),
    (2, '2023-01-10', 11),
    (3, '2023-01-11', 18),
    (1, '2023-01-12', 4),
    (2, '2023-01-13', 14),
    (1, '2023-01-14', 8),
    (3, '2023-01-15', 12),
    (2, '2023-01-16', 10),
    (1, '2023-01-17', 6),
    (3, '2023-01-18', 15),
    (2, '2023-01-19', 9),
    (1, '2023-01-20', 11);
   

--Escribe una solución para encontrar el precio de venta promedio para cada producto. average_price debe redondearse a 2 decimales.
SELECT
    u.product_id,
    ROUND(SUM(p.price * u.units) / SUM(u.units), 2) AS average_price 
FROM unitssold u 
JOIN prices p ON 1=1 
    AND p.product_id = u.product_id 
    AND u.purchase_date BETWEEN p.start_date AND p.end_date 
GROUP BY u.product_id

