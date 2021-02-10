-- @Autor: Avalos Galván María Alejandra y García López Andrés 
-- @Fecha: 03/02/21
-- @Descripcion: Creación de TableSpace 

create tablespace objetos_tbs01
datafile '/u01/app/oracle/oradata/AVAG/disK1/datafiles/objetos_tbs01.dbf' size 30M
autoextend on next 10M maxsize 80M
extent management local autoallocate; 

create tablespace comprador_tbs01
datafile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/comprador_tbs01.dbf' size 30M
autoextend on next 10M maxsize 80M
extent management local autoallocate;

create tablespace indices_tbs01
datafile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/indices_tbs01.dbf' size 2M
autoextend on next 10M maxsize 80M
extent management local autoallocate;


--CREACION TABLESPACES BLOB
create tablespace foto__objeto_tbs01
datafile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/foto__objeto_tbs01.dbf' size 200M
autoextend on next 100M maxsize 1G
extent management local autoallocate;

create tablespace foto_comprador_tbs01
datafile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/foto_comprador_tbs01.dbf' size 200M
autoextend on next 100M maxsize 1G
extent management local autoallocate;

