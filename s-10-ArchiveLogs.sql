-- @Autor:Avalos Galván María Alejandra y García López Andrés 
-- @Fecha: 06/02/21
-- @Descripcion: Script que modifica los parametros para habilitar el sistema de archivado de logs

prompt Modificando parametros
prompt Asignando procesos de ARCn

alter system set log_archive_max_processes=5 scope=spfile;

prompt Modificando rutas de las copias (seran dos copias)

alter system set log_archive_dest_1='LOCATION=/u01/app/oracle/oradata/AGAV/disco1/archivelogs/AGAV/disk_a MANDATORY' scope=spfile;

alter system set log_archive_dest_2='LOCATION=USE_DB_RECOVERY_FILE_DEST' scope=spfile;

prompt Modificando el Formato de nombrado

alter system set log_archive_format='arch_agav_%t_%s_%r.arc' scope=spfile;

prompt Modificando Politica de redundancia.

alter system set log_archive_min_succeed_dest=1 scope=spfile;

prompt alterando la base

alter database mount;

prompt Ejecutando instruccion archivelog;

alter database archivelog;

Prompt Cambio