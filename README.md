# Sistema de Gestión de Médicos

Prueba técnica desarrollada con Laravel 12, MySQL y Bootstrap 5.

## Características

* Registro de médicos.
* Edición de médicos.
* Listado de médicos.
* Búsqueda por nombre y especialidad.
* Filtro por rango de fechas.
* Paginación de resultados.
* Validaciones de formularios.
* Protección contra Inyección SQL mediante Eloquent ORM.
* Interfaz responsiva utilizando Bootstrap 5.

## Tecnologías Utilizadas

* PHP 8.2+
* Laravel 12
* MySQL 8
* Bootstrap 5
* Docker Compose (Base de datos)

## Requisitos Previos

* PHP 8.2 o superior
* Composer
* Docker
* Docker Compose

## Instalación

### 1. Clonar el repositorio

```bash
git clone https://github.com/FerFerFer35/Medicos-App.git
cd Medicos-App
```

### 2. Levantar MySQL con Docker

```bash
docker compose up -d
```

### 3. Instalar dependencias

```bash
composer install
```

### 4. Crear archivo de entorno

```bash
cp .env.example .env
```

### 5. Configurar la conexión a la base de datos

Verificar que los valores del archivo `.env` coincidan con la configuración definida en `docker-compose.yml`.

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=medicos_db
DB_USERNAME=user
DB_PASSWORD=password
```

La base de datos MySQL se ejecuta mediante Docker Compose utilizando la imagen oficial de MySQL 8.0. Al iniciar los contenedores, se creará automáticamente la base de datos `medicos_db` y el usuario configurado para la conexión de Laravel.




### 6. Generar clave de aplicación

```bash
php artisan key:generate
```

### 7. Ejecutar migraciones

```bash
php artisan migrate
```

### 8. Cargar datos de prueba (Opcional)

```bash
php artisan db:seed
```

o

```bash
php artisan migrate:fresh --seed
```

### 9. Iniciar servidor de desarrollo

```bash
composer run dev
```

La aplicación estará disponible en:

```text
http://localhost:8000
```

## Archivo SQL

Se incluye el archivo:

```text
medicos_db.sql
```

para facilitar la creación manual de la base de datos si se desea utilizar una instalación local de MySQL sin ejecutar las migraciones de Laravel.

## Datos de Prueba

El proyecto incluye Factories y Seeders para generar registros de ejemplo:

```bash
php artisan migrate:fresh --seed
```

Esto creará automáticamente médicos de prueba para validar las funcionalidades de búsqueda, filtros y paginación.

## Decisiones Técnicas

* Se utilizó Laravel 12 siguiendo el patrón MVC.
* Se empleó Eloquent ORM para prevenir vulnerabilidades de Inyección SQL.
* Se implementaron Form Requests para centralizar las validaciones.
* Se utilizaron Seeders y Factories para generar datos de prueba.
* Docker Compose se utilizó para estandarizar el entorno de MySQL.
* Bootstrap 5 se utilizó para garantizar una interfaz responsiva.

## Autor

Luis Fernando Bautista Alcozer
