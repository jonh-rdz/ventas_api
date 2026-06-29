# Usa una imagen base específica y ligera
FROM python:3.12-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia solo los requirements primero para aprovechar la caché de Docker
COPY requirements.txt .

# Instala las dependencias
RUN pip install -r requirements.txt

# Copia el resto del código de la aplicación
COPY . .

# Expone el puerto que usa Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]