CREATE TABLE "PRODUTO" (
	"ID"	INTEGER NOT NULL,
	"NOME"	TEXT NOT NULL,
	"DESCRICAO"	TEXT,
	"DATA_FABRICACAO"	REAL NOT NULL,
	"VALOR_UNITARIO"	REAL NOT NULL,
	"ID_CATEGORIA"	INTEGER NOT NULL,
	"QT_ESTOQUE"	REAL NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT),
	FOREIGN KEY("ID_CATEGORIA") REFERENCES "CATEGORIA"("ID")
);