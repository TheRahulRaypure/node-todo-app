FROM node:18
WORKDIR /app
COPY package.json ./
RUN npm install
RUN apt install docker-compose
COPY . .
EXPOSE 3000
CMD ["npm", "start"]