insert into clientes (id, nome, idade, cidade) values (1,'Ana', 22, 'LISBOA'),
(2, 'Bruno', 31, 'Porto'),
(3, 'Carla', 28, 'Lisboa'),
(4, 'Daniel', 19, 'Coimbra'),
(5, 'Eduarda', 35, 'Braga');



create table planos (
id integer primary key,
nome_plano text,
valor_mensal numeric );

insert into planos (id, nome_plano , valor_mensal) values   
(1,'Basic',29.90),
(2,'Premium',54.90),
(3,'Gold',79.90);

create table inscricoes (id integer primary key,  
cliente_id integer not null,
plano_id integer not null, 
data_inicio date not null,
cancelado boolean not null,
constraint fk_inscricoes_cliente foreign key(cliente_id) references clientes(id),
constraint fk_inscricoes_plano foreign key (plano_id)
references planos(id)
);

INSERT INTO inscricoes (id, cliente_id, plano_id, data_inicio, cancelado) VALUES
(1, 1, 1, '2026-01-10', FALSE),
(2, 2, 2, '2026-01-15', FALSE),
(3, 3, 3, '2026-02-01', TRUE),
(4, 3, 2, '2026-03-01', FALSE),
(5, 4, 1, '2026-02-10', TRUE),
(6, 5, 3, '2026-03-05', FALSE),
(7, 2, 3, '2026-04-01', TRUE);


create table checkins (id integer primary key, cliente_id integer not null,
    data_checkin timestamp not null,
    constraint fk_checkins_cliente foreign key (cliente_id) references clientes(id)
);

 insert into checkins (id, cliente_id, data_checkin) values
(1,1,'2026-03-01 08:00:00'),
(2,1,'2026-03-02 08:00:00'),
(3,2,'2026-03-03 18:00:00'),
(4,2,'2026-03-04 18:10:00'),
(5,3,'2026-03-05 09:00:00'),
(6,5,'2026-03-06 19:00:00'),
(7,5,'2026-03-07 19:10:00'),
(8,5,'2026-03-08 19:20:00'),
(9,3,'2026-04-01 10:00:00'),
(10,1,'2026-04-02 08:00:00');

--filtar clientes com mais de 25
select * from clientes where idade > 25; 

--filtrar planos superior a 50
select * from planos 
where valor_mensal > 50;

 select *  from clientes where cidade = 'Lisboa';
 
 select c. nome, p.nome_plano
from clientes c
join inscricoes i on c.id = i.cliente_id
join planos p on i .plano_id = p.id;

--Inscrições Ativas
select *
from inscricoes
where cancelado = false;

select c. nome 
from clientes c
left join checkins ch on c. id = ch. cliente_id where ch.id is null;

--calculo check-in por cliente
select c.nome, count (ch.id) as total_checkins
from clientes c
left join checkins ch ON c.id = ch.cliente_id
group by c.id, c. nome order by total_checkins desc;

--Média de idade dos clientes 
select avg(idade) as media_idade from clientes;

--plano com valor maior mensal
select * from planos order by valor_mensal desc limit 1;

--inscriçoes após 1 de fevereiro 2026
select * from inscricoes where data_inicio > '2026-02-01';

--calculando numero de checkins em março 2026
select count (*) as
total_checkins_marco from checkins
where data_checkin >= '2026-03-01'
and data_checkin < '2026-04-01'; 

 --numero de inscrições por plano 
select p.nome_plano, count (i.id) as total_inscricoes_ativas from planos p left join inscricoes i on p. id = i.plano_id 
and i.cancelado = false group by p.id, p.nome_plano order by total_inscricoes_ativas desc;

--clientes com mais de 2 check-ins 
select c.nome, count (ch.id) as total_checkins from clientes c join checkins ch on c.id = ch.cliente_id group by c.id,
c.nome having count (ch.id) > 2;

--faturamento mensal apenas inscrições ativas 
select sum (p.valor_mensal) as faturamento_mensal from inscricoes i join planos p on i.plano_id = p.id where i.cancelado = false;










