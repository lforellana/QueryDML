CREATE database EJERCICIO3;

USE EJERCICIO3;

--Tablas
CREATE TABLE Employee (
    empId INT PRIMARY KEY,
    name VARCHAR(255),
    supervisor INT,
    salary INT
);

CREATE TABLE Bonus (
    empId INT,
    bonus INT,
    PRIMARY KEY (empId),
    FOREIGN KEY (empId) REFERENCES Employee(empId)
);


--Registros
INSERT INTO Employee (empId, name, supervisor, salary) 
VALUES
(1, 'Luis Diaz', NULL, 50000),
(2, 'Jannifer Smith', 3, 60000),
(3, 'Roberto Johnson', 1, 55000),
(4, 'Alicia Williams', 3, 70000),
(5, 'Charlie Brown', 2, 65000),
(6, 'Tomas Smith', NULL, 60000),
(7, 'Isabella Rodriguez', 1, 80000),
(8, 'Alejandro Lopez', 1, 72000),
(9, 'Elena Ramos', 3, 68000),
(10, 'Gabriel Morales', 2, 71000),
(11, 'Luisa Hernandez', 2, 67000),
(12, 'Valentina Suarez', 7, 90000),
(13, 'Santiago Martinez', 7, 88000),
(14, 'Lucia Ortiz', 8, 82000),
(15, 'Carlos Gonzalez', 8, 78000),
(16, 'Victoria Jimenez', 11, 85000),
(17, 'Adrian Sanchez', 11, 83000),
(18, 'Daniela Navarro', 14, 92000),
(19, 'Javier Garcia', 14, 94000),
(20, 'Natalia Molina', 13, 87000);

;

INSERT INTO Bonus (empId, bonus) VALUES
(1, 500),
(2, 800),
(3, 300),
(4, 1000),
(5, 600),
(6, 900),
(7, 750),
(8, 850),
(9, 400),
(10, 700),
(11, 950),
(12, 1200),
(13, 1100),
(14, 1000),
(15, 550),
(16, 920),
(17, 880),
(18, 700),
(19, 750),
(20, 800);

;

--Escribe una solución para informar el nombre y la cantidad de bonificación de cada empleado con un bono inferior a 1000.
select name, bonus
from Employee e
left join Bonus b
on e.empId = b.empId 
where b.bonus < 1000 or b.bonus is null
