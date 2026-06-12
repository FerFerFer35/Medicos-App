CREATE DATABASE IF NOT EXISTS medicos_db;

USE medicos_db;

CREATE TABLE medicos (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(255) NOT NULL,
    especialidad VARCHAR(255) NOT NULL,
    cedula_profesional VARCHAR(255) NOT NULL,
    fecha_registro DATETIME NOT NULL,
    created_at TIMESTAMP NULL DEFAULT NULL,
    updated_at TIMESTAMP NULL DEFAULT NULL
);