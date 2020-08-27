CREATE TABLE estado (
  id_estado 	int,
  nome 	varchar(20)	not null,
  sigla 		varchar(2)	not null,
  PRIMARY KEY (id_estado)
);

CREATE TABLE municipio (
  id_municipio		int,
  nome 		varchar(20)	not null,
  estado_fk 		int		not null,
  tamanho_bancada 	int		not null,
  PRIMARY KEY (id_municipio),
  FOREIGN KEY(estado_fk) REFERENCES estado(id_estado)
);

CREATE TABLE zona (
  id_zona 		int,
  municipio_fk 		int	not null,
  PRIMARY KEY (id_zona),
  FOREIGN KEY(municipio_fk) REFERENCES municipio(id_municipio)
);

CREATE TABLE secao (
  id_secao 	int,
  zona_fk 	int	not null,
  PRIMARY KEY (id_secao),
  FOREIGN KEY(zona_fk) REFERENCES zona(id_zona)
);

CREATE TABLE partido (
  id_partido 	int,
  nome 	varchar(20)	not null,
  sigla 		varchar(5),
  PRIMARY KEY (id_partido)
);

CREATE TABLE coligacao_municipal (
  id_coligacao 		int,
  nome 		varchar(20)	not null,
  municipio_fk 		int		not null,
  PRIMARY KEY (id_coligacao),
  FOREIGN KEY(municipio_fk) REFERENCES municipio(id_municipio)
);


CREATE TABLE partido_no_municipio (
  id 		int,
  partido 	int	not null,
  coligacao 	int	not null,
  PRIMARY KEY (id),
  FOREIGN KEY(partido) REFERENCES partido(id_partido),
  FOREIGN KEY(coligacao) REFERENCES coligiacao_municipal(id_coligacao)
);

CREATE TABLE votos (
  id_votos 	int,
  zona_fk 	int	not null, 
  secao_fk 	int 	not null,
  prefeito_fk 	int	not null,
  vereador_fk 	int 	not null,
  PRIMARY KEY (id_votos),
  FOREIGN KEY(zona_fk) REFERENCES zona(id_zona),
  FOREIGN KEY(secao) REFERENCES secao(id_secao),
  FOREIGN KEY(prefeito_fk) REFERENCES candidatos(id_candidato),
  FOREIGN KEY(vereador_fk) REFERENCES candidatos(id_candidato)
);

CREATE TABLE candidatos (
  id_candidato 		int,
  nome 		varchar(30) 	not null,
  partido_fk 		int 		not null,
  numero 		int		not null,
  municipio 		int		not null,
  cargo 		char		check(cargo in (‘P’,‘V’)),
  PRIMARY KEY (id_candidato),
  FOREIGN KEY(partido_fk) REFERENCES partido(id_partido),
  FOREIGN KEY(municipio) REFERENCES municipio(id_municipio)
)
