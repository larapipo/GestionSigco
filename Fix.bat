echo C:\gestion\tablas ib\gestionv3.lar
SET ISC_USER=SYSDBA
SET ISC_PASSWORD=regulador
gfix -v -full xx.gdb
gfix -mend -full -ignore C:\gestion\tablas ib\gestionv3.lar
gfix -v -full C:\gestion\tablas ib\gestionv3.lar
gbak -backup -v -ignore -garbage -limbo C:\gestion\tablas ib\gestionv3.lar C:\gestion\tablas ib\gestionv3.gbk
gfix -write sync -user sysdba -password masterkey C:\gestion\tablas ib\gestionv3.lar
exit
