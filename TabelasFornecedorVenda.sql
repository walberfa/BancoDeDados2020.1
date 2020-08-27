CREATE TABLE Fornecedor(
	codigo 		int,
	nome		varchar(40) 	not null,
	endereco	varchar(30),
	cidade		varchar(20) 	not null,
  PRIMARY KEY (codigo)
);
CREATE TABLE Peca(
  codPeca	int,
	nome		varchar(40) 	not null,
	descricao	varchar(200),
	dataFab	date,
	preco		numeric(10,2) 	not null,
	PRIMARY KEY (codPeca),
	CHECK (preço>=0)
);
CREATE TABLE Venda(
	codForn	int 		not null,
  codPeca	int 		not null,
	quantidade	int 		not null,
	data		date 		default sysdate,
	CHECK (quantidade>0),
	FOREIGN KEY (codForn) REFERENCES Fornecedor(codigo),
	FOREIGN KEY (codPeca) REFERENCES Peca(codPeca)
)
