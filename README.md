# {{ project_name }}

Proyecto dbt generado con Copier.

> **Nota**: Este proyecto fue creado usando una plantilla de Copier.

> **Actualización**: Este README fue actualizado usando `copier update`.

> **Prueba de actualización**: Este es un cambio mínimo para validar que `copier update` funciona.

## Configuración

Este proyecto está configurado para usar con **dbt Cloud**. La configuración de conexión al data warehouse se realiza a través de la interfaz de dbt Cloud.

## Instalar dependencias

```bash
dbt deps
```

## Comandos Útiles

```bash
# Compilar modelos
dbt compile

# Ejecutar modelos
dbt run

# Ejecutar tests
dbt test

# Generar documentación
dbt docs generate
dbt docs serve
```

## Uso de esta plantilla

Para crear un nuevo proyecto desde esta plantilla:

```bash
pip install copier
copier copy . /ruta/a/tu/nuevo/proyecto-dbt
```
