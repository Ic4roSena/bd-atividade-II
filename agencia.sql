create database agencia;
show databases;
use agencia;

create table Departamento(
Departamentoid int primary key,
Nomedepartamento varchar (255)
);

insert into Departamento (Departamentoid, Nomedepartamento) values 
(1, "RH"),
(2, "Vendas"),
(3, "TI"),
(4, "Marketing"),
(5, "Contabilidade");

create table Funcionarios(
Funcionarioid int primary key,
Nome varchar (255),
Cargo varchar (255),
Salario int,
Departamentoid int,
foreign key (Departamentoid) references Departamento (Departamentoid)
);

insert into Funcionarios (Funcionarioid, Nome, Cargo, Salario, Departamentoid) values
(1, "João Silva", "Gerente de RH", 6000.00, 1),
(2, "Maria Santos","Vendedora", 3500.00, 2),
(3, "Pedro Oliveira", "Analista de TI", 4500.00,3),
(4, "Ana Costa", "Especialista de Marketing", 5500.00, 4),
(5, "Carlos Fernandes", "Contador", 4800.00, 5);

select * from Departamento;
select * from Funcionarios;