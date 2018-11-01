#!/bin/bash
echo "Lanzando servidor web..."
docker run -d -P --name server01 -p 2221:22 -p 80:80 $1
echo "Servidor desplegado."
echo
echo "----------------------"
echo "Lanzando servidor munin-node"
docker run -d -P --name server02 -p 2222:22 -p 8000:80 $1
echo "Servidor desplegado."
echo
echo "----------------------"
echo "     Confirmando      "
echo "----------------------"
docker ps
echo
echo "----------------------"
