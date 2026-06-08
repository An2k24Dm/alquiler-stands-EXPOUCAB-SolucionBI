# Business Intelligence Project - Alquiler de Stands EXPOUCAB

![SQL](https://img.shields.io/badge/SQL-Database-blue?style=for-the-badge&logo=postgresql&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Pentaho](https://img.shields.io/badge/Pentaho%20PDI-ETL-orange?style=for-the-badge)
![Data Warehouse](https://img.shields.io/badge/Data%20Warehouse-Modelado%20Dimensional-purple?style=for-the-badge)
![Business Intelligence](https://img.shields.io/badge/Business%20Intelligence-Dashboard-success?style=for-the-badge)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)

Proyecto académico de **Inteligencia de Negocio** desarrollado para el caso de estudio de **EXPOUCAB 2025 C.A.**, orientado al análisis de eventos, alquiler de stands, visitantes, calificaciones, ingresos y cumplimiento de metas.

El proyecto implementa una solución de BI compuesta por una **base de datos transaccional**, un **almacén de datos dimensional**, procesos **ETL** y un **dashboard analítico** para visualizar indicadores de negocio.

---

## Tipo de proyecto

Este repositorio corresponde a una **solución de Business Intelligence**, no a una API ni a una aplicación web tradicional.

El objetivo del proyecto es transformar datos operativos del negocio de alquiler de stands en información analítica útil para la toma de decisiones.

La solución permite analizar:

- Eventos realizados por EXPOUCAB.
- Alquiler de stands por evento.
- Ingresos generados.
- Visitantes por evento.
- Calificaciones de visitantes.
- Recomendaciones de los eventos.
- Cumplimiento de metas de alquileres, ingresos y visitantes.
- Distribución de eventos por ciudad y tipo.
- Ranking de eventos según calificación.

---

## Contexto del negocio

EXPOUCAB 2025 C.A. organiza eventos como ferias, bazares y exposiciones en diferentes ciudades y sedes. Su principal fuente de ingresos es el alquiler de stands a clientes que desean vender o promocionar productos y servicios durante dichos eventos.

Cada evento puede contar con diferentes tipos de stands:

- Mínimo.
- Estándar.
- Máximo/Ajustable.

Los stands poseen metros cuadrados y precios definidos. En algunos casos, los clientes pueden requerir un área adicional, lo cual incrementa el monto final del alquiler.

Además, la empresa registra visitantes en cada evento. Al salir, los visitantes pueden calificar el evento mediante una escala de estrellas y responder si recomendarían el evento a un amigo.

El propósito del proyecto es centralizar estos datos y analizarlos mediante una solución de BI.

---

## Arquitectura de la solución

La arquitectura del proyecto se organiza como una solución de **Inteligencia de Negocio por capas**.

```text
Fuente de datos transaccional
        |
        v
Procesos ETL
        |
        v
Data Warehouse dimensional
        |
        v
Dashboard / Reportes analíticos
```

---

## Componentes principales

### 1. Base de datos transaccional

Representa el sistema operativo del negocio de alquiler de stands.

Contiene tablas normalizadas relacionadas con:

- Países.
- Ciudades.
- Sedes.
- Tipos de evento.
- Eventos.
- Tipos de stand.
- Stands estimados por evento.
- Categorías y subcategorías.
- Clientes.
- Contratos.
- Visitantes.
- Entradas.
- Calificaciones.

Esta base de datos funciona como la fuente principal para los procesos ETL.

---

### 2. Data Warehouse

El Data Warehouse almacena la información transformada y organizada para análisis.

Utiliza un modelo dimensional con tablas de dimensiones y tablas de hechos.

El diseño permite consultar métricas relevantes del negocio sin depender directamente del modelo transaccional.

---

### 3. Procesos ETL

Los procesos ETL fueron diseñados en **Pentaho Data Integration**.

Estos procesos se encargan de:

- Extraer datos desde la base transaccional.
- Transformar los datos según las reglas del modelo dimensional.
- Cargar las dimensiones y hechos en el Data Warehouse.

---

### 4. Dashboard analítico

El dashboard permite visualizar los indicadores definidos para el proyecto.

Puede ser implementado en herramientas como:

- Power BI.
- Tableau.
- Qlik.
- Excel.
- Pentaho.
- Cualquier otra herramienta analítica compatible con PostgreSQL.

---

## Tecnologías utilizadas

| Tecnología | Uso |
|---|---|
| PostgreSQL | Base de datos transaccional y Data Warehouse |
| SQL | Creación de tablas, carga de datos y consultas |
| Pentaho Data Integration | Procesos ETL |
| Spoon | Diseño y ejecución visual de transformaciones Pentaho |
| Power BI / Tableau / Excel / Pentaho | Visualización de indicadores y dashboard |
| GitHub | Control de versiones del proyecto |

---

## Estructura del repositorio

```text
business-intelligence.project/
├── Scripts_db/
│   ├── CREATE_DB.sql
│   ├── INSERT_TABLE_DB.sql
│   ├── INSERTS_DEFENSA.sql
│   ├── DROP_DB.sql
│   ├── CREATE_DW.sql
│   └── DROP_DW.sql
│
├── ETL´s/
│   ├── DIM_TIEMPO.ktr
│   ├── TR_DIM_CATEGORIA.ktr
│   ├── TR_DIM_CLIENTE.ktr
│   ├── TR_DIM_EVENTO.ktr
│   ├── TR_DIM_LEYENDA.ktr
│   ├── TR_DIM_SEDE.ktr
│   ├── TR_DIM_TIPO_STAND.ktr
│   ├── TR_DIM_VISITANTE.ktr
│   ├── TR_FACT_ALQUILER.ktr
│   ├── TR_FACT_EVENTO_STAND.ktr
│   ├── TR_FACT_META.ktr
│   └── TR_FACT_VISITA.ktr
│
└── Job_Etl´s.kjb
```

---

## Base de datos transaccional

La base de datos transaccional representa el modelo relacional del negocio.

### Tablas principales

| Tabla | Descripción |
|---|---|
| `PAIS` | Países donde se realizan eventos |
| `CIUDAD` | Ciudades asociadas a países |
| `SEDE` | Lugares o sedes donde se realizan eventos |
| `TIPO_EVENTO` | Clasificación del evento: feria, bazar o exposición |
| `EVENTO` | Eventos organizados por la empresa |
| `TIPO_STAND` | Tipos de stand disponibles |
| `EVENTO_STAND` | Cantidad estimada, mt2 y precio por tipo de stand en cada evento |
| `CATEGORIA` | Categorías comerciales |
| `SUBCATEGORIA` | Subcategorías asociadas a categorías |
| `CLIENTE` | Clientes que alquilan stands |
| `CONTRATO` | Contratos de alquiler de stands |
| `VISITANTE` | Visitantes registrados en los eventos |
| `ENTRADA` | Entradas de visitantes y calificaciones realizadas |
| `LEYENDA_ESTRELLA` | Descripción de la escala de calificación |

---

## Modelo dimensional

El Data Warehouse está diseñado con un esquema dimensional orientado al análisis de eventos, visitantes y alquileres.

### Dimensiones

| Dimensión | Descripción |
|---|---|
| `DIM_SEDE` | Información de país, ciudad y sede |
| `DIM_EVENTO` | Información del evento y tipo de evento |
| `DIM_TIPO_STAND` | Tipos de stand |
| `DIM_LEYENDA` | Leyenda de calificaciones |
| `DIM_VISITANTE` | Información del visitante |
| `DIM_TIEMPO` | Información temporal para análisis por año, mes, semana y día |
| `DIM_CLIENTE` | Información del cliente |
| `DIM_CATEGORIA` | Categoría y subcategoría del producto o servicio |

---

### Tablas de hechos

| Hecho | Descripción |
|---|---|
| `FACT_META` | Metas por evento: stands propuestos, visitantes estimados e ingresos esperados |
| `FACT_EVENTO_STAND` | Stands estimados por evento y tipo de stand |
| `FACT_ALQUILER` | Contratos de alquiler, montos, mt2 adicionales y cantidad |
| `FACT_VISITA` | Visitas, calificaciones y recomendaciones de visitantes |

---

## Granularidad del modelo dimensional

### `FACT_META`

Una fila representa la meta definida para un evento en una sede y una fecha determinada.

Permite analizar:

- Meta de visitantes.
- Meta de ingresos.
- Número de stands propuestos.

---

### `FACT_EVENTO_STAND`

Una fila representa la configuración de stands estimados para un evento y un tipo de stand.

Permite analizar:

- Cantidad estimada de stands.
- Metros cuadrados definidos.
- Precio por tipo de stand.

---

### `FACT_ALQUILER`

Una fila representa un alquiler o contrato de stand realizado por un cliente para un evento.

Permite analizar:

- Ingresos reales.
- Cantidad de stands alquilados.
- Metros cuadrados adicionales.
- Categorías de productos o servicios.
- Clientes recurrentes.

---

### `FACT_VISITA`

Una fila representa la entrada y calificación de un visitante a un evento.

Permite analizar:

- Cantidad de visitantes.
- Hora de entrada.
- Calificación otorgada.
- Recomendación a un amigo.
- Sexo del visitante.
- Ranking de eventos.

---

## Procesos ETL

Los procesos ETL se encuentran en la carpeta:

```text
ETL´s/
```

El job principal es:

```text
Job_Etl´s.kjb
```

Este job ejecuta las transformaciones necesarias para cargar el Data Warehouse.

---

## Orden general de carga ETL

El orden recomendado de carga es:

```text
1. DIM_TIEMPO
2. DIM_CATEGORIA
3. DIM_CLIENTE
4. DIM_EVENTO
5. DIM_SEDE
6. DIM_TIPO_STAND
7. DIM_VISITANTE
8. DIM_LEYENDA
9. FACT_META
10. FACT_VISITA
11. FACT_EVENTO_STAND
12. FACT_ALQUILER
```

---

## Transformaciones ETL

| Transformación | Descripción |
|---|---|
| `DIM_TIEMPO.ktr` | Genera o carga la dimensión temporal |
| `TR_DIM_CATEGORIA.ktr` | Carga categorías y subcategorías |
| `TR_DIM_CLIENTE.ktr` | Carga datos de clientes |
| `TR_DIM_EVENTO.ktr` | Carga eventos y tipos de evento |
| `TR_DIM_LEYENDA.ktr` | Carga leyendas de calificación |
| `TR_DIM_SEDE.ktr` | Carga país, ciudad y sede |
| `TR_DIM_TIPO_STAND.ktr` | Carga tipos de stand |
| `TR_DIM_VISITANTE.ktr` | Carga visitantes |
| `TR_FACT_META.ktr` | Carga metas de eventos |
| `TR_FACT_VISITA.ktr` | Carga visitas y calificaciones |
| `TR_FACT_EVENTO_STAND.ktr` | Carga configuración de stands por evento |
| `TR_FACT_ALQUILER.ktr` | Carga contratos e ingresos por alquiler |

---

## Indicadores de negocio

El proyecto permite construir indicadores como:

1. Ranking de eventos según promedio de calificación.
2. Cantidad de stands alquilados por evento.
3. Metros cuadrados alquilados por evento.
4. Ingresos por metro cuadrado.
5. Total de ingresos percibidos por evento.
6. Ingresos anuales por evento.
7. Horas pico de visitantes por evento.
8. Cumplimiento de meta de alquileres.
9. Cumplimiento de meta de visitantes.
10. Distribución porcentual de eventos por ciudad.
11. Porcentaje de visitas femeninas por evento.
12. Proporción de visitantes masculinos.
13. Promedio de costo por stand.
14. Top 10 eventos con mayor calificación.
15. Variación de ingresos entre años.
16. Ingresos reales vs ingresos esperados.
17. Porcentaje de visitantes que recomendarían el evento.
18. Porcentaje de visitantes que no recomendarían el evento.
19. Clientes recurrentes.
20. Cantidad de calificaciones por evento y tipo de calificación.
21. Distribución porcentual por tipo de evento.
22. Reporte operativo por evento.
23. Cantidad, mt2 e ingresos de stands por tipo de evento y categoría.

---

## Dashboard sugerido

El dashboard puede organizarse en pestañas o secciones.

### 1. Resumen ejecutivo

Indicadores recomendados:

- Total de eventos.
- Total de ingresos.
- Total de stands alquilados.
- Total de visitantes.
- Calificación promedio general.
- Porcentaje de recomendación.

Visualizaciones recomendadas:

- Tarjetas KPI.
- Gráfico de barras de ingresos por evento.
- Gráfico de ranking de eventos.
- Segmentadores por año, ciudad, tipo de evento y sede.

---

### 2. Análisis de ingresos

Indicadores recomendados:

- Ingresos por evento.
- Ingresos por año.
- Ingresos por tipo de evento.
- Ingresos por categoría.
- Ingresos reales vs meta esperada.
- Variación de ingresos entre años.

Visualizaciones recomendadas:

- Gráfico de columnas.
- Gráfico de líneas por año.
- Tabla dinámica por evento.
- Gráfico comparativo de ingresos reales vs esperados.

---

### 3. Análisis de alquileres

Indicadores recomendados:

- Cantidad de stands alquilados.
- Metros cuadrados alquilados.
- Promedio de costo por stand.
- Cantidad, mt2 e ingresos por tipo de stand.
- Cumplimiento de meta de alquileres.

Visualizaciones recomendadas:

- Barras apiladas por tipo de stand.
- Tabla por evento y tipo de stand.
- Medidores de cumplimiento.
- Gráfico de dispersión entre mt2 e ingresos.

---

### 4. Análisis de visitantes

Indicadores recomendados:

- Cantidad de visitantes por evento.
- Visitantes por sexo.
- Porcentaje de visitas femeninas.
- Proporción de visitantes masculinos.
- Horas pico de visitantes.
- Cumplimiento de meta de visitantes.

Visualizaciones recomendadas:

- Gráfico de barras por evento.
- Gráfico de torta por sexo.
- Gráfico por hora de entrada.
- Tabla de visitantes por evento.

---

### 5. Calificaciones y satisfacción

Indicadores recomendados:

- Ranking de eventos.
- Promedio de calificación por evento.
- Top 10 eventos mejor calificados.
- Cantidad de calificaciones por tipo.
- Porcentaje de recomendación.
- Porcentaje de no recomendación.

Visualizaciones recomendadas:

- Ranking en barras horizontales.
- Gráfico de torta de recomendaciones.
- Tabla de calificaciones.
- Gráfico de distribución por leyenda: Malo, Regular, Bueno, Muy Bueno, Excelente.

---

## Instalación y configuración

### 1. Clonar el repositorio

```bash
git clone https://github.com/An2k24Dm/business-intelligence.project.git
cd business-intelligence.project
```

---

### 2. Instalar PostgreSQL

Instalar PostgreSQL en el equipo local.

Durante la instalación se recomienda conservar el puerto por defecto:

```text
5432
```

También se recomienda instalar PgAdmin para administrar las bases de datos de forma visual.

---

### 3. Crear las bases de datos

Se recomienda trabajar con dos bases de datos separadas:

```sql
CREATE DATABASE alquiler_stands_db;
CREATE DATABASE alquiler_stands_dw;
```

La primera corresponde a la base transaccional.

La segunda corresponde al Data Warehouse.

---

### 4. Ejecutar scripts de la base transaccional

Ubicarse en la carpeta:

```text
Scripts_db/
```

Ejecutar primero el script de creación de tablas:

```sql
CREATE_DB.sql
```

Luego ejecutar el script de carga de datos:

```sql
INSERT_TABLE_DB.sql
```

Opcionalmente, para datos adicionales de defensa:

```sql
INSERTS_DEFENSA.sql
```

---

### 5. Ejecutar scripts del Data Warehouse

En la base de datos del Data Warehouse, ejecutar:

```sql
CREATE_DW.sql
```

Este script crea las dimensiones y tablas de hechos necesarias para el análisis.

---

### 6. Configurar Pentaho Data Integration

Instalar **Pentaho Data Integration**.

Abrir la herramienta **Spoon** y cargar el job principal:

```text
Job_Etl´s.kjb
```

Antes de ejecutar el job, verificar las conexiones a las bases de datos:

- Conexión a la base transaccional.
- Conexión al Data Warehouse.

Cada transformación `.ktr` debe apuntar correctamente a las bases de datos creadas en PostgreSQL.

---

### 7. Ejecutar el proceso ETL

Desde Spoon, ejecutar:

```text
Job_Etl´s.kjb
```

Este job debe cargar las dimensiones y posteriormente las tablas de hechos.

---

### 8. Conectar el dashboard

Desde la herramienta analítica seleccionada, conectarse al Data Warehouse:

```text
Base de datos: alquiler_stands_dw
Motor: PostgreSQL
Host: localhost
Puerto: 5432
Usuario: postgres
Contraseña: tu_contraseña
```

Luego construir las visualizaciones usando las tablas dimensionales y de hechos.

---

## Scripts disponibles

| Script | Descripción |
|---|---|
| `CREATE_DB.sql` | Crea la base de datos transaccional |
| `INSERT_TABLE_DB.sql` | Inserta datos representativos del negocio |
| `INSERTS_DEFENSA.sql` | Inserta datos adicionales para pruebas o defensa |
| `DROP_DB.sql` | Elimina tablas de la base transaccional |
| `CREATE_DW.sql` | Crea el Data Warehouse |
| `DROP_DW.sql` | Elimina tablas del Data Warehouse |

---

## Flujo de ejecución recomendado

```text
1. Crear base de datos transaccional.
2. Ejecutar CREATE_DB.sql.
3. Ejecutar INSERT_TABLE_DB.sql.
4. Crear base de datos del Data Warehouse.
5. Ejecutar CREATE_DW.sql.
6. Abrir Pentaho Data Integration.
7. Configurar conexiones a PostgreSQL.
8. Ejecutar Job_Etl´s.kjb.
9. Validar que las dimensiones y hechos tengan datos.
10. Conectar el dashboard al Data Warehouse.
11. Crear visualizaciones e indicadores.
```

---

## Validaciones recomendadas

Después de ejecutar los scripts y ETL, se recomienda validar la cantidad de registros cargados.

### Validar tablas transaccionales

```sql
SELECT COUNT(*) FROM PAIS;
SELECT COUNT(*) FROM CIUDAD;
SELECT COUNT(*) FROM SEDE;
SELECT COUNT(*) FROM EVENTO;
SELECT COUNT(*) FROM CLIENTE;
SELECT COUNT(*) FROM CONTRATO;
SELECT COUNT(*) FROM VISITANTE;
SELECT COUNT(*) FROM ENTRADA;
```

### Validar dimensiones

```sql
SELECT COUNT(*) FROM DIM_SEDE;
SELECT COUNT(*) FROM DIM_EVENTO;
SELECT COUNT(*) FROM DIM_TIPO_STAND;
SELECT COUNT(*) FROM DIM_LEYENDA;
SELECT COUNT(*) FROM DIM_VISITANTE;
SELECT COUNT(*) FROM DIM_TIEMPO;
SELECT COUNT(*) FROM DIM_CLIENTE;
SELECT COUNT(*) FROM DIM_CATEGORIA;
```

### Validar hechos

```sql
SELECT COUNT(*) FROM FACT_META;
SELECT COUNT(*) FROM FACT_EVENTO_STAND;
SELECT COUNT(*) FROM FACT_ALQUILER;
SELECT COUNT(*) FROM FACT_VISITA;
```

---

## Consultas de ejemplo

### Ranking de eventos por calificación

```sql
SELECT
    e.nb_evento,
    AVG(v.calificacion) AS ranking_promedio
FROM FACT_VISITA v
JOIN DIM_EVENTO e ON v.sk_evento = e.sk_evento
GROUP BY e.nb_evento
ORDER BY ranking_promedio DESC;
```

---

### Ingresos por evento

```sql
SELECT
    e.nb_evento,
    SUM(a.monto) AS total_ingresos
FROM FACT_ALQUILER a
JOIN DIM_EVENTO e ON a.sk_evento = e.sk_evento
GROUP BY e.nb_evento
ORDER BY total_ingresos DESC;
```

---

### Cantidad de visitantes por evento

```sql
SELECT
    e.nb_evento,
    SUM(v.cantidad_visitantes) AS total_visitantes
FROM FACT_VISITA v
JOIN DIM_EVENTO e ON v.sk_evento = e.sk_evento
GROUP BY e.nb_evento
ORDER BY total_visitantes DESC;
```

---

### Porcentaje de recomendación por evento

```sql
SELECT
    e.nb_evento,
    ROUND(
        100.0 * SUM(CASE WHEN v.recomienda_amigo = TRUE THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS porcentaje_recomienda
FROM FACT_VISITA v
JOIN DIM_EVENTO e ON v.sk_evento = e.sk_evento
GROUP BY e.nb_evento
ORDER BY porcentaje_recomienda DESC;
```

---

### Visitantes por sexo

```sql
SELECT
    e.nb_evento,
    vi.sexo,
    COUNT(*) AS cantidad_visitantes
FROM FACT_VISITA fv
JOIN DIM_EVENTO e ON fv.sk_evento = e.sk_evento
JOIN DIM_VISITANTE vi ON fv.sk_visitante = vi.sk_visitante
GROUP BY e.nb_evento, vi.sexo
ORDER BY e.nb_evento, vi.sexo;
```

---

### Ingresos reales vs meta

```sql
SELECT
    e.nb_evento,
    SUM(a.monto) AS ingresos_reales,
    SUM(m.meta_ingreso) AS ingresos_esperados,
    SUM(a.monto) - SUM(m.meta_ingreso) AS diferencia
FROM FACT_ALQUILER a
JOIN DIM_EVENTO e ON a.sk_evento = e.sk_evento
JOIN FACT_META m ON e.sk_evento = m.sk_evento
GROUP BY e.nb_evento
ORDER BY diferencia DESC;
```

---

## Recomendaciones para el dashboard

El dashboard debe permitir filtrar la información por:

- Año.
- Ciudad.
- Sede.
- Evento.
- Tipo de evento.
- Tipo de stand.
- Categoría.
- Sexo del visitante.

También se recomienda incluir:

- Tarjetas KPI.
- Gráficos de barras.
- Gráficos de torta.
- Tablas dinámicas.
- Filtros interactivos.
- Rankings.
- Comparativos entre meta y resultado real.

---

## Estado del proyecto

El repositorio contiene los elementos principales de una solución BI:

- Modelo transaccional en SQL.
- Datos representativos del negocio.
- Modelo dimensional.
- Scripts de creación del Data Warehouse.
- Transformaciones ETL en Pentaho.
- Job principal para ejecutar los ETL.
- Base preparada para construir dashboards e indicadores.

---

## Observación sobre la arquitectura

La arquitectura correcta para describir este proyecto es:

```text
Solución de Inteligencia de Negocio con arquitectura por capas:
fuente transaccional, ETL, Data Warehouse dimensional y dashboard analítico.
```

No debe describirse como:

```text
API REST
Aplicación web
Microservicios
Monolito backend
```

La forma más precisa de presentarlo es:

```text
Proyecto BI basado en PostgreSQL, modelo dimensional y procesos ETL en Pentaho Data Integration.
```

---

## Posibles mejoras

Algunas mejoras recomendadas para futuras versiones:

- Agregar un archivo `.env.example` con nombres de bases de datos y credenciales esperadas.
- Documentar las conexiones de Pentaho.
- Agregar capturas del dashboard.
- Incluir consultas SQL de indicadores en una carpeta `queries/`.
- Agregar una carpeta `docs/` con el modelo dimensional y modelo relacional.
- Incluir instrucciones específicas para Power BI, Tableau o la herramienta de dashboard utilizada.
- Agregar control de errores o logs de ejecución ETL.
- Separar scripts por orden de ejecución.
- Agregar un archivo `README.md` dentro de `Scripts_db/`.
- Agregar un archivo `README.md` dentro de `ETL´s/`.

---

## Autores

Proyecto académico desarrollado para la asignatura **Inteligencia de Negocio**.

Caso de estudio:

```text
EXPOUCAB 2025 C.A. - Alquiler de Stands
```

Repositorio:

```text
An2k24Dm/business-intelligence.project
```

---

## Licencia

Proyecto académico. Uso exclusivo con fines educativos.