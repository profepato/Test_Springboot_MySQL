-- Basado en https://spring.io/guides/gs/accessing-data-mysql/

CREATE DATABASE bd_usuarios;

USE bd_usuarios;

CREATE TABLE usuario(
    id INT AUTO_INCREMENT,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    PRIMARY KEY(id)
);

INSERT INTO usuario VALUES(NULL, 'Pato Pérez Pinto', 'pato@gmail.com');

SELECT * FROM usuario;


CREATE USER 'springuser'@'localhost' IDENTIDIED BY '123456';
GRANT ALL ON bd_usuarios.* TO 'springuser'@'localhost';