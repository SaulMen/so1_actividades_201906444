
# Mensaje de lectura para el usuario de GitHub
read -p "Nombre de usuario de GitHub: " GITHUB_USER

# Consultar la URL de GitHub para obtener el usuario que
# fue obtenido
API_URL="https://api.github.com/users/$GITHUB_USER"
JSON_RESPONSE=$(curl -s "$API_URL")

# Extraemos datos de la respuesta
USER_ID=$(echo "$JSON_RESPONSE" | jq -r '.id')
CREATED_AT=$(echo "$JSON_RESPONSE" | jq -r '.created_at')

# Imprimimos usuario, id y la fecha de creación del usuario
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."


# Creamos directorio para guardar el log de las consultas
LOG_DIR="/tmp/$(date +'%Y%m%d')"
mkdir -p "$LOG_DIR"

# Creamos el archivo del log y agregamos contenido
LOG_FILE="$LOG_DIR/saludos.log"
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> "$LOG_FILE"



# Creamos un cronjob que se ejecutará el script cada 5 minutos
CRON_COMMAND="*/5 * * * * /home/saul/script.sh"
(crontab -l 2>/dev/null; echo "$CRON_COMMAND") | crontab -

# Imprimero un mensaje de exito del script
echo "Se completó la ejecuación del script. Se creado un cronjob programado para ejecutarse cada 5 minutos."

