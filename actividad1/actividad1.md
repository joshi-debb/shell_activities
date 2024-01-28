
##### Juan Josue Zuleta Beb - 202006353
##### ACTIVIDAD 1

### Tipos de Kernel y sus diferencias

Un kernel es la parte central de un sistema operativo que actúa como intermediario entre el hardware y el software. Hay diferentes tipos de kernels, y sus diferencias se centran principalmente en la manera en que gestionan las interrupciones del hardware y las llamadas al sistema.

- Kernel Monolítico:

En este enfoque, todas las funciones del sistema operativo se ejecutan en el espacio del kernel.

- Kernel Microkernel:

En este caso, solo las funciones esenciales se ejecutan en el espacio del kernel, y los servicios adicionales se implementan como procesos fuera del kernel.

- Kernel Híbrido:

Combina características de los kernels monolíticos y microkernels, permitiendo ejecutar algunas funciones directamente en el kernel y otras como procesos externos.

### User vs Kernel Mode

- Modo Usuario (User Mode):

Limitado en acceso a recursos de hardware, protegido contra operaciones peligrosas, no puede ejecutar instrucciones privilegiadas directamente.

- Modo Kernel (Kernel Mode):

Acceso completo a recursos de hardware, permite ejecutar instrucciones privilegiadas, puede realizar tareas críticas del sistema operativo.


### Interruptions vs Traps

- Interrupciones (Interrupts):

Son señales generadas por dispositivos hardware para notificar al procesador sobre eventos externos.

- Trampas (Traps):

También conocidas como excepciones, son eventos generados internamente por el procesador en respuesta a situaciones excepcionales durante la ejecución de un programa.