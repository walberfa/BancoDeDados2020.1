CREATE TABLE departamento (
  codigo	int, 
  nome  	varchar(30)	not null,
  descricao	varchar(300)	not null,
  PRIMARY KEY (codigo)
);

CREATE TABLE curso (
  id_curso 		int, 
  nome   		varchar(30)	not null, 
  departamento_fk 	int		not null,
  PRIMARY KEY (id_curso),
  FOREIGN KEY(departamento_fk) REFERENCES departamento(codigo)
);

CREATE TABLE aluno (
    matricula 	int,
    nome 	varchar(30)	not null,
    curso_fk 	int		not null,
    cpf 		varchar(11),
    data_Nasc 	date,
    endereco	varchar(60),
    sexo 	char		check(sexo in (‘M’,‘F’)),
    PRIMARY KEY (matricula),
    FOREIGN KEY(curso) REFERENCES curso(id_curso)
);

CREATE TABLE disciplina (
  id_disciplina 		int,
  nome 		varchar(20)	not null,
  curso_fk 		int		not null,
  pre_requisito 	int[],
  PRIMARY KEY (id_disciplina),
  FOREIGN KEY (curso_fk) REFERENCES curso(id_curso),
  FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
);

CREATE TABLE disciplina_aluno (
  id_disciplina_aluno 		int,
  matriculado 			boolean,
  concluiu 			boolean,
  disciplina_fk 			int	not null,
  aluno_fk 			int	not null,
  PRIMARY KEY (id_disciplina_aluno),
  FOREIGN KEY (disciplina_fk) REFERENCES disciplina(id_disciplina),
  FOREIGN KEY (aluno_fk) REFERENCES aluno(matricula)
);

CREATE TABLE disciplina_curso (
  id_disciplina_curso 	int,
  obrigatória 		boolean,
  disciplina_fk 		int	not null,
  curso_fk 		int	not null,
  PRIMARY KEY (id_disciplina_curso),
  FOREIGN KEY (disciplina_fk) REFERENCES disciplina(id_disciplina),
  FOREIGN KEY (curso_fk) REFERENCES curso(id_curso)
)
