FROM node:latest

RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json .
COPY package-lock.json .


RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]