BEGIN TRANSACTION;


CREATE TYPE tipo_telefone AS ENUM ('Fixo', 'Celular', 'Comercial', 'Recado');
CREATE TYPE tipo_mail AS ENUM ('Particular', 'Comercial');

CREATE TABLE IF NOT EXISTS "usuario" (
	"id_usuario" serial NOT NULL,
	"usuario" varchar(50) NOT NULL,
	"senha" char(32) NOT NULL,
	PRIMARY KEY ("id_usuario"),
	UNIQUE ("usuario")
);

CREATE TABLE IF NOT EXISTS "usuario_pf" (
	"id_pf" serial NOT NULL,
	"id_usuario" int NOT NULL,
	"nome" varchar(50) NOT NULL,
	"cpf" char(11) NOT NULL,
	"data_nascimento" date NOT NULL,
	PRIMARY KEY ("id_pf"),
	UNIQUE ("cpf")
);

CREATE TABLE IF NOT EXISTS "usuario_pj" (
	"id_pj" serial NOT NULL,
	"id_usuario" int NOT NULL,
	"razao_social" varchar(50) NOT NULL,
	"cnpj" char(14) NOT NULL,
	PRIMARY KEY ("id_pj"),
	UNIQUE ("cnpj")
);

CREATE TABLE IF NOT EXISTS "usuario_endereco" (
	"id_endereco" serial NOT NULL,
   "id_usuario" int NOT NULL,
   "cep" char(8) NOT NULL,
	"logradouro" varchar(50) NOT NULL,
	"numero" int NULL,
	"complemento" varchar(40) NULL,
	"bairro" varchar(40) NOT NULL,
	"cidade" varchar(40) NOT NULL,
	"estado" char(2) NOT NULL,
    PRIMARY KEY ("id_endereco")
);

CREATE TABLE IF NOT EXISTS "usuario_telefone" (
   "id_telefone" serial NOT NULL,
   "id_usuario" int NOT NULL,
	"numero_tel" varchar(11) NULL,
	"tipo_tel" tipo_telefone,
	PRIMARY KEY ("id_telefone")
);

CREATE TABLE IF NOT EXISTS "usuario_email" (
   "id_email" serial NOT NULL,
   "id_usuario" int NOT NULL,
	"email" varchar(60) NULL,
	"tipo_email" tipo_mail,
	PRIMARY KEY ("id_email")
);

CREATE TABLE IF NOT EXISTS "categoria" (
	"id_categoria" serial NOT NULL,
	"id_usuario" int NOT NULL,
	"nome" VARCHAR(50) NOT NULL,
	"descricao" TEXT NULL,
	PRIMARY KEY ("id_categoria")
);

CREATE TABLE IF NOT EXISTS "produto" (
	"id_produto" serial NOT NULL,
	"nome" varchar(50) NOT NULL,
	"descricao" TEXT NULL,
	"quant_estoque" int NOT NULL,
	"data_fabricacao" date NOT NULL,
	"valor_unitario" numeric NOT NULL,
	"id_categoria" int NOT NULL,
	PRIMARY KEY ("id_produto")
);


CREATE TABLE IF NOT EXISTS "pedido" (
	"id_pedido" serial NOT NULL,
	"data" date NOT NULL,
	"id_usuario" int NOT NULL,
	PRIMARY KEY ("id_pedido")
);

CREATE TABLE IF NOT EXISTS "pedidoitem" (
	"id_pedidoitem" serial NOT NULL,
	"id_pedido" int NOT NULL,
	"id_produto" int NOT NULL,
	"quantidade" int NOT NULL,
	PRIMARY KEY ("id_pedidoitem")
);

ALTER TABLE "usuario_pf"
    ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usuario") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "usuario_pj"
    ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usuario") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "usuario_endereco"
    ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usuario") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "usuario_telefone"
    ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usuario") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "usuario_email"
    ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usuario") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "categoria"
	ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usuario") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "produto"
	ADD FOREIGN KEY ("id_categoria") REFERENCES "categoria" ("id_categoria") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "pedido"
    ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usuario") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "pedidoitem"
	ADD FOREIGN KEY ("id_produto") REFERENCES "produto" ("id_produto") ON UPDATE CASCADE ON DELETE CASCADE,
	ADD FOREIGN KEY ("id_pedido") REFERENCES "pedido" ("id_pedido") ON UPDATE CASCADE ON DELETE CASCADE;


COMMIT;