# Usamos la imagen oficial de Python
FROM python:3.11-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos necesarios
COPY app.py /app/


# Instalamos Streamlit
RUN pip install --no-cache-dir streamlit

# Exponemos el puerto que usará Streamlit
EXPOSE 8501

# Comando para ejecutar la app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]