## Impacto del uso de redes sociales en la salud mental de adolescentes

Aplicación web desarrollada con **Streamlit** para visualizar un dataset relacionado con el impacto del uso de redes sociales en indicadores vinculados a la salud mental adolescente.

## Objetivo del proyecto

Crear, ejecutar y documentar una aplicación web en Streamlit desde un entorno Linux/WSL, demostrando el manejo básico de terminal, archivos, permisos, entorno virtual, procesos, red local y documentación técnica.

## Descripción de la aplicación

La aplicación permite explorar información sobre adolescentes y el uso de redes sociales. A partir del archivo CSV, se muestra una tabla de datos, filtros interactivos y gráficos exploratorios para analizar patrones generales dentro del dataset.

El objetivo de la aplicación no es establecer diagnósticos médicos ni afirmar causalidad, sino visualizar posibles relaciones entre variables como uso de redes sociales, sueño, estrés, ansiedad, actividad física u otros indicadores disponibles en el dataset.

## Tecnologías utilizadas

* Python 3
* Streamlit
* Pandas
* Matplotlib
* Linux/WSL
* GitHub

## Estructura del proyecto

```text
tarea_streamlit/
├── app.py
├── data/
│   └── datos.csv
├── requirements.txt
├── README.md
└── evidencias/
```

## Funcionalidades principales

* Lectura de un archivo CSV.
* Visualización de una tabla de datos.
* Filtros interactivos desde la barra lateral.
* Gráfico exploratorio de variables numéricas.
* Estadísticas descriptivas.
* Ejecución desde Linux/WSL.
* Acceso desde navegador local.
* Acceso desde celular conectado a la misma red.

## Instalación de dependencias

Para instalar las dependencias necesarias, se debe ejecutar:

```bash
pip install -r requirements.txt
```

## Ejecución de la aplicación

Para levantar la aplicación Streamlit, se utiliza el siguiente comando:

```bash
streamlit run app.py --server.address 0.0.0.0 --server.port 8501
```

Luego, la aplicación puede abrirse desde el navegador del equipo usando:

```text
http://localhost:8501
```

También puede abrirse desde un celular conectado a la misma red usando la IP local del equipo:

```text
http://IP_DEL_EQUIPO:8501
```

## Dataset

El dataset utilizado corresponde a información sobre el impacto del uso de redes sociales en adolescentes. El archivo se encuentra en la carpeta `data/` con el nombre:

```text
datos.csv
```

## Evidencias

La carpeta `evidencias/` contiene capturas del proceso técnico realizado, incluyendo:

* Creación del entorno virtual.
* Instalación de dependencias.
* Ejecución de Streamlit.
* Aplicación abierta en navegador local.
* Aplicación abierta desde celular.
* Verificación del puerto 8501.
* Estructura del proyecto con `ls -R`.
* Permisos de archivos con `ls -l`.

## Autora

Gianella Mayra Silvestre Nina
