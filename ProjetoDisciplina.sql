#Projeto final da disciplina de Banco de Dados
#BD de uma rede de bibliotecas
#Endereços e nomes são fictícios, qualquer semelhança com a realidade é mera coincidência
#Números de telefone, cpf e cnpj são aleatórios

create table Biblioteca(
    id_biblioteca	integer 	not null,
    nome    		varchar(30) 	not null,
    endereco    	varchar(50),
    cnpj    		varchar(14),
    telefone    	varchar(12),
    site    		varchar(50),
    
    primary key(id_biblioteca)
);

create table Bibliotecario(
    id_bibliotecario    integer	 	not null,
    biblioteca_fk   	integer 	not null,
    nome    		varchar(30) 	not null,
    cpf 		varchar(11) 	not null,
    email   		varchar(30),
    telefone    	varchar(12),
    
    primary key(id_bibliotecario),
    foreign key(biblioteca_fk) references Biblioteca(id_biblioteca)
);

create table Livro(
    id_livro    integer 	not null,
    titulo    	varchar(30) 	not null,
    autor   	varchar(30) 	not null,
    num_paginas integer,
    edicao  	integer,
    ano_lanca   integer,
    
    primary key(id_livro)
);

create table Registro(
    id_registro 	integer not null,
    livro_fk    	integer not null,
    biblioteca_fk   	integer not null,
    
    primary key(id_registro),
    foreign key(livro_fk) references Livro(id_livro),
    foreign key(biblioteca_fk) references Biblioteca(id_biblioteca)
);

create table Pessoa(
    id_pessoa   	integer 	not null,
    nome    		varchar(30) 	not null,
    endereco    	varchar(50),
    cpf 		varchar(11) 	not null,
    email   		varchar(30),
    telefone    	varchar(12),
    
    primary key(id_pessoa)
);

create table Emprestimo(
    id_emprestimo   	integer not null,
    pessoa_fk   	integer not null,
    livro_fk    	integer not null,
    data_emprestimo 	date,
    data_devolucao  	date,
    devolvido   	bool,
    atrasado    	bool,
    
    primary key(id_emprestimo),
    foreign key(pessoa_fk) references Pessoa(id_pessoa),
    foreign key(livro_fk) references Livro(id_livro)
);

insert into Biblioteca(id_biblioteca, nome, endereco, cnpj, telefone, site) values (1, "Julio Verne", "Avenida do Contorno Norte, S/N, Maracanaú", "37873070000164", "8533830011", "julioverne@biblio.com");
insert into Biblioteca(id_biblioteca, nome, endereco, cnpj, telefone, site) values (2, "George Martin", "Avenida Central, S/N, Acaracuzinho, Maracanaú", "89151379000144", "8534678901", "georgemartin@biblio.com");

insert into Bibliotecario(id_bibliotecario, biblioteca_fk, nome, cpf, email, telefone) values (1, 1, "Walber Florencio", "75560336351", "walberfa@gmail.com", "85987656046");
insert into Bibliotecario(id_bibliotecario, biblioteca_fk, nome, cpf, email, telefone) values (2, 1, "Miguel Levy", "77261201340", "miguellevysm@gmail.com", "85988547966");
insert into Bibliotecario(id_bibliotecario, biblioteca_fk, nome, cpf, email, telefone) values (3, 2, "Luiz Fernando", "55628884324", "luizfernandopq@gmail.com", "85987546491");
insert into Bibliotecario(id_bibliotecario, biblioteca_fk, nome, cpf, email, telefone) values (4, 2, "Filipe Gomes", "82551685320", "filipegms@gmail.com", "85988338451");

insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (1, "Ponto de Impacto", "Dan Brown", 398, 1, 2001);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (2, "Perdido em Marte", "Andy Weir", 335, 1, 2011);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (3, "O Codigo da Vinci", "Dan Brown", 367, 1, 2003);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (4, "O Simbolo Perdido", "Dan Brown", 442, 1, 2009);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (5, "Anjos e Demonios", "Dan Brown", 416, 1, 2000);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (6, "A Batalha do Apocalipse", "Eduardo Spohr", 586, 2, 2007);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (7, "A Guerra dos Trono", "George R. R. Martin", 694, 1, 1996);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (8, "A Furia dos Reis", "George R. R. Martin", 791, 1, 1998);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (9, "A Tormenta de Espadas", "George R. R. Martin", 973, 1, 2000);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (10, "O Festim dos Corvos", "George R. R. Martin", 753, 1, 2005);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (11, "A Dança dos Dragões", "George R. R. Martin", 1016, 1, 2011);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (12, "Eu, Robô", "Isaac Asimov", 253, 4, 1950);
insert into Livro(id_livro, titulo, autor, num_paginas, edicao, ano_lanca) values (13, "Viagem Ao Centro da Terra", "Julio Verne", 210, 13, 1886);

insert into Registro(id_registro, livro_fk, biblioteca_fk) values (1, 1, 1);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (2, 1, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (3, 2, 1);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (4, 2, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (5, 3, 1);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (6, 3, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (7, 4, 1);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (8, 4, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (9, 5, 1);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (10, 5, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (11, 6, 1);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (12, 6, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (13, 7, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (14, 8, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (15, 9, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (16, 10, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (17, 11, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (18, 12, 1);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (19, 12, 2);
insert into Registro(id_registro, livro_fk, biblioteca_fk) values (20, 13, 1);

insert into Pessoa(id_pessoa, nome, endereco, cpf, email, telefone) values (1, "Mariana Nunes", null, "68686999301", "marinunes13@gmail.com", null);
insert into Pessoa(id_pessoa, nome, endereco, cpf, email, telefone) values (2, "Fabio Amorim", null, "50948907355", "fabioamorim@gmail.com", null);
insert into Pessoa(id_pessoa, nome, endereco, cpf, email, telefone) values (3, "Lucas Brito", null, "00452647320", null, "85988741233");
insert into Pessoa(id_pessoa, nome, endereco, cpf, email, telefone) values (4, "Vera Lucia", null, "53439517322", "vlucia123@gmail.com", null);
insert into Pessoa(id_pessoa, nome, endereco, cpf, email, telefone) values (5, "Amanda Oliveira", null, "10429228376", "oliv.amanda@gmail.com", null);
insert into Pessoa(id_pessoa, nome, endereco, cpf, email, telefone) values (6, "João Moura", null, "64518517369", null, "85934678873");


insert into Emprestimo(id_emprestimo, pessoa_fk, registro_fk, data_emprestimo, data_devolucao, devolvido, atrasado) values (1, 1, 12, 09/29/2020, 10/13/2020, 1, 0);
insert into Emprestimo(id_emprestimo, pessoa_fk, registro_fk, data_emprestimo, data_devolucao, devolvido, atrasado) values (2, 1, 20, 10/13/2020, 10/27/2020, 0, 0);
insert into Emprestimo(id_emprestimo, pessoa_fk, registro_fk, data_emprestimo, data_devolucao, devolvido, atrasado) values (3, 4, 3, 09/30/2020, 10/14/2020, 0, 1);
insert into Emprestimo(id_emprestimo, pessoa_fk, registro_fk, data_emprestimo, data_devolucao, devolvido, atrasado) values (4, 6, 13, 10/05/2020, 10/19/2020, 1, 0);
insert into Emprestimo(id_emprestimo, pessoa_fk, registro_fk, data_emprestimo, data_devolucao, devolvido, atrasado) values (5, 2, 16, 10/05/2020, 10/19/2020, 0, 1);
