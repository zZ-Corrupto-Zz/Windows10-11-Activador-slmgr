@echo off
rem Pregunta inicial al usuario
echo ¿Qué deseas hacer?
rem Acciones Principales
set /p hacer=1. Activar Windows  2. Comprobar estado de la activación 3. Desactivar Windows  4. Salir :

if %hacer%==1 goto activar
if %hacer%==2 goto comprobar
if %hacer%==3 goto desactivar
if %hacer%==4 goto exit
goto opcionInvalida

rem Comprobador de activacion de windows 
:comprobar
echo Comprobando Windows...
cscript C:\Windows\system32\slmgr.vbs /xpr
timeout 3
exit

rem Desactivador windows 
:desactivar
echo Desactivando Windows...
cscript C:\Windows\system32\slmgr.vbs /ckms
cscript C:\Windows\system32\slmgr.vbs /upk
cscript C:\Windows\system32\slmgr.vbs /cpky
exit

:activar
echo Elige tu versión de Windows 10/11 
rem Selector de versiones
set /p version=1. Windows Home  2. Windows Pro  3. Windows Enterprise  4. Windows Education :
if %version%==1 goto Home
if %version%==2 goto Pro
if %version%==3 goto Enterprise
if %version%==4 goto Education
goto opcionInvalida

rem Instalacion de licencia generica para windows edicion Home
:Home
echo Has elegido Windows Home
cscript C:\Windows\system32\slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
goto kmsfinalstep

rem Instalacion de licencia generica para windows edicion Profesional
:Pro
echo Has elegido Windows Pro
cscript C:\Windows\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
goto kmsfinalstep

rem Instalacion de licencia generica para windows edicion enterprise 
:Enterprise
echo Has elegido Windows Enterprise
cscript C:\Windows\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
goto kmsfinalstep

rem Instalacion de licencia generica para windows edicion educacion 
:Education
echo Has elegido Windows Education
cscript C:\Windows\system32\slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto kmsfinalstep

rem Una vez que el usuario selecione su version de windows se le redirige a esta parte que configura y activa con el servidor kms
:kmsfinalstep
cscript C:\Windows\system32\slmgr.vbs /skms e8.us.to
cscript C:\Windows\system32\slmgr.vbs /ato
exit

rem Si el usuario seleciona una opcion no valida se cierra el script  
:opcionInvalida
echo Opción no válida. Por favor, elige una opción válida.
exit

:exit
