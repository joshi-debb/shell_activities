#!/bin/bash

# Leer la variable GITHUB_USER
read -p "Ingrese el nombre de usuario de GitHub: " GITHUB_USER

# Consultar la URL de GitHub API
API_URL="https://api.github.com/users/$GITHUB_USER"
JSON_RESPONSE=$(curl -s "$API_URL")

# Extraer información del JSON
github_user=$(echo "$JSON_RESPONSE" | jq -r '.login')
user_id=$(echo "$JSON_RESPONSE" | jq -r '.id')
created_at=$(echo "$JSON_RESPONSE" | jq -r '.created_at')

# Imprimir mensaje
echo "Hola $github_user. User ID: $user_id. Cuenta fue creada el: $created_at."

# Crear el directorio temporal y el archivo de registro
log_dir="/tmp/$(date +'%Y%m%d')"
mkdir -p "$log_dir"
log_file="$log_dir/saludos.log"

# Escribir el mensaje en el archivo de registro
echo "Hola $github_user. User ID: $user_id. Cuenta fue creada el: $created_at." >> "$log_file"

echo "Registro guardado en: $log_file"

# Configurar el cronjob para ejecutarse cada 5 minutos
cronjob="@reboot sleep 60 && /home/why/Desktop/so1_actividades_202006353/actividad2/actividad2.sh"
(crontab -l; echo "$cronjob") | crontab -

echo "Cronjob configurado para ejecutarse cada 5 minutos."
