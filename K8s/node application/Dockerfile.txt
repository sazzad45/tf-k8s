FROM node:17.9.0-alpine3.15
# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./
# If you are building your code for production
RUN npm install --only=production

COPY distapp ./

EXPOSE 3000

ENTRYPOINT [ "node","./app.js" ]

