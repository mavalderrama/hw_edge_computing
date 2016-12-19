HTTPclient con Digilent ZYBO y uC/OS
======================

>**Nota:**

> - Los procedimientos aquí realizados pueden ser llevados a cualquiera de la familia Zynq7000 de Xilinx e incluso aplicados a MicroBlaze.

----------


Requerimientos
-------------
> - Suite de Xilinx 2015.4 (Vivado, Xilinx SDK).
> - Repositorio de uC/OS [Descarga](https://goo.gl/C8aKfV).
> - Cuenta de proveedor de servicios de nube. Ej: [Ubidots.com](https://ubidots.com/)
> - Repositorio de github [Clonar](https://github.com/mavalderrama/ZYBOucosHTTP.git).


 <i class="icon-file"></i> Procedimiento con Xilinx Vivado

> - Con Vivado abrir el proyecto ubicado en **\zybo_bsd\zybo_bsd.xpr** del repositorio de github.
> - Seguir el procedimiento descrito por el desarrollador del RTOS para la compilación del hardware [www.micrimum.com](https://goo.gl/SFR20C)
> - Una vez compilado el **.hdf** exportarlo como se indica marcando **Include bitstream** y **Local to Proyect**.

<i class="icon-file"></i>Procedimiento con Xilinx SDK

Luego de exportar la definición de hardware en Vivado, es necesario incluir el repositorio de uC/OS en XSDK.

> - Abrir Xilinx SDK.
> - El directorio de trabajo **Workspace** debe apuntar al directorio **zybo_bsd\zybo_bsd.sdk** del repositorio de github.
> - Incluir el repositorio del sistema operativo como se indica en [www.micrium.com](https://doc.micrium.com/display/UCOSXSDK/Installation)

<i class="icon-file"></i>Modificación del token de acceso a Ubidots.com

<i class="icon-file"></i>Correr el software en la tarjeta

> - Conectar la tarjeta al computador.
> - Presionar el botón **Run** y a continuación **Init**.
> - Conectar la consola serial de preferencia al puerto que le asignó Windows o Linux.