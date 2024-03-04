# **Actividad 4**
#### **Sistemas Operativos 1**
___

## **INDICE**
  - [**RESPONSABLES**](#responsables)
  - [**FUNCIONAMIENTO**](#funcionamiento)
  - [**USO**](#uso)

  
___
## **RESPONSABLES**

|No.| Nombre |
|:-:| ------ | 
|1| Saúl Jafet Menchú Recinos |
___

# CHAT BASICO CON NAMED PIPES

Chat diseñado para dos usuarios (cliente/servidor) utilizando Named Pipes en Linux y scripts de bash.

## FUNCIONAMIENTO

El script del servidor (`server.sh`) realiza lo siguiente:

1. **Definición del Named Pipe:**
   - Se define el nombre del Named Pipe, `chatGuestServer`,que se utilizará para la comunicación entre el cliente.

2. **Creación del Named Pipe:**
   - Si el Named Pipe no existe, se crea utilizando el comando `mkfifo`.

3. **Escucha:**
   - El script entra en un bucle infinito.
   - Dentro del bucle, espera a que el cliente envíe un mensaje a través del Named Pipe `chatGuestServer`.

4. **Mensajes:**
   - Cuando el cliente envía un mensaje, el servidor lo lee desde el Named Pipe y lo muestra en su terminal.

## USO

2. Se abre la terminal donde se encuentra el archivo `server.sh`.

3. Se ejecuta el script `server.sh` con el siguiente comando:

```cmd
./server.sh
```

4. El servidor queda en escucha esperando a los mensajes del cliente.

>Nota: El servidor permanecerá en funcionamiento continuo, esperando mensajes del cliente a través del Named Pipe `chatGuestServer`.
