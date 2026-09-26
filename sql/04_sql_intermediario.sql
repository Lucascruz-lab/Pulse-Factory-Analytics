select distinct turno from producao
order by turno asc;

select * 
from producao 
where pecas > 400;

select turno, sum(pecas) as total
from producao p group by p.turno 
having sum(pecas) > 800;

insert into operadores (nome, cargo, setor)
values ('Pedro', 'Operador', 'Montagem')

select 
o.nome,
o.setor,
p.turno,
p.pecas
from operadores o 
left join producao p
on o.id = p.operador_id;

select 
o.nome,
o.setor,
p.turno,
p.pecas
from operadores o 
right join producao p
on o.id = p.operador_id;

select 
o.setor, 
count(p.operador_id) as operadores_ativos,
SUM(pecas) as total
from operadores o
left join producao p 
on o.id = p.operador_id
group by o.setor
having SUM(pecas) > 400
order by SUM(pecas) desc;

