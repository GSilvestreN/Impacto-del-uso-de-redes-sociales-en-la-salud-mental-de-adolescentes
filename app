import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt
from datetime import date

# Configuración inicial de la página
st.set_page_config(
    page_title="Impacto-del-uso-de-redes-sociales-en-la-salud-mental-de-adolescentes",
    page_icon="📊",
    layout="wide"
)

# Título e información del proyecto
st.title("📊 Impacto-del-uso-de-redes-sociales-en-la-salud-mental-de-adolescentes")

st.markdown("""
**Estudiante:** Gianella Mayra Silvestre Nina  
**Curso:** Programación Avanzada para la Ciencia de Datos  
**Fecha:** 01/06/2026  

Esta aplicación permite explorar un dataset sobre el impacto del uso de redes sociales
en indicadores relacionados con la salud mental adolescente. El objetivo es visualizar
los datos mediante tablas, filtros y gráficos interactivos.
""")

# Lectura del archivo CSV
df = pd.read_csv("data/datos.csv")

st.subheader("Vista general del dataset")
st.write("Cantidad de filas y columnas:", df.shape)
st.dataframe(df)

# Mostrar nombres de columnas
st.subheader("Columnas disponibles")
st.write(list(df.columns))

# Identificar columnas numéricas y categóricas
columnas_numericas = df.select_dtypes(include=["int64", "float64"]).columns.tolist()
columnas_categoricas = df.select_dtypes(include=["object"]).columns.tolist()

# Filtro interactivo
st.sidebar.header("Filtros interactivos")

if columnas_categoricas:
    columna_filtro = st.sidebar.selectbox("Selecciona una variable categórica:", columnas_categoricas)
    valores = df[columna_filtro].dropna().unique()
    valor_filtro = st.sidebar.selectbox("Selecciona un valor:", valores)

    df_filtrado = df[df[columna_filtro] == valor_filtro]
else:
    df_filtrado = df.copy()

st.subheader("Datos filtrados")
st.dataframe(df_filtrado)

# Gráfico interactivo
st.subheader("Gráfico exploratorio")

if len(columnas_numericas) > 0:
    columna_grafico = st.selectbox("Selecciona una variable numérica para graficar:", columnas_numericas)

    fig, ax = plt.subplots()
    ax.hist(df_filtrado[columna_grafico].dropna(), bins=10)
    ax.set_xlabel(columna_grafico)
    ax.set_ylabel("Frecuencia")
    ax.set_title(f"Distribución de {columna_grafico}")

    st.pyplot(fig)
else:
    st.warning("No se encontraron columnas numéricas para graficar.")

# Estadísticas descriptivas
st.subheader("Estadísticas descriptivas")

if len(columnas_numericas) > 0:
    st.write(df_filtrado[columnas_numericas].describe())
else:
    st.info("No hay variables numéricas disponibles para mostrar estadísticas.")

