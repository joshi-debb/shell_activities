- Primero se debe crear el scrip en el directorio bin:

    - Abrimos una nueva terminal y ejecutamos el comando: 
    
            cd /usr/local/bin/

    - Creamos el archivo con el comando: 
        
            sudo nano saludo.sh

    - Una vez dentro del archivo pegamos el siguiente codigo:


            #!/bin/bash
            while true; do
                echo "¡Hola! La fecha actual es: $(date)"
                sleep 1
            done

    - Guardamos: Ctrl+x y confirmamos el nombre del archivo: Y

    - Otorgamos los permisos necesarios: 
        
            sudo chmod +x /usr/local/bin/saludo.sh

- Ahora se debe crear el Servicio en el directorio system:

    - Vamos a la siguiente ruta: 
        
            cd /etc/systemd/system/
        
    - Crearmos el archivo con el comand: 
        
            sudo nano saludo.service

    - Una vez dentro del archivo pegamos el siguiente codigo:

            [Unit]
            Description=Servicio de saludo
            After=network.target

            [Service]
            Type=simple
            ExecStart=/usr/local/bin/saludo_script.sh
            Restart=always
            RestartSec=1

            [Install]
            WantedBy=multi-user.target

    -   Guardamos: Ctrl+x y confirmamos el nombre del archivo: Y

- Por ultimo habilitamos e iniciamos el servicio:

        sudo systemctl daemon-reload
        sudo systemctl restart saludo.service
        sudo systemctl status saludo.service

    - Para verificar los logs del servicio utilizamos el siguiente comando:

            journalctl -u saludo.service

    nota: se debe presionar 'Enter' para ir recargando el log.






