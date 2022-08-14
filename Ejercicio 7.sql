use vete;


select SUM(Monto) as Ingreso
from historial2
where Fecha between '2022-07-01' and '2022-07-31';