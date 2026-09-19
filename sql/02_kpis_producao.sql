select count(*) from producao;

select sum(pecas) from producao;

select avg(pecas) from producao;

select MAX(pecas) from producao;

select MIN(pecas) from producao;

select turno, SUM(pecas)
from producao 
group by turno;

select turno, 
SUM(pecas) as total_pecas,
count(*) as registros,
AVG(pecas) as media_pecas
from producao
group by turno
order by total_pecas desc;

select count(*) as registros,
SUM(pecas) as total_pecas,
AVG(pecas) as media_pecas,
MAX(pecas) as maior_producao,
MIN(pecas) as menor_producao
from producao;

