# Test Springboot y MySQL con Maven
Basado en [este Ejemplo de página oficial](https://spring.io/guides/gs/accessing-data-mysql/).
## Ejecutar el siguiente script MySQL
```sql
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
```

## Crear proyecto Netbeans (Maven)
En netbeans se debe crear un proyecto Maven --> Java Application. Escoja el nombre que quiera.

## Añadir lo siguiente a archivo pom.xml
```xml
<parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>2.0.5.RELEASE</version>
</parent>
```
```xml
<dependencies>
    <!-- Proyecto web Springboot -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
        
     <!-- Use MySQL Connector-J -->
     <dependency>
         <groupId>mysql</groupId>
         <artifactId>mysql-connector-java</artifactId>
     </dependency>

      <!-- JPA Data (Lo usaremos para Repositorios, Entidades, Hibernate, etc...) -->
      <dependency>
          <groupId>org.springframework.boot</groupId>
          <artifactId>spring-boot-starter-data-jpa</artifactId>
      </dependency>
      
      <!-- Para hacer pruebas (No utilizado para este ejemplo) -->
      <dependency>
          <groupId>org.springframework.boot</groupId>
          <artifactId>spring-boot-starter-test</artifactId>
          <scope>test</scope>
      </dependency>
</dependencies>
```

## En netbeans...
Click secundario sobre el proyecto:
* Clean and build...
* Build with Dependencies

## Crear application.properties
Es en este archivo donde se le dan ciertas configuraciones al proyecto. 
La ubicación de este archivo, en el proyecto netbeans, es la siguiente: 
```
Other sources --> src/main/resources
```
IMPORTANTE!: en es esa ruta donde debe quedar ubicado dicho archivo. 
Crear archivo __application.properties__.

## application.properties
```
# none This is the default for MySQL, no change to the database structure.
# update Hibernate changes the database according to the given Entity structures.
# create Creates the database every time, but don’t drop it when close.
# create-drop Creates the database then drops it when the SessionFactory closes.

spring.jpa.hibernate.ddl-auto=update
spring.datasource.url=jdbc:mysql://localhost:3306/bd_usuarios
spring.datasource.username=springuser
spring.datasource.password=123456
```
