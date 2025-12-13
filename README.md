# playground_copier

Este repo es un “playground” para aprender **Copier** siguiendo el **Quick start** oficial: `https://copier.readthedocs.io/en/stable/`.

## Qué hay aquí

- `dbt_template/`: template de Copier que genera un proyecto dbt mínimo.
- La única variable es `project_name`.
  - Se usa para el **nombre del directorio** generado.
  - Se usa para `name:` en `dbt_project.yml`.

## Cómo generar un proyecto (ejemplo)

Desde la raíz del repo:

```bash
uv run copier copy ./dbt_template . --data project_name=mi_proyecto_dbt --defaults
```

Resultado esperado:

- `./mi_proyecto_dbt/dbt_project.yml` existe
- Contiene `name: "mi_proyecto_dbt"`
- También existe `./mi_proyecto_dbt/packages.yml` con un ejemplo de `dbt_utils`.
- También existe `./mi_proyecto_dbt/.gitignore` ignorando `target/`, `logs/`, `dbt_packages/` y `dbt_internal_packages/`.

Nota: el fichero de respuestas `.copier-answers.yml` se guarda dentro del proyecto generado (`./mi_proyecto_dbt/.copier-answers.yml`).

## Nota importante sobre templates locales y `copier update`

Si copias desde un template local usando una **ruta relativa** (p. ej. `./dbt_template`), Copier puede guardar `_src_path: ./dbt_template` en `.copier-answers.yml`.
Luego, al ejecutar `copier update` desde el proyecto generado, esa ruta relativa puede no existir y fallar.

Para evitarlo, cuando el template sea local usa una **ruta absoluta**:

```bash
uv run copier copy /Users/alejandro.gonzalez/Projects/playground_copier/dbt_template /Users/alejandro.gonzalez/Projects
```

## Updates (copier update)

Según la documentación de *Updating a project*, para poder actualizar cómodamente necesitas que el proyecto tenga un `.copier-answers.yml` válido y que el template y el proyecto estén versionados con Git (idealmente con tags en el template). Ver: `https://copier.readthedocs.io/en/stable/updating/`.

Flujo recomendado:

```bash
cd mi_proyecto_dbt
git status   # asegúrate de estar limpio
uv run copier update
```

Importante: **no edites `.copier-answers.yml` a mano**; para cambiar respuestas, usa `copier update` (ver la doc).

