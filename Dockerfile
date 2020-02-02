FROM node:13.7.0 AS builder

COPY . /app
WORKDIR /app

RUN npm install
RUN npx sapper export

FROM nginx:latest

COPY  --from=builder /app/__sapper__/export /usr/share/nginx/html