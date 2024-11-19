# Imagen base de Python
FROM python:3.9-slim

# Crear y usar el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Exponer el puerto de Flask
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
