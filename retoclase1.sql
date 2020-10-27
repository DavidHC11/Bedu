SHOW DATABASES;
USE tienda;
show tables;
describe articulo;
describe empleado;
desc puesto;
desc venta;
SELECT * from empleado;
select nombre from empleado where id_puesto=4;
select nombre from puesto where salario >10000;
select nombre from articulo where precio >1000 and iva >100;
 select * from venta where id_articulo in (135, 963) and id_empleado in (835,369);

