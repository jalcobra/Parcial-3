# Iniciando con Ansible

## Preliminares
Para realizar las prácticas debes tener instalado en el equipo o servidor de pruebas:
  - Docker
  - Python

#### Instalación de Ansible

        pip install ansible

### Construcción de la imagen personalizada
Ingresa a la carpeta 'ansible000' y sigue los pasos indicados.

## Reiniciar todo
En caso de reiniciar el experiemento ejecute:

    ./clean_all.sh
    
# Cofiguración de Ansible

### Primer paso, instalación de apache2 mendiante ansible.
```
ansible-playbook -i ../hosts webserver.yml
```
<img src="https://raw.githubusercontent.com/edil-gutierrez/Parcial_3/master/ansible001/Captura%20de%20pantalla%202017-12-01%20a%20las%2012.00.36%20p.m..png" />

### Segundo paso, instalación de munin-node mendiante ansible.
```
ansible-playbook -i ../hosts munin-node.yml
```
<img src="https://raw.githubusercontent.com/edil-gutierrez/Parcial_3/master/ansible001/Captura%20de%20pantalla%202017-12-01%20a%20las%2012.01.05%20p.m..png" />

### Tercer paso, instalación de munin mendiante ansible.

```
ansible-playbook -i ../hosts munin.yml
```
<img src="https://raw.githubusercontent.com/edil-gutierrez/Parcial_3/master/ansible001/Captura%20de%20pantalla%202017-12-01%20a%20las%2012.13.20%20p.m..png" />

### Apache localhost
<img src="https://raw.githubusercontent.com/edil-gutierrez/Parcial_3/master/ansible001/Captura%20de%20pantalla%202017-12-01%20a%20las%2012.01.41%20p.m..png" />
