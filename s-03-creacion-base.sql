-- @Autor: Avalos Galván María Alejandra y García López Andrés 
-- @Fecha: 03/01/21
-- @Descripcion: Creación de la base de datos


create database avagproy
	user sys identified by system3
	user system identified by system3
	logfile group 1 (
		'/u01/app/oracle/oradata/AVAG/disk1/redo/redo01a.log',
		'/u01/app/oracle/oradata/AVAG/diskk2/redo/redo01b.log',
		'/u01/app/oracle/oradata/AVAG/disk3/redo/redo01c.log') size 50m blocksize 512,
	group 2 (
		'/u01/app/oracle/oradata/AVAG/disk1/redo/redo02a.log',
		'/u01/app/oracle/oradata/AVAG/disk2/redo/redo02b.log',
		'/u01/app/oracle/oradata/AVAG/disk3/redo/redo02c.log') size 50m blocksize 512,
	group 3 (
		'/u01/app/oracle/oradata/AVAG/disk1/redo/redo03a.log',
		'/u01/app/oracle/oradata/AVAG/disk2/redo/redo03b.log',
		'/u01/app/oracle/oradata/AVAG/disk3/redo/redo03c.log') size 50m blocksize 512
	maxloghistory 1
	maxlogfiles 16
	maxlogmembers 3
	maxdatafiles 1024
	character set AL32UTF8
	national character set AL16UTF16
	extent management local
	datafile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/system01.dbf'
		size 700m reuse autoextend on next 10240k maxsize unlimited
	sysaux datafile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/sysaux01.dbf'
		size 550m reuse autoextend on next 10240k maxsize unlimited
--	default tablespace users
--		datafile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/users01.dbf'
--		size 500m reuse autoextend on maxsize unlimited
	default temporary tablespace tempts1
		tempfile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/temp01.dbf'
		size 20m reuse autoextend on next 640k maxsize unlimited
	undo tablespace undotbs1
		datafile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/undotbs01.dbf'
		size 200m reuse autoextend on next 5120k maxsize unlimited
	user_data tablespace usertbs
		datafile '/u01/app/oracle/oradata/AVAG/disk1/datafiles/usertbs01.dbf'
		size 200m reuse autoextend on maxsize unlimited;
		
	--2.-
	alter user sys identified by system3;
	alter user system identified by system3;