/*ESTE SCRIPT ESTA HECHO EN MYSQL
POR MARIA PAULA TKACZUK*/
select sum(h.monto) as ingresos_percibidos_2022,h.año from historial as h
where h.año = 2022