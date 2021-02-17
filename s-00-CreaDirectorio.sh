#@Autores: Avalos Galván María Alejandra y García López Andrés 
#@Fecha de creacion: 01/02/2020
#@Descripcion:Crea toda la estructura de directorios para la base de datos

echo "--Creando SID--"
export ORACLE_SID=avag
echo "EL ORACLE_SID ES: ${ORACLE_SID}"

cd /u01/app/oracle/oradata

pwd

echo "----Creando directorios----"
mkdir -p AVAG/{disk1,disk2,disk3}
mkdir -p AVAG/disk1/{controlfiles,redo,datafiles,loopdevices,backups,archivelogs/AVAG/disk_a,fra}
mkdir -p AVAG/disk2/{controlfiles,redo}
mkdir -p AVAG/disk3/{controlfiles,redo}

echo "----Estableciendo dueño y grupo de directorios----"
chown oracle -R /u01/app/oracle/oradata/AVAG

echo "----Cambiando grupos a oinstall----"
chgrp -R oinstall /u01/app/oracle/oradata/AVAG

echo "----Estableciendo permisos----"
chmod 775 /u01/app/oracle/oradata/AVAG