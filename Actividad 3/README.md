
# **Actividad 3**
#### **Sistemas Operativos 1**
___

## **INDICE**
  - [**RESPONSABLES**](#responsables)
  - [**SERVICIO ACTIVIDAD 3**](#servicio-actividad-3)
  - [**HABILITAR SERVICIO**](#habilitar-servicio)
  - [**VERIFICAR LOGS**](#verificar-logs)

  
___
## **RESPONSABLES**

|No.| Nombre |
|:-:| ------ | 
|1| Saúl Jafet Menchú Recinos |


___
## **SERVICIO ACTIVIDAD 3**

Este servicio ejecuta un script que imprime un saludo y la fecha actual infinitamente con una pausa de un segundo.

### Instalación

1. Copiar el script `actividad3.sh` al directorio accesible en tu sistema: `/usr/local/bin`.

2. Crear un archivo de unidad de systemd con el nombre: `actividad3.service` en el directorio `/etc/systemd/system/` con el siguiente contenido:

```cmd
[Unit]
Description=Servicio Actividad 3, imprime un saludo y la fecha actual

[Service]
Type=simple
ExecStart=/usr/local/bin/actividad3.sh
Restart=always

[Install]
WantedBy=multi-user.target
```


3. Recarga las unidades de systemd:

```bash
sudo systemctl daemon-reload
```

___

## **HABILITAR SERVICIO**


1. Habilitar el servicio para que se inicie con el sistema:
``cmd
sudo systemctl enable actividad3.service
```

2. Iniciar servicio
```cmd
sudo systemctl start actividad3.service
```
___

## **VERIFICAR LOGS**
Se puede usar `journalctl` para ver los registros generados por el servicio:
```cmd
journalctl -u actividad3.service
```
Para ver los registros en tiempo real, se utiliza:
```cmd
journalctl -u actividad3.service -f
```

___