FROM node:18-alpine

WORKDIR /usr/src/app

# Instalar dependencias
COPY package*.json ./
RUN npm install

# Copiar el código fuente
COPY . .

# Exponer puerto de Express
EXPOSE 3000

# Iniciar la aplicación en modo producción
CMD ["npm", "start"]
