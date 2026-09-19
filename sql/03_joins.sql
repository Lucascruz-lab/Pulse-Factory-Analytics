create table operadores (
id serial primary key,
nome varchar(50),
cargo varchar(30),
setor varchar(30)
);

insert into operadores (nome, cargo, setor)
values 
('Lucas', 'Operador', 'Montagem'),
('Ana', 'Operadora', 'Montagem'),
('João', 'Operador', 'Qualidade'),
('Maria', 'Operadora', 'Logística'),
('Carlos', 'Operador', 'Expedição');

select * from operadores;

alter table producao 
add column operador_id int;

update producao 
set operador_id = 5
where operador = 'João'

select * from producao;

select 
o.nome,
o.setor,
p.turno,
p.pecas
from operadores o inner join producao p on o.id=p.operador_id;

select o.nome, o.setor, p.turno, p.pecas
from operadores o inner join producao p on o.id =p.operador_id
order by p.pecas desc;