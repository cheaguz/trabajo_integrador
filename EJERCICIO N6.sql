select p.nombre as nombre_del_perro,p.perro_id,h.id, h.año
from perro as p, historial as h
where p.perro_id = h.id and h.año =2022