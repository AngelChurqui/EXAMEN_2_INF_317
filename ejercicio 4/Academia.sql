create table profesores(
	id_prof int primary key,
	nombre varchar(50),
	apellido varchar(50),
	gmail	varchar(50),
	telefono	int,
	especialidad	varchar(50)
);
GO

create table alumnos(
	id_alm	int primary key,
	nombre	varchar(50),
	apellidos	varchar(50),
	fec_nac	varchar(50),
	gmail	varchar(50),
	ci	varchar(50)
);
GO
create table usuarios(
	id_usuario int primary key,
	usuario	varchar(50),
	pasword	varchar(50)
);
GO
create table periodo(
	id_per	int primary key,
	periodo	int
);
GO
create table turno(
	id_tur int primary key,
	turno	varchar(50)
);
GO
create table matricula(
	id_mat int primary key,
	tipo_mat	varchar(50),
	fec_mat	varchar(50),
	id_alm int,
	id_tur int,
	id_usuario int,
	CONSTRAINT fk_alumno FOREIGN KEY (id_alm)
    REFERENCES alumnos (id_alm),
	CONSTRAINT fk_turno FOREIGN KEY (id_tur)
    REFERENCES turno (id_tur),
	CONSTRAINT fk_usuario FOREIGN KEY (id_usuario)
    REFERENCES usuarios (id_usuario),
);
GO
create table materias(
	id_mate	int primary key,
	materia	varchar(50),
	id_prof	int,
	CONSTRAINT fk_profesores FOREIGN KEY (id_prof)
	REFERENCES profesores (id_prof)
);
GO
create table notas(
	id_not	int primary key,
	nota	int,
	id_mate	int,
	id_per	int,
	id_alm	int,
	CONSTRAINT fk_materia FOREIGN KEY (id_mate)
    REFERENCES materias (id_mate),
	CONSTRAINT fk_periodo FOREIGN KEY (id_per)
    REFERENCES periodo (id_per),
	CONSTRAINT fk_alumno1 FOREIGN KEY (id_alm)
    REFERENCES alumnos (id_alm)
);
GO
insert into alumnos values(1,'Juan','Mendoza','10/12/2000','JuanM@gmail.com','7088281');
insert into alumnos values(2,'Viviana','Garcia','11/11/1999','VivianaG@gmail.com','183291');
insert into alumnos values(3,'Arturo','Iturri','19/09/1999','IturriA@gmail.com','7811923');
insert into alumnos values(4,'Rosario','Mendoza','14/12/2000','RosarioM@gmail.com','6839123');
insert into alumnos values(5,'Marianela','Lopez','15/06/1998','MarianelaL@gmail.com','1012466');
insert into alumnos values(6,'Maycol','Gutierrez','30/03/1997','MaycolG@gmail.com','912075');
insert into alumnos values(7,'Cazandra','Poma','11/03/1998','CazandraP@gmail.com','7037311');
insert into alumnos values(8,'Pablo','Lorenze','01/12/1998','PabloL@gmail.com','8461286');
insert into alumnos values(9,'Federico','Zolaman','13/09/1999','FedericoZ@gmail.com','9987401');
insert into alumnos values(10,'Mercedes','Alvarez','20/05/1999','MercedesA@gmail.com','3015213');
insert into alumnos values(11,'Juaquin','Barrios','18/02/2001','JuaquinB@gmail.com','9012657');

select * from alumnos;

insert into turno values(1,'Turno Mañana');
insert into turno values(2,'Turno Tarde');
insert into turno values(3,'Turno Noche');


select * from turno;


insert into periodo values(1,'2011');
insert into periodo values(2,'2012');
insert into periodo values(3,'2013');
insert into periodo values(4,'2014');
insert into periodo values(5,'2015');
insert into periodo values(6,'2016');
insert into periodo values(7,'2017');
insert into periodo values(8,'2018');
insert into periodo values(9,'2019');
insert into periodo values(10,'2020');

select * from periodo;


insert into usuarios values(1,'JuanMendoza','7088281');
insert into usuarios values(2,'VivianaGarcia','183291');
insert into usuarios values(3,'ArturoIturri','7811923');
insert into usuarios values(4,'RosarioMendoza','6839123');
insert into usuarios values(5,'MarianelaLopez','1012466');
insert into usuarios values(6,'MaycolGutierrez','912075');
insert into usuarios values(7,'CazandraPoma','7037311');
insert into usuarios values(8,'PabloLorenze','8461286');
insert into usuarios values(9,'FedericoZolaman','9987401');
insert into usuarios values(10,'MercedesAlvarez','3015213');
insert into usuarios values(11,'JuaquinBarrios','9012657');

select * from usuarios;


insert into profesores values(1,'Marcos','Manriquez','MarcosM@gmail.com','78814611','Informatica');
insert into profesores values(2,'Rodolfo','Castillo','RodolfoC@gmail.com','76543211','Matematicas');
insert into profesores values(3,'Carol','Mollericona','CarolM@gmail.com','71977676','Biologia');
insert into profesores values(4,'Gleen','Munch','GleenM@gmail.com','60588889','Historia');
insert into profesores values(5,'Juana','Manzana','JuanaM@gmail.com','70346791','Artes');
insert into profesores values(6,'Brayan','Bravo','BrayanBr@gmail.com','67612936','Matematicas');
insert into profesores values(7,'Oliver','Pastor','OliverP@gmail.com','68910291','Idiomas');
insert into profesores values(8,'Dionisio','Luke','DionisioL@gmail.com','77171709','Quimica');
insert into profesores values(9,'Jose','Guzman','JoseG@gmail.com','75634098','Historia');
insert into profesores values(10,'Ricardo','Chavez','RicardoCh@gmail.com','69012340','Biologia');

select * from profesores;


insert into materias values(1,'Informatica',1);
insert into materias values(2,'Matematicas I',2);
insert into materias values(3,'Biologia',3);
insert into materias values(4,'Historia',4);
insert into materias values(5,'Artes',5);
insert into materias values(6,'Matematicas II',6);
insert into materias values(7,'Idiomas',7);
insert into materias values(8,'Quimica I',8);
insert into materias values(9,'Historia II',9);
insert into materias values(10,'Biologia III',10);

select * from materias;


insert into notas values(1,51,1,1,1);
insert into notas values(2,99,2,2,2);
insert into notas values(3,73,3,3,3);
insert into notas values(4,51,4,4,4);
insert into notas values(5,79,5,5,5);
insert into notas values(6,66,6,6,6);
insert into notas values(7,30,7,7,7);
insert into notas values(8,48,8,8,8);
insert into notas values(9,58,9,9,9);
insert into notas values(10,60,10,10,10);


select * from notas;


insert into matricula values(1,'Regular','13/02/2011',1,2,1);
insert into matricula values(2,'Regular','13/02/2012',2,3,2);
insert into matricula values(3,'Regular','13/02/2013',3,2,3);
insert into matricula values(4,'Regular','13/02/2014',4,3,4);
insert into matricula values(5,'Regular','13/02/2015',5,1,5);
insert into matricula values(6,'Regular','13/02/2016',6,1,6);
insert into matricula values(7,'Regular','13/02/2017',7,1,7);
insert into matricula values(8,'Regular','13/02/2018',8,3,8);
insert into matricula values(9,'Regular','13/02/2019',9,2,9);
insert into matricula values(10,'Regular','13/02/2020',10,3,10);


select * from matricula;