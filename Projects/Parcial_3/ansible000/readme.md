# Configuraciones básicas y creación de dockers de prueba

## Primer paso
Debes construir un docker personalizado que incluye el servidor openssh

    docker build -t server:16.04 .

En el paso anterior debes verificar el ID de la imágen que se creó y seleccionarla para los pasos a continuación.

## Segundo paso, despliege

Ahora debes creamos una maquinas para prueba, se crearán automáticamente un servidor `apache2`

    0.0.0.0:2221->22/tcp, 0.0.0.0:80->80/tcp     server01
    0.0.0.0:2222->22/tcp, 0.0.0.0:8000->80/tcp   server02

Si lo deseas puedes modificar el archivo `create_dockers.sh` ajustando los parametros que consideres necesarios para lanzar los dockers que se ajusten al experimento que diseñes.

    ../create_dockers.sh server:16.04

## Tercer paso, configuración de alias

Opción 1: adición automática en el archivo de hosts del sistema

    echo "127.0.0.1 server01 server02" | sudo tee -a /etc/hosts

## Cuarto paso, configuración de permisos
```
chmod 0600 authorized_keys
```
```
chmod 0600 ../key.private
```

## Quinto paso, confirmación
Realiza una prueba de conexión a las maquina que se creo recientemente, por defecto el paso anterior crea n cantidad de dockers con el `puerto 2221, 2222` abiertos para conexión:

    ssh root@server01 -p 2221 -i ../key.private
    ssh root@server02 -p 2222 -i ../key.private

Si la conexión se establece, ya está listo el banco de pruebas y puedes ingresar a ansible001.
