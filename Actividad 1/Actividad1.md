
# **Actividad 1**
#### **Sistemas Operativos 1**
___

## **INDICE**
  - [**RESPONSABLES**](#responsables)
  - [**TIPOS DE KERNEL Y SUS CARACTERiSTICAS**](#tipos-de-kernel-y-sus-caracteristicas)
  - [**USER VS KERNEL MODE**](#user-vs-kernel-mode)
  - [**INTERRUPTIONS VS TRAPS**](#interruptions-vs-traps)

  
___
## **RESPONSABLES**

|No.| Nombre |
|:-:| ------ | 
|1| Saúl Jafet Menchú Recinos |


___
## **KERNEL**
El kernel es el núcleo del sistema operativo, es el intermediario entre el software y el hardware. Este controla los accesos a la memoria, el procesador y los controladores.

## **TIPOS DE KERNEL Y SUS CARACTERiSTICAS**

- **Microkernel**: diseñados con pequeños tamaños, su función principal es de evitar el colapso total del sistema en caso de fallo. Cuenta con diferentes módulos para poder cumplir todas las tareas. OS X es el único que utiliza el microkernel.

- **Monolíticos**: se encarga de la gestión de memoria, procesos, como de la comunicación entre ellos y el soporte de funciones de los drivers y el hardware. Es de gran tamaño. Algunos software con este tipo de kernel son  Linux, OS X y Windows

- **Híbrido**: es una combinación entre el microkernel y monolítico. Es grande, pero con un diseño compacto, puede ser modulado y otras partes del mismo Kernel pueden cargarse de manera dinámica. Utilizado en Linux y OS X.

- **Anykernel**: kernel con cualidades de los monolíticos. Facilitar el desarrollo de los controladores y al mismo tiempo que ofrece mayor seguridad al usuario. 

- **Exokernel**: con estructura innovadora de manera vertical. Los núcleos son pequeños y su desarrollo tiene fines investigativos. Los programas son responsables de decidir cómo utilizar los recursos del hardware en ciertas bibliotecas. El Kernel se limita a evitar errores en los permisos de hardware y evitar conflictos.

- **Nanokernel**: de un tamaño muy reducido en comparación con los monolíticos. Su uso está destinado a sistemas embebidos por su mayor nivel de fiabilidad. 

- **Unikernel**: está destinado a la eliminación de capas intermedias entre el hardware y las aplicaciones. Busca simplificar los procesos lo más posible. Es utilizado en dispositivos de bajo consumo como los de IoT.


___
## **USER VS KERNEL MODE**

- **User**: en este modo, los programas en ejecución tienen un limitado acceso a un conjunto de recursos y no pueden realizar operaciones que puedan afectar directamente al sistema operativo u otros programas. Los programas en modo user tienen ciertas restricciones para garantizar la estabilidad y seguridad del sistema. La mayoría de las aplicaciones y programas de usuario comunes se ejecutan en modo user.

- **Kernel mode**: en este modo, se tiene acceso completo a todos los recursos del hardware y se pueden ejecutar instrucciones privilegiadas. Este modo puede realizar operaciones críticas en gestión de memoria, control de dispositivos de hardware y realizar cambios esenciales en la configuración del sistema. Solo las funciones críticas del sistema operativo pueden operar en este modo y se necesitan permisos especiales para ejecutar comandos en este estado.
___

## **INTERRUPTIONS VS TRAPS**

- **Interruptions**: eventos que se ejecutan de forma asincrónica generados por hardware o software externo al procesador. Solicitudes de I/O pueden causar estos eventos. Al producirse una interrupción, la ejecución del programa se suspende y el control del procesador cambia al controlador de interrupciones del sistema operativo. Las interrupciones son gestionadas por el hardware siendo más rápidas, ya que interrumpen la ejecución para responder a la solicitud.

- **Traps**: eventos que se ejecutan de forma sincrónica generados por el propio programa en ejecución. Causados por condiciones especiales como: la división por cero, acceder a una parte de la memoria que no está permitida o ejecutar una instrucción no permitida. Al producir este evento el control se transfiere al controlador de trampas del sistema operativo. El propio programa en ejecución provoca las trampas y se utilizan para manejar errores y situaciones especiales.
___
