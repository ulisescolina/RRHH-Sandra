# Propósito del directorio actual

Acá se plantea el contenedor basado en `PostgreSQL 9.4` que contiene los datos
que compartió Sandra.

Esto va a permitir lo siguiente:

- Funcionar sin la necesidad de la instalación del PostgreSQL y la posterior
restauración de los datos necesarios.
- Una vez que el contenedor se inicie, se tendrán disponibles los datos para el
correcto funcionamiento del sistema.
- El contenedor puede regenerarse en cualquier momento, haciendo que todos los
cambios se deshagan.


## Extra

Además, si se desea, se puede hacer uso del contenedor con los datos de manera
independiente al sistema de nóminas en el cual se ve envuelto, esto de la
siguiente manera:

1. Será necesario obtener el contenedor (Si se lleva a cabo un `docker-compose
   up` del proyecto en el directorio anterior de antemano, este paso puede ser
   obviado).

```bash
$ docker pull crulises/rrhh-sandra:datos
```

2. Iniciar el contenedor.

```bash
$ docker run --rm -it bash\
  --env POSTGRES_USER=postgres \
  --env POSTGRES_PASSWORD=postgres \
  --env POSTGRES_DB=siu
  --name rrhh-sandra-datos
  crulises/rrhh-sandra:datos

```

Aguardar un minuto a que la base de datos se regenere.

3. Iniciar una sesión bash dentro del contenedor

``` bash
$ docker exec -it rrhh-sandra-datos bash
```

4. Iniciar una sesión de `psql`.
Una vez dentro del contenedor, se puede iniciar sesión con las credenciales que
se le pasaron al mismo con variables de entorno.

```bash
bash-5.0# psql -U postgres -d siu -W
Password for user postgres: <introducir contraseña, en este caso `postgres`>

siu=#
```
