FROM node:16-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . . 
EXPOSE 4200
RUN npm run build
ENTRYPOINT [ "npm", "start" ]