FROM node:22-alpine3.21
WORKDIR /app
COPY package*.json ./
RUN apk update && apk upgrade
RUN npm ci --omit=dev
COPY server.js .
EXPOSE 3000
CMD ["npm", "start"]