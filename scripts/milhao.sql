create database if not exists milhao;
use milhao;

create table  if not exists perguntas(
id int auto_increment,
enunciado varchar (255),
primary key (id),
id_dificuldade int,
foreign key(id_dificuldade) references dificuldade(id)
);
create table if not exists dificuldade(
id int auto_increment,
primary key(id),
dificuldade varchar(8)
);

create table if not exists respostas (
id int auto_increment,
id_perguntas int,
pergunta varchar(255),
correta bool,
primary key (id),
foreign key (id_perguntas) references perguntas(id)
);
insert INTO dificuldade(dificuldade) values
('facil'),
('medio'),
('dificil');


set global FOREIGN_KEY_CHECKS=0;
INSERT INTO Perguntas (id_dificuldade, enunciado) VALUES  
(1,'Qual é o maior planeta do Sistema Solar?'),(1,'Qual é a capital da França?'),(1,'Qual é o elemento químico com símbolo O?'),(1,'Qual é a cor do céu em um dia claro?'),(1,'Quantos estados tem o Brasil?'),(1,'Qual é o nome do famoso rato da Disney?'),(1,'Qual é o maior oceano da Terra?'),(1,'Quem escreveu ''Dom Quixote''?'),(1,'Qual é a moeda oficial dos Estados Unidos?'),(1,'Qual é o planeta mais próximo do Sol?'),(1,'Qual é o nome do livro sagrado do Islã?'),(1,'Qual é o nome do continente onde está localizado o Egito?'),(1,'Qual é o principal gás que compõe a atmosfera terrestre?'),(1,'Qual é o nome do cientista que desenvolveu a teoria da evolução por seleção natural?'),(1,'Quantos continentes existem na Terra?'),(1,'Qual é o nome da capital do Brasil?'),(1,'Qual é o nome da maior espécie de tubarão?'),(1,'Quem pintou a Mona Lisa?'),(1,'Qual é o nome do astro-rei do nosso sistema solar?'),(1,'Qual é o nome do maior deserto do mundo?'),(2,'Qual é o nome do processo pelo qual as plantas produzem seu próprio alimento?'),(2,'Qual é o país com a maior população do mundo?'),(2,'Qual é o elemento químico com símbolo Fe?'),(2,'Quem foi o presidente dos Estados Unidos durante a Segunda Guerra Mundial?'),(2,'Qual é o maior rio do mundo em volume de água?'),(2,'Qual é o principal componente do ar atmosférico?'),(2,'Qual é a unidade de medida da intensidade de corrente elétrica?'),(2,'Qual é o nome do primeiro satélite artificial lançado ao espaço?'),(2,'Qual é o nome do autor do livro ''1984''?'),(2,'Qual é a capital do Japão?'),(2,'Qual é a língua oficial do Brasil?'),(2,'Qual é o nome do processo de conversão de um líquido em gás?'),(2,'Qual é o nome do planeta conhecido como ''Planeta Vermelho''?'),(2,'Qual é o nome do famoso físico que desenvolveu a teoria da relatividade?'),(2,'Qual é o nome da teoria que descreve a formação e evolução do universo a partir de um estado extremamente quente e denso?'),(2,'Qual é o nome do processo pelo qual as plantas e animais convertem alimento em energia?'),(2,'Qual é a obra do autor brasileiro Machado de Assis que se passa no Rio de Janeiro do século XIX?'),(2,'Qual é o nome do fenômeno meteorológico que causa chuvas fortes e ventos intensos em uma região?'),(2,'Qual é o nome do presidente brasileiro que governou durante a Constituição de 1988?'),(2,'Qual é o nome da figura mitológica grega conhecida por transformar tudo o que tocava em ouro?');
set global FOREIGN_KEY_CHECKS=1;

set global FOREIGN_KEY_CHECKS=0;
INSERT INTO respostas (id_perguntas, correta, pergunta) VALUES 
(1, false, 'Terra'),(1, false, 'Marte'),(1, false, 'Vênus'),(1, true, 'Júpiter'),(2, false, 'Londres'),(2, false, 'Berlim'),(2, false, 'Madri'),(2, true, 'Paris'),(3, false, 'Ouro'),(3, false, 'Osmium'),(3, true, 'Oxigênio'),(3, false, 'Oxigênio'),(4, false, 'Verde'),(4, false, 'Vermelho'),(4, false, 'Amarelo'),(4, true, 'Azul'),(5, false, '24'),(5, true, '26'),(5, false, '27'),(5, false, '26'),(6, false, 'Pato Donald'),(6, false, 'Goofy'),(6, false, 'Tom'),(6, true, 'Mickey Mouse'),(7, false, 'Oceano Atlântico'),(7, false, 'Oceano Índico'),(7, false, 'Oceano Ártico'),(7, true, 'Oceano Pacífico'),(8, false, 'Jorge Luis Borges'),(8, false, 'Gabriel García Márquez'),(8, true, 'Miguel de Cervantes'),(8, false, 'Miguel de Cervantes'),(9, false, 'Euro'),(9, false, 'Real'),(9, false, 'Libra'),(9, true, 'Dólar'),(10, false, 'Vênus'),(10, false, 'Terra'),(10, false, 'Marte'),(10, true, 'Mercúrio'),(11, false, 'Torá'),(11, false, 'Bíblia'),(11, false, 'Vedas'),(11, true, 'Alcorão'),(12, false, 'Ásia'),(12, false, 'América'),(12, false, 'Oceania'),(12, true, 'África'),(13, false, 'Dióxido de carbono'),(13, false, 'Neônio'),(13, false, 'Argônio'),(13, true, 'Nitrogênio'),(14, false, 'Louis Pasteur'),(14, false, 'Gregor Mendel'),(14, true, 'Charles Darwin'),(14, false, 'Charles Darwin'),(15, false, '5'),(15, false, '6'),(15, true, '7'),(15, false, '7'),(16, false, 'São Paulo'),(16, false, 'Rio de Janeiro'),(16, false, 'Salvador'),(16, true, 'Brasília'),(17, false, 'Tubarão Branco'),(17, false, 'Tubarão Azul'),(17, false, 'Tubarão Martelo'),(17, true, 'Tubarão-Baleia'),(18, false, 'Vincent van Gogh'),(18, false, 'Claude Monet'),(18, false, 'Pablo Picasso'),(18, true, 'Leonardo da Vinci'),(19, false, 'Lua'),(19, false, 'Júpiter'),(19, false, 'Marte'),(19, true, 'Sol'),(20, false, 'Deserto do Saara'),(20, false, 'Deserto de Gobi'),(20, false, 'Deserto da Arábia'),(20, true, 'Deserto Antártico');
set global FOREIGN_KEY_CHECKS=1;
select*from respostas;