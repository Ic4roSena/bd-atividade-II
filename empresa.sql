create database empresa;
use empresa;

create table Clientes(

clienteid int primary key,
nome varchar (255) NOT NULL,
email varchar (255) NOT NULL,
telefone varchar (22) NOT NULL
);

insert into Clientes(clienteid, nome, email, telefone) values
(1, "Icaro Sena", "Icarogames200@gmail.com", "+55 (71) 99964-5022"),
(2, "Robert Correa", "Robert@gmail.com", "+1  470-236-9669"),
(3, "Kristen", "Kristenss@gmail.com", "+1 510-545-2993"),
(4, "Jackson", "Jackson2969@gmail.com", "+1 385-282-4818"),
(5, "Paul Walker", "Paulwalker@gmail.com", "+1 623-208-5919");

create table Pedidos (

pedidoid int primary key,
clienteid int not null,
datapedido date not null,
valortotal decimal (10,2) not null,
foreign key (clienteid) references Clientes (clienteid)
);

insert into Pedidos (pedidoid, clienteid, datapedido, valortotal) values 
(1, 1, '2023-06-10', 150.25),
(2, 2, '2023-04-15', 250.25),
(3, 3, '2023-08-11', 22.00),
(4, 4, '2023-07-22', 190.99),
(5, 5, '2023-03-10', 143.90);

select * from clientes;
select * from pedidos;

