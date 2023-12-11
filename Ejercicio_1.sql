CREATE database EJERCICIO1;

USE EJERCICIO1;

CREATE TABLE Tweets (
    Tweet_id INT NOT NULL,
    Content VARCHAR(120) NOT NULL,
    PRIMARY KEY(Tweet_id)
);

-- Insertar Registros
INSERT INTO Tweets
    ([Tweet_id], [Content])
VALUES
(1, 'Este es un tweet de prueba 1'),
(2, 'Otro tweet de prueba 2'),
(3, 'Tercer tweet'),
(4, 'Un tweet mas largo de prueba 4'),
(5, 'Tweet corto 5'),
(6, 'Otro tweet largo para probar 6'),
(7, 'Tweet corto 7'),
(8, 'Un tweet bastante extenso para las pruebas 8'),
(9, 'Tweet corto 9'),
(10, 'Un tweet largo mas para la base de datos de prueba 10'),
(11, 'Tweet corto 11'),
(12, 'Un tweet muy largo para probar la condición 12'),
(13, 'Tweet corto 13'),
(14, 'Tweet de longitud normal 14'),
(15, 'Tweet corto 15'),
(16, 'Tweet extenso 16'),
(17, 'Otro tweet largo de prueba 17'),
(18, 'Tweet corto 18'),
(19, 'Un tweet largo y complejo para la base de datos 19'),
(20, 'Tweet corto 20')
;


/*Escribe una solución para encontrar los IDs de los tweets inválidos. El tweet es inválido si el número de caracteres utilizados en el contenido del tweet es estrictamente mayor que 15.
Devuelve la tabla de resultados en cualquier orden.*/

SELECT tweet_id
FROM Tweets
WHERE LEN(content) > 15;


