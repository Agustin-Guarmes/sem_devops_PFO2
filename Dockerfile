FROM node:20-alpine

# Establece el directorio de trabajo dentro del contenedor. Todos los comandos siguientes se ejecutarán desde este directorio.
WORKDIR /app

# Copia los archivos package.json y package-lock.json al directorio de trabajo.
COPY package*.json ./

# Instala las dependencias del proyecto.
RUN npm install --production

# Copia el resto del código de la aplicación (todos los archivos y carpetas) al directorio de trabajo dentro del contenedor.
COPY . .

# Expone el puerto en el que la aplicación Node.js escuchará.
EXPOSE 3000

# Define el comando que se ejecutará cuando el contenedor se inicie.
CMD ["npm", "start"]
