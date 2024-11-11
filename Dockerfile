# Etapa 1: Construcción
FROM node:18-alpine AS builder

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json (si existe) para instalar dependencias
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia todo el código fuente al contenedor
COPY . .

# Expone el puerto que usa la aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación Node.js
CMD ["node", "index.js"]
