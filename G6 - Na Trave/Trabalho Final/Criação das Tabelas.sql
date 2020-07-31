CREATE TABLE

CREATE TABLE Cliente (
    ID_Cliente INTEGER NOT NULL PRIMARY KEY,
    CPF INTEGER NOT NULL,
    Nome_Usuario varchar(255) NOT NULL,
    Nome_Completo varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    Data_Nascimento text NOT NULL,
    Num_End INTEGER NOT NULL,
    FOREIGN KEY (Num_End) REFERENCES endereco(numero)
);


CREATE TABLE Pedido (
    ID_Pedido INTEGER PRIMARY KEY,
    Data_Pedido DATE NOT NULL,
    Cod_Cliente INTEGER NOT NULL,
    FOREIGN KEY (Cod_Cliente) REFERENCES Cliente(ID_Cliente)
);


CREATE TABLE PedidoItem (
    ID_PedidoItem INTEGER PRIMARY KEY,
    Cod_Produto INTEGER NOT NULL,
    Cod_Pedido INTEGER NOT NULL,
    FOREIGN KEY (Cod_Produto) REFERENCES Produto(codigo),
    FOREIGN KEY (Cod_Pedido) REFERENCES Pedido(ID_Pedido)
);


CREATE TABLE categoria(
codigo integer primary key not null,
nome varchar (255) not null
);


CREATE TABLE endereco (
numero integer primary key not null,
cep integer not null,
logradouro varchar (255)
);


CREATE TABLE estoque (
numero integer primary key not null,
quantidade integer,
codigo_funcionario integer,
foreign key (codigo_funcionario) references funcionario
);



CREATE TABLE estoqueproduto (
numero integer primary key not null,
numero_estoque integer,
codigo_produto integer,
foreign key (numero_estoque) references estoque,
foreign key (codigo_produto) references produto
);


CREATE TABLE funcionario(
codigo integer primary key not null,
nome varchar (255) not null,
cpf integer not null
);


CREATE TABLE produto (
codigo integer primary key not null,
nome varchar (255) not null,
descricao varchar (255),
codigo_categoria integer,
codigo_funcionario integer, preco real,
foreign key (codigo_categoria) references categoria,
foreign key (codigo_funcionario) references funcionario
);