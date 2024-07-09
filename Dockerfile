FROM node:16.14.0-alpine
RUN apk add --no-cache python3 g++ make
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
