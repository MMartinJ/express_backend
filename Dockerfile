# Usamos una versión ligera de Node
FROM node:20-alpine

# Creamos la carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiamos primero los archivos de dependencias (para optimizar caché)
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto de tu código
COPY . .

# Exponemos el puerto que usa Express
EXPOSE 5000

# El comando para arrancar el servidor
CMD ["node", "server.js"]