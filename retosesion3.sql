#reto1
use tienda;
SELECT nombre, apellido_paterno FROM empleado WHERE id_puesto IN
 (SELECT id_puesto FROM puesto WHERE salario > 10000);
 
SELECT id_empleado, min(total_ventas), max(total_ventas) FROM
 (SELECT clave, id_empleado, count(*) total_ventas FROM venta GROUP BY clave, id_empleado) AS t1
GROUP BY id_empleado;

SELECT clave, id_articulo FROM venta
 WHERE id_articulo IN (SELECT id_articulo FROM articulo WHERE precio > 5000);
 #reto2
SELECT clave, nombre, apellido_paterno
FROM venta v JOIN empleado e ON v.id_empleado = e.id_empleado
ORDER BY clave;

SELECT clave, nombre 
FROM venta v JOIN articulo a ON v.id_articulo = a.id_articulo
ORDER BY clave;

SELECT clave, round(sum(precio),2) Total
FROM venta v JOIN articulo a ON v.id_articulo = a.id_articulo
GROUP BY clave ORDER BY clave;

#reto3

CREATE VIEW puesto020 AS
SELECT concat(e.nombre, ' ', e.apellido_paterno), p.nombre
FROM empleado e JOIN puesto p ON e.id_puesto = p.id_puesto;

Select * from puesto020 limit 1;

CREATE VIEW Earticulo020 AS SELECT v.clave, concat(e.nombre, ' ', e.apellido_paterno) nombre, a.nombre_articulo
FROM venta v JOIN empleado e ON v.id_empleado = e.id_empleado JOIN articulo a ON v.id_articulo = a.id_articulo
ORDER BY v.clave;

Select * from Earticulo020;

CREATE VIEW pv AS
SELECT p.nombre, count(v.clave) total
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
JOIN puesto p
  ON e.id_puesto = p.id_puesto
GROUP BY p.nombre;

SELECT *
FROM pv
ORDER BY total DESC
LIMIT 1;
 