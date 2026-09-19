create table producao (
id serial primary key,
operador varchar(50),
turno varchar(10),
pecas int,
refugo int,
data_producao date 
);

insert into producao(operador, turno, pecas, refugo, data_producao)
values
('Lucas','T1', 420,8,'2026-08-01'),
('Ana','T2', 420,8,'2026-08-01'),
('Maria','T1', 420,8,'2026-08-01'),
('João','T2', 420,8,'2026-08-01'),
('Carlos','T3', 420,8,'2026-08-01');

select * from producao
order by pecas desc;


delete from producao 
where id = 5;

select operador, turno from producao
where turno = 'T1'


select * from producao 
where operador like 'C%';

select operador, turno, pecas
from producao
where pecas >= 400;

select operador, turno, pecas
from producao 
where pecas between 390 and 430;

select operador, turno
from producao 
where turno in ('T1', 'T2');

select operador, turno, pecas
from producao 
order by turno, pecas desc;

select operador, turno, pecas
from producao 
where pecas between 400 and 450 and
turno in ('T1', 'T2')
order by pecas desc;