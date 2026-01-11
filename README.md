# 🌍 EcoRadar: Localizador de Puntos Ecológicos (Full Stack Geoespacial)

Este proyecto es una aplicación **Full Stack Geoespacial** diseñada para localizar puntos de interés ecológico (puntos de reciclaje, cargadores eléctricos, fuentes) en tiempo real basándose en la ubicación exacta del usuario.

El sistema utiliza **PostGIS** para realizar cálculos espaciales complejos y **Angular** para renderizar mapas interactivos, todo respaldado por una arquitectura robusta en **Spring Boot**.

## 🏗️ Arquitectura

El sistema sigue una arquitectura de Monorepo con 3 capas principales:

- **Base de Datos (PostgreSQL + PostGIS):**

  - Persistencia de datos con soporte geoespacial.
  - Almacena coordenadas y geometrías reales (WGS84).
  - Ejecuta consultas de proximidad (`ST_DWithin`) para filtrar puntos cercanos.

- **Backend (Spring Boot):**

  - Expone una **API REST**.
  - Recibe las coordenadas (Latitud/Longitud) del frontend.
  - Orquesta la comunicación con la base de datos usando **Hibernate Spatial**.

- **Frontend (Angular):**
  - **Geolocalización:** Solicita permiso al navegador para detectar la posición del usuario.
  - **Mapas Interactivos:** Visualiza la ubicación y los marcadores usando **Leaflet**.
  - Consume la API del backend para mostrar solo los puntos relevantes (radio dinámico).

## 🚀 Tecnologías

- **Lenguaje:** Java 21 & TypeScript.
- **Backend:** Spring Boot 3 (Web, Data JPA).
- **Frontend:** Angular 18+ (Standalone Components, Signals).
- **Base de Datos:** PostgreSQL 15 con extensión **PostGIS**.
- **Mapas:** Leaflet & OpenStreetMap.
- **Infraestructura:** Docker & Docker Compose (para la Base de Datos).

## 🛠️ Instalación y Uso

### Prerrequisitos

- Tener **Docker Desktop** instalado y corriendo.
- Java 21 y Node.js instalados.

### Pasos

1.  **Clonar el repositorio:**

    ```bash
    git clone https://github.com/javaqber/ecoradar.git
    cd ecoradar
    ```

2.  **Arrancar la Base de Datos (Docker):**

    ```bash
    cd backend
    docker-compose up -d
    ```

    _Esto levantará PostgreSQL con PostGIS en el puerto 5433._

3.  **Iniciar el Backend (Spring Boot):**
    Desde la carpeta `backend`, ejecuta:

    ```bash
    ./mvnw spring-boot:run
    ```

4.  **Iniciar el Frontend (Angular):**
    Abre una nueva terminal, ve a la carpeta `frontend` y ejecuta:

    ```bash
    npm install
    ng serve -o
    ```

5.  **Acceder a la App:**
    El navegador se abrirá automáticamente en: `http://localhost:4200`
    _(Recuerda permitir el acceso a tu ubicación cuando el navegador lo solicite)._

## 📊 Previsualización

El sistema detecta tu ubicación automáticamente (marcada con un punto azul) y realiza una consulta espacial a la base de datos. Solo aparecerán en el mapa los puntos de interés que se encuentren dentro del radio de acción configurado, descartando el resto de datos geográficos para optimizar el rendimiento.

---

Proyecto realizado como práctica de Desarrollo Full Stack y Sistemas de Información Geográfica (GIS).
