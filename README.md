# # Windows10-11-Activador-slmgr

Script activador de windows 10 y windows 11 en sus versiones 
Home,Profesional,Enterprise,Education.


### ⚠Descargo de Responsabilidad⚠

El desarrollador de este script (yo [zZ-Corrupto-Zz](https://github.com/zZ-Corrupto-Zz) ) no me hago responsable del mal uso que se le pueda dar a este script,esto es un trabajo de investigación personal que es le puede dar uso legal en una organización cambiando las claves genericas y el host de activación por la de la organización que haya comprado las licencias legalmente.

Si eres una empresa usando este script de activacion sin cambiar las claves y el host de activacion ,estas lucrandote mediante la pirateria de licencias,esto es un delito.

Si eres un usuario normal puede usar este script tal cual,ya que tienes derecho a copia propia [Ley 23/2006, de 7 de julio del BOE](https://www.boe.es/buscar/doc.php?id=BOE-A-2006-12308) - en España.

### Pre-requisitos 📋

Para ejecutar el script se ha de ejecutar en modo adminstrador,ya que se esta usando otro script interno de windows (slmgr.vbs).

```
Ejemplo del codigo para activar windows 10 Pro
:Pro

echo Has elegido Windows Pro

cscript C:/Windows/system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX

cscript C:/Windows/system32\slmgr.vbs /skms s8.uk.to

cscript C:/Windows/system32\slmgr.vbs /ato

exit
```

### ¿Como Funciona? 🔧

Para hacer uso de este script tenemos 4 opciones nada mas ejecutarlo.

La primera opción nos lleva a otro menu que contempla las ediciones de windows soportadas para realizar la activación. 
```

1.Activar Windows 

:activar

echo Escoje tu version de Windows 10/11

set /p version= 1. Windows Home  2. Windows Pro  3. Windows Enterprise  4. Windows Education :

if %version%==1 goto Home

if %version%==2 goto Pro

if %version%==3 goto Enterprise

if %version%==4 goto Education
```

Una vez que haya escojido la edición de windows,se ejecutara la correspondiente variable para proceder con la activación. 

 ```
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
```

La segunda opcion se encarga de comprobar el estado de la activacion de windows mediante el script interno de windows (slmgr.vbs),a su vez se añade un timeout de 10 segundos para dar al usuario leer la información de la activacion

```
2.Comprobar estado de la activación

:comprobar

echo Comprobar windows...

cscript C:/Windows/system32\slmgr.vbs /xpr

timeout 10

exit

```

La tercera opcion se encarga de quitar la clave de activacion de windows,por ende se desactiva windows.

```
3. Desactivar windows
:desactivar

echo Desactivando windows...

cscript C:/Windows/system32\slmgr.vbs /upk

exit

```


## Recursos usados 🛠️

[Claves de activacion de windows](https://learn.microsoft.com/en-us/windows-server/get-started/kms-client-activation-keys) - Pagina que contiene las claves de activacion.

[Comandos de activacion de windows](https://learn.microsoft.com/es-es/windows-server/get-started/activation-slmgr-vbs-options) - Pagina que contiene los comandos usados en este script.

[Host de activación ](https://s8.uk.to/) - Host de activacion generico usado en las pruebas.

## Fallos encontrados 🐛
[Apartado issues](https://github.com/zZ-Corrupto-Zz/Windows10-11-Activador-slmgr/issues) - Reporta fallos en este apartado 
Si se encuentra un fallo usando este script por favor abre una incidencia.

## Contribuyendo 🖇️
Acepto peticiones de pull request para mejor el codigo del proyecto,estas peticiones seran revisadas por el desarrollador del proyecto.

## Autores ✒️
*  *Trabajo Inicial* - [zZ-Corrupto-Zz](https://github.com/zZ-Corrupto-Zz) 

## Licencia 📄
Este proyecto está bajo la Licencia #GNU General Public License v3.0 - mira el archivo [https://github.com/zZ-Corrupto-Zz/Windows10-11-Activador-slmgr/blob/main/LICENSE](LICENSE) para mas información.

## Expresiones de Gratitud 🎁

Si te ha encantado este script darle a la estrella,sirve de ayuda.


Realizado con ❤ por [zZ-Corrupto-Zz](https://github.com/zZ-Corrupto-Zz) 
