**Respuestas a las preguntas**

-  ¿Cuántos procesos únicos son creados?

    Al seguir el flujo de control del programa y contar cuántos procesos se crean podemos notar que inicialmente, se crea un proceso padre, luego, el proceso padre crea un proceso hijo. 
    
    Ahora tenemos dos procesos: el padre y el hijo, después, en el hijo, se crea un hilo, pero no genera un nuevo proceso y finalmente, tanto el padre como el hijo crean un nuevo proceso. 
    
    Entonces, el recuento de procesos únicos sería 4 (padre, hijo, y los dos nuevos procesos creados por padre e hijo).

-  ¿Cuántos hilos únicos son creados?

    Podemos observar que solo se crea un hilo, y esto ocurre en el proceso hijo. No hay creación de hilos en el proceso padre, entonces, solo se crea 1 hilo único.