FROM node:18

WORKDIR /app/client

COPY package.json .

RUN npm install -g pm2
RUN npm install --production

COPY . .