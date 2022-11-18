@echo off

echo ¿Que deseas hacer?
set /p hacer= 1. Activar windows  2.Comprobar estado de la activación 3. Desactivar windows  4. Salir :

if %hacer%==1 goto activar
if %hacer%==2 goto comprobar
if %hacer%==3 goto desactivar
if %hacer%==4 goto exit

:comprobar
echo Comprobar windows...
cscript C:/Windows/system32\slmgr.vbs /xpr
timeout 3
exit

:desactivar
echo Desactivando windows...
cscript C:/Windows/system32\slmgr.vbs /upk
exit

:activar
echo Escoje tu version de Windows 10/11 
set /p version= 1. Windows Home  2. Windows Pro  3. Windows Enterprise  4. Windows Education :
if %version%==1 goto Home
if %version%==2 goto Pro
if %version%==3 goto Enterprise
if %version%==4 goto Education

:Home
echo Has elegido Windows Home
cscript C:/Windows/system32\slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
cscript C:/Windows/system32\slmgr.vbs /skms s8.uk.to
cscript C:/Windows/system32\slmgr.vbs /ato
exit

:Pro
echo Has elegido Windows Pro
cscript C:/Windows/system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
cscript C:/Windows/system32\slmgr.vbs /skms s8.uk.to
cscript C:/Windows/system32\slmgr.vbs /ato
exit

:Enterprise
echo Has elegido Windows Enterprise
cscript C:/Windows/system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
cscript C:/Windows/system32\slmgr.vbs /skms s8.uk.to
cscript C:/Windows/system32\slmgr.vbs /ato
exit

:Education
echo Has elegido Windows Education
cscript C:/Windows/system32\slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
cscript C:/Windows/system32\slmgr.vbs /skms s8.uk.to
cscript C:/Windows/system32\slmgr.vbs /ato
exit