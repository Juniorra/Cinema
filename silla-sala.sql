CREATE SCHEMA cine;
CREATE TABLE cine.sala(
    id int not null,
    cantidad int not null,
    tipo varchar(3) not null,
    tamano int not null,
    primary key (id)
);
CREATE TABLE cine.silla(
    id int not null,
    fk_sala int not null,
    color varchar(15) not null,
    fila int not null,
    columna int not null,
    primary key (id),
    CONSTRAINT fk_EQ FOREIGN KEY (fk_sala)
         	REFERENCES cine.sala (id)
);

