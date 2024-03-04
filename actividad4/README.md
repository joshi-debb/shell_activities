- Primero se debe crear dos Named Pipes:

    - Abrimos una nueva terminal y ejecutamos el comando: 
    
            mkfifo chat1_pipe
            mkfifo chat2_pipe

    - Creamos el archivo 1 con el comando: 
        
            sudo nano chat1.sh

    - Una vez dentro del archivo pegamos el siguiente codigo:


            #!/bin/bash

            while true; do
                read message
                echo "Participant 1: $message" > chat1_pipe
                if [[ "$message" == "exit" ]]; then
                    break
                fi
            done


    - Guardamos: Ctrl+x y confirmamos el nombre del archivo: Y

    - Otorgamos los permisos necesarios: 
        
            sudo chmod +x chat1.sh

    
    - Creamos el archivo 2 con el comando: 
        
            sudo nano chat2.sh

    - Una vez dentro del archivo pegamos el siguiente codigo:


            #!/bin/bash

            while true; do
                read message
                echo "Participant 2: $message" > chat2_pipe
                if [[ "$message" == "exit" ]]; then
                    break
                fi
            done


    - Guardamos: Ctrl+x y confirmamos el nombre del archivo: Y

    - Otorgamos los permisos necesarios: 
        
            sudo chmod +x chat2.sh

- Ahora se deben utilizar 2 terminales:

    - En la terminal 1: 
        
            bash chat1.sh < chat1_pipe &
        
    - En la terminal 2: 
        
            bash chat2.sh < chat2_pipe

- Para detener completamente el chat y eliminar los Named Pipes:

            rm chat1_pipe chat2_pipe
    