create database jornalismo;
show databases;
use jornalismo;

create table Artigos(
Artigoid int primary key,
titulo varchar(255), 
conteudo varchar(255),
datapublicacao date
);

insert into Artigos (Artigoid, titulo, conteudo, datapublicacao) values 
(1,  "Como Criar um Blog de Sucesso", "Neste artigo, exploraremos as melhores práticas para criar e manter um blog de sucesso.", '2023-03-15'),
(2,  "Receitas Saudáveis para o Verão", "Aqui estão algumas receitas deliciosas e saudáveis para aproveitar o verão ao máximo.", '2023-04-10'),
(3, "Dicas de Viagem para um Destino Exótico" , "Descubra dicas essenciais para planejar uma viagem inesquecível a um destino exótico.", '2023-05-20'),
(4, "Tecnologia e Inovação: O Futuro Chegou", "Exploraremos as últimas tendências tecnológicas que estão moldando o nosso futuro.", '2023-06-05'),
(5, "A Arte da Fotografia: Capturando Momentos Únicos" , "Aprenda sobre as técnicas de fotografia para capturar momentos únicos e especiais.", '2023-07-12');


insert into Comentarios (Comentarioid, Artigoid, Autor, Texto, datacomentario) values
(1, 1, "Pedro", "A tecnologia está avançando rapidamente, e é fascinante acompanhar essas mudanças.", '2023-06-06'),
(2, 2, "Maria", "Ótimo artigo! Muito informativo.", '2023-03-16'),
(3, 3, "João", "Adorei as receitas! Vou experimentá-las no próximo fim de semana.", '2023-04-12'),
(4, 4, "Ana", "Estas dicas de viagem são incríveis! Mal posso esperar para embarcar na minha aventura.", '2023-05-21'),
(5, 5, "Carla", "A fotografia é uma paixão para mim. Obrigada por compartilhar suas dicas!" ,'2023-07-15');

drop table Comentarios;
create table Comentarios (
Comentarioid int primary key,
Artigoid int,
Autor varchar (255),
Texto varchar (255),
datacomentario date,
foreign key(Artigoid) references Artigos (Artigoid)
);
select * from Artigos;
select * from Comentarios;
drop table Artigos;