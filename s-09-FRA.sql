-- @Autor: Avalos Galván María Alejandra y García López Andres 
-- @Fecha: 06/02/21
-- @Descripcion: Script que modifica los parametros para habilitar la FRA

prompt Conectando con SYS
connect sys a sysdba

prompt Modificando tamaño

alter system set db_recovery_file_dest_size=VALOR  scope=both;

prompr Modificando ruta

alter system set db_recovery_file_dest='/u01/app/oracle/oradata/AGAV/disk1' scope=both;

prompt Modificando periodo de retencion

alter system set db_flashback_retention_target=Valor scope=both;
