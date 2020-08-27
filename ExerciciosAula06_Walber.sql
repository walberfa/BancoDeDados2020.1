#QUESTÃO 1
insert into Estado(sgestado,nmestado) values ('SP', 'São Paulo');
insert into Estado (sgestado, nmestado) values ('RJ', 'Rio de Janeiro');
insert into Estado(sgestado,nmestado) values ('CE', 'Ceará');


#QUESTÃO 2
insert into Cidade(cdcidade, nmcidade, sgestado) values (1, 'São Paulo', 'SP');
insert into Cidade(cdcidade, nmcidade, sgestado) values (2, 'Fortaleza', 'CE');
insert into Cidade(cdcidade, nmcidade, sgestado) values (3, 'Tauá', 'CE');
insert into Cidade(cdcidade, nmcidade, sgestado) values (4, 'Campinas', 'SP');
insert into Cidade(cdcidade, nmcidade, sgestado) values (5, 'Niteroi', 'RJ');
insert into Cidade(cdcidade, nmcidade, sgestado) values (6, 'Rio de Janeiro', 'RJ');


#QUESTÃO 3
insert into Bairro(cdbairro, nmbairro, cdcidade, sgestado) values (1,'Jardins', 1, 'SP');
insert into Bairro(cdbairro, nmbairro, cdcidade, sgestado) values (2,'Aldeota', 2, 'CE');
insert into Bairro(cdbairro, nmbairro, cdcidade, sgestado) values (3,'Tauázinho', 3, 'CE');
insert into Bairro(cdbairro, nmbairro, cdcidade, sgestado) values (4,'Aeroporto', 3, 'SP');
insert into Bairro(cdbairro, nmbairro, cdcidade, sgestado) values (5,'Aeroporto', 6, 'RJ');


#QUESTÃO 4
insert into Vendedor(cdvendedor, nmvendedor, nmendereco, email) values (1,'Maria da Silva', 'Rua do Grito, 45', 'msilva@novatec.com.br');
insert into Vendedor(cdvendedor, nmvendedor, nmendereco, email) values (2,'Marcos Andrade', 'Av. da Saudade, 325', 'mandrade@novatec.com.br');
insert into Vendedor(cdvendedor, nmvendedor, nmendereco, email) values (3,'Andre Cardoso', 'Av Brasil , 401', 'acardoso@novatec.com.br');
insert into Vendedor(cdvendedor, nmvendedor, nmendereco, email) values (4,'Tatiana Souza', 'Rua do Imperador, 778', 'tsouza@novatec.com.br');

#QUESTÃO 5
insert into Imovel(cdimovel, cdvendedor, cdbairro, cdcidade, sgestado, nmendereco, nrareautil, nrareatotal, preco, imovel_indicado) values (1,1,1,1, 'SP', 'AL Tiete, 3304 ap 101', 250, 400, 180000, null);
insert into Imovel(cdimovel, cdvendedor, cdbairro, cdcidade, sgestado, nmendereco, nrareautil, nrareatotal, preco, imovel_indicado) values (2,1,2,1, 'SP', 'Av Morumbi, 2230', 150, 250, 135000,1);
insert into Imovel(cdimovel, cdvendedor, cdbairro, cdcidade, sgestado, nmendereco, nrareautil, nrareatotal, preco, imovel_indicado) values (3,2,1,1, 'RJ', 'R Gal Osório, 445 AP 34', 250, 400, 185000, 2);
insert into Imovel(cdimovel, cdvendedor, cdbairro, cdcidade, sgestado, nmendereco, nrareautil, nrareatotal, preco, imovel_indicado) values (4,2,2,1, 'RJ', 'R D. Pedro I, 882', 120, 200, 110000, 1);
insert into Imovel(cdimovel, cdvendedor, cdbairro, cdcidade, sgestado, nmendereco, nrareautil, nrareatotal, preco, imovel_indicado) values (5,3,3,1, 'SP', 'AV Rubem Berta, 2355', 110, 200, 95000, 4);
insert into Imovel(cdimovel, cdvendedor, cdbairro, cdcidade, sgestado, nmendereco, nrareautil, nrareatotal, preco, imovel_indicado) values (6,4,1,1, 'RJ', 'R. Getulio Vargas, 552', 200, 300, 99000, 5);


#QUESTÃO 6
insert into Comprador(cdcomprador, nmcomprador, nmendereco, email) values (1,'Emmanuel Antunes', 'R Saraiva, 452', 'eantunes@novatec.com.br');
insert into Comprador(cdcomprador, nmcomprador, nmendereco, email) values (2,'Joana Pereira', 'Av Portugal, 52', 'jpereira@novatec.com.br');
insert into Comprador(cdcomprador, nmcomprador, nmendereco, email) values (3, 'Ronaldo Campelo', 'R Estados Unidos, 790', 'rcampelo@novatec,com.br');
insert into Comprador(cdcomprador, nmcomprador, nmendereco, email) values (4, 'Mandred Augusto', 'Av Brasil, 351', 'maugusto@novatec,com.br');

#Questão 7
insert into Oferta(cdcomprador, cdimovel, vlooferta, dtoferta) values (1, 1, 170000, 2002-01-10);
insert into Oferta(cdcomprador, cdimovel, vlooferta, dtoferta) values (1, 3, 180000, 2002-01-10);
insert into Oferta(cdcomprador, cdimovel, vlooferta, dtoferta) values (2, 2, 135000, 2002-02-15);
insert into Oferta(cdcomprador, cdimovel, vlooferta, dtoferta) values (2, 4, 100000, 2002-02-15);
insert into Oferta(cdcomprador, cdimovel, vlooferta, dtoferta) values (3, 1, 160000, 2002-01-05);
insert into Oferta(cdcomprador, cdimovel, vlooferta, dtoferta) values (3, 2, 140000, 2002-02-20);

#Questão 8
update Imovel set preco = preco * 1.1;

#Questão 9
update Imovel set preco = preco * 0.95 where cdvendedor = 1;

#Questão 10
update Oferta set vlooferta = vlooferta * 1.05 where cdcomprador = 2;

#Questão 11
update Comprador set nmendereco = 'Rua Ananás, 45', sgestado = 'RJ' where cdcomprador = 3;

#Questão 12
update Oferta set vlooferta = 101000 where cdcomprador = 2 and cdimovel = 4;

#Questão 13
delete from Oferta where cdcomprador = 3 and cdimovel = 1;

#Questão 14
delete from Cidade where cdcidade = 3 and sgestado = 'SP';

#Questão 15
insert into Faixa_Imovel (cdfaixa, nmfaixa, vlminimo, vlmaximo) values (1, 'baixo', 0, 105000);
insert into Faixa_Imovel (cdfaixa, nmfaixa, vlminimo, vlmaximo) values (2, 'médio', 105001, 180000);
insert into Faixa_Imovel (cdfaixa, nmfaixa, vlminimo, vlmaximo) values (3, 'alto', 180001, 999999)
