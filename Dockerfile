FROM node:20-bullseye
WORKDIR /app
COPY package*.json ./
RUN npm install --legacy-peer-deps && npm install -g pm2 qrcode-terminal
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
