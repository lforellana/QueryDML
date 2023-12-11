# QueryDML
Luis Fernando Orellana Diaz
61911451


Ejercicios
Instrucciones: crear una base de datos por ejercicio, crear las tablas requeridas e insertar al menos 20 registros  para las pruebas. Por ultimo adjuntar el query que responde la respuesta de cada ejercicio.


Ejercicio 1:

Tabla: Tweets

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+
tweet_id es la clave primaria (columna con valores únicos) para esta tabla. Esta tabla contiene todos los tweets en una aplicación de redes sociales.

Escribe una solución para encontrar los IDs de los tweets inválidos. El tweet es inválido si el número de caracteres utilizados en el contenido del tweet es estrictamente mayor que 15.

Devuelve la tabla de resultados en cualquier orden.

El formato del resultado es como se muestra en el siguiente ejemplo.

Ejemplo 1:

Entrada: Tabla Tweets:

+----------+----------------------------------+
| tweet_id | content                          |
+----------+----------------------------------+
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |
+----------+----------------------------------+
 Salida:

+----------+
| tweet_id |
+----------+
| 2        |
+----------+
 Explicación:

El Tweet 1 tiene una longitud de 14. Es un tweet válido.

El Tweet 2 tiene una longitud de 32. Es un tweet inválido.



Ejercicio 2:

Tabla: Prices

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| start_date    | date    |
| end_date      | date    |
| price         | int     |
+---------------+---------+
(product_id, start_date, end_date) es la clave primaria (combinación de columnas con valores únicos) para esta tabla. Cada fila de esta tabla indica el precio del product_id en el período desde start_date hasta end_date. Para cada product_id no habrá dos períodos que se superpongan. Eso significa que no habrá dos períodos que se crucen para el mismo product_id.

Tabla: UnitsSold

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| purchase_date | date    |
| units         | int     |
+---------------+---------+
Esta tabla puede contener filas duplicadas. Cada fila de esta tabla indica la fecha, unidades y product_id de cada producto vendido.

Escribe una solución para encontrar el precio de venta promedio para cada producto. average_price debe redondearse a 2 decimales.

Devuelve la tabla de resultados en cualquier orden.

El formato del resultado es como se muestra en el siguiente ejemplo.

Ejemplo 2:

Entrada: Tabla Prices:

+------------+------------+------------+--------+
| product_id | start_date | end_date   | price  |
+------------+------------+------------+--------+
| 1          | 2019-02-17 | 2019-02-28 | 5      |
| 1          | 2019-03-01 | 2019-03-22 | 20     |
| 2          | 2019-02-01 | 2019-02-20 | 15     |
| 2          | 2019-02-21 | 2019-03-31 | 30     |
+------------+------------+------------+--------+
Tabla UnitsSold:

+------------+---------------+-------+
| product_id | purchase_date | units |
+------------+---------------+-------+
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |
+------------+---------------+-------+
Salida:

+------------+---------------+
| product_id | average_price |
+------------+---------------+
| 1          | 6.96          |
| 2          | 16.96         |
+------------+---------------+
Explicación: El precio de venta promedio = Precio total del producto / Número de productos vendidos. Precio de venta promedio para el producto 1 = ((100 * 5) + (15 * 20)) / 115 = 6.96 Precio de venta promedio para el producto 2 = ((200 * 15) + (30 * 30)) / 230 = 16.96

Ejercicio 3:

Tabla: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |
+-------------+---------+
empId es la columna con valores únicos para esta tabla. Cada fila de esta tabla indica el nombre y el ID de un empleado además de su salario y el ID de su supervisor.

Tabla: Bonus

+-------------+------+
| Column Name | Type |
+-------------+------+
| empId       | int  |
| bonus       | int  |
+-------------+------+
empId es la columna con valores únicos para esta tabla. empId es una clave externa (columna de referencia) a empId de la tabla Employee. Cada fila de esta tabla contiene el ID de un empleado y su respectivo bono.

Escribe una solución para informar el nombre y la cantidad de bonificación de cada empleado con un bono inferior a 1000.

Devuelve la tabla de resultados en cualquier orden.

El formato del resultado es como se muestra en el siguiente ejemplo.

Ejemplo 3:

Entrada: Tabla Employee:

+-------+--------+------------+--------+
| empId | name   | supervisor | salary |
+-------+--------+------------+--------+
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |
+-------+--------+------------+--------+
Tabla Bonus:

+-------+-------+
| empId | bonus |
+-------+-------+
| 2     | 500   |
| 4     | 2000  |
+-------+-------+
Salida:

+------+-------+
| name | bonus |
+------+-------+
| Brad | null  |
| John | null  |
| Dan  | 500   |
+------+-------+
