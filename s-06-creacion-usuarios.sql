-- @Autor: Avalos Galván María Alejandra y García López Andrés 
-- @Fecha: 03/02/21
-- @Descripcion: Creación de usuarios 

create user objetos_avag identified by avag
default tablespace objetos_tbs01
quota unlimited on objetos_tbs01
quota unlimited on comprador_tbs01 
quota unlimited on indices_tbs01
quota unlimited on foto__objeto_tbs01
quota unlimited on foto_comprador_tbs01

create user comprador_avag identified by avag
default tablespace objetos_tbs01
quota unlimited on objetos_tbs01
quota unlimited on comprador_tbs01 
quota unlimited on indices_tbs01
quota unlimited on foto__objeto_tbs01
quota unlimited on foto_comprador_tbs01;

grant create session, create table, create procedure,
create sequence to objetos_avag;

grant create session, create table, create procedure,
create sequence to comprador_avag;

grant create synonym, create public synonym to objetos_avag;
grant create synonym to comprador_avag;