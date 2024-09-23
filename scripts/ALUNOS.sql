CREATE DATABASE ESCOLATECNICA;
USE ESCOLATECNICA;

CREATE TABLE ALUNOS (
ID INT AUTO_INCREMENT PRIMARY KEY,
NOME varchar (100) NOT NULL,
DATA_NASCIMENTO date,
SEXO CHAR(1),
EMAIL VARCHAR(50),
TELEFONE VARCHAR(15)
);  

create table CURSOS (
ID int auto_increment primary KEY,
NOME_CURSOS varchar(50) NOT NULL,
DURACAO INT,
NIVEL varchar(50)
);

create TABLE MATRICULAS(
ID INT auto_increment primary key,
ID_ALUNO INT,
ID_CURSO INT,
DATA_MATRICULA date,
foreign key(ID_ALUNO) references ALUNOS(ID),
foreign key(ID_CURSO) references CURSOS(ID)
);

insert INTO ALUNOS(NOME, DATA_NASCIMENTO, SEXO ,EMAIL,TELEFONE) VALUES ('João Silva','2001-03-15','M', 'joao.silva@email.com','11987654321'), ('Maria Souza', '2002-07-22','F','maria.souza@emeil.com', '11987654322'), ('Carlos Pereira', '2000-11-10','M','carlos.pereira@emai.com','11987654323');


insert into CURSOS (NOME_CURSOS,DURACAO,NIVEL) VALUES('Desenvolvimento web',12,'Intermidiario'),('Manutenção de Computadores',6,'Basico'),('Redes de computadores',18,'Avançado');

insert into MATRICULAS (ID_ALUNO , ID_CURSO,DATA_MATRICULA)VALUES(1,1,'2024-09-01'),(2,2,'2024-09-02'), (3,3,'2024-09-03');