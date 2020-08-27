create table Vendedor (
cdvendedor		integer			primary key,
nmvendedor 	varchar(40),
nmendereco		varchar(40),
nrcpf			decimal(11)		unique,
nmcidade		varchar(20),
nmbairro		varchar(20),
sgestado		char(2),
telefone		varchar(20),
email 			varchar(80)
);

create table Comprador(
cdcomprador		integer			primary key,
nmcomprador		varchar(40),
nmendereco			varchar(40),
nrcpf				decimal(11)		unique,
nmcidade			varchar(20),
nmbairro			varchar(20),
sgestado			char(2),
telefone			varchar(20),
email 				varchar(80)
);

create table Estado(
sgestado	char(2)		primary key,
nmestado	varchar(20)
);

create table Cidade(
cdcidade	integer		primary key,
nmcidade	varchar(20),
sgestado	char(2),
foreign key(sgestado) references Estado(sgestado)
);

create table Bairro(
cdbairro	integer		primary key,
nmbairro	varchar(20),
cdcidade	integer,
sgestado	char(2),
foreign key(cdcidade) references Cidade(cdcidade),
foreign key(sgestado) references Estado(sgestado)
);

create table Imovel (
cdimovel		integer		primary key,
cdvendedor		integer,
cdbairro		integer	,
cdcidade		integer,
sgestado		char(2),
nmendereço		varchar(40),
nrareautil		decimal(10,2),
nrareatotal		decimal(10,2),
dsimovel		varchar(300),
vlpreco			decimal(16,2),
nrofertas		integer,
stvendido		char(1),
dtlancto		date,
imovel_indicado		integer,
check(preco > 0),
foreign key(cdvendedor) references Vendedor(cdvendedor),
foreign key(cdbairro)	references Bairro(cdbairro),
foreign key(cdcidade)	references Cidade(cdcidade),
foreign key(sgestado)	references Estado(sgestado)
);

create table Oferta(
cdimovel		integer,
cdcomprador	integer,
vlooferta		numeric(16,2),
dtoferta		date,
foreign key(cdimovel) references Imovel(cdimovel),
foreign key(cdcomprador)	references Comprador(cdcomprador)
);

create table Faixa_Imovel (
cdfaixa	integer		primary key,
nmfaixa	varchar(30),
vlminimo	decimal(14,2),
vlmaximo	decimal(14,2),
check(vlminimo > 0),
check(vlmaximo > 0)
)

