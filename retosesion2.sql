## Reto 1
use tienda;
show tables;
desc articulo;
select * from articulo;
select * from articulo where nombre like '%Pasta%';
select * from articulo where nombre like '%Cannelloni%';
select * from articulo where nombre like '%-%';
desc puesto;
select nombre from puesto where nombre like '%Designer%'; 
select nombre from puesto where nombre like '%Developer%'; 
### Reto2
select avg(salario) Promedio from puesto;
select count(nombre) from articulo where nombre like '%Pasta%';
select min(salario) Salario_minimo, max(salario) Salario_maximo
from puesto;
select sum(salario) from puesto 
where id_puesto > (select count(*) from puesto)-5;
## Reto 3
select nombre, count(*) cantidad from puesto group by nombre;
select nombre, sum(salario) Pago from puesto group by nombre;
select id_empleado no_empleado, count(*) ventas from venta group by id_empleado;
select id_articulo articulo, count(*) ventas from venta group by id_articulo;

