-- @Autor: Avalos Galván María Alejandra y García López Andrés 
-- @Fecha: 03/02/21
-- @Descripcion: Creación del diccionario de datos

prompt Conectando con el usuario SYS
connect sys as sysdba

prompt CREANDO DICCIONARIO DE DATOS

prompt  CREANDO PRIMER DICCIONARIO
@?/rdbms/admin/catalog.sql

prompt CREANDO SEGUNDO DICCIONARIO 
@?/rdbms/admin/catproc.sql

prompt CREANDO TERCER DICCIONARIO 
@?/rdbms/admin/utlrp.sql


connect system as sysdba

prompt Invocando script

@?/sqlplus/admin/pupbld.sql

prompt LISTO 


