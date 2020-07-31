-- Criando Tabelas - questão 3

CREATE TABLE Endereco(
    Id_Endereco serial primary key,
    Cep varchar(8)not null,
    Estado varchar(2) not null,
    Cidade varchar(50) not null,
    Bairro varchar(50) not null,
    Rua varchar(50) not null,
    Numero integer not null,
    Complemento varchar(50)
);

CREATE TABLE Cliente (
    Id_Cliente serial primary key,
    Nome_Usuario varchar(50) not null,
    Nome_Completo varchar(50) not null,
    Data_Nascimento date not null,
    Email varchar(30) not null,
    Cpf varchar(11) not null,
    Id_Endereco integer, 
    foreign key (Id_Endereco) references Endereco
);

CREATE TABLE Pedido(
    Id_Pedido serial primary key,
    Data_Pedido date not null,
    Id_Cliente integer,
    foreign key (Id_Cliente) references Cliente
);

CREATE TABLE Funcionario (
    Id_Funcionario serial primary key,
    Nome_Funcionario varchar(50) not null,
    Cpf varchar(11) not null
);

CREATE TABLE Categoria(
    Id_Categoria serial primary key,
    Nome_Categoria varchar(50) not null,
    Descricao varchar(100) not null,
	Id_Funcionario integer,
	foreign key (Id_Funcionario) references Funcionario
);

CREATE TABLE Produto(
    Id_Produto serial primary key,
    Nome_Produto varchar(50) not null,
    Preco decimal not null,
    Estoque integer,
    Data_Fabricacao date not null,
    Descricao varchar(100) not null,
    Id_Categoria integer,
    foreign key (Id_Categoria) references Categoria
    
);
 
CREATE TABLE Pedido_Produto(
    Id_Pedido_Produto serial primary key,
    Quantidade integer not null,
    Id_Produto integer,
    foreign key (Id_Produto) references Produto,
    Id_Pedido integer, 
    foreign key (Id_Pedido) references Pedido
);

CREATE TABLE Controle (
    Id_Controle serial primary key,
    Id_Funcionario integer,
    foreign key (Id_Funcionario) references Funcionario,
    Id_Produto integer,
    foreign key (Id_Produto) references Produto
);
