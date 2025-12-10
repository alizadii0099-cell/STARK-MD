FROM node:lts-buster

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies ignoring peer conflicts
RUN npm install --legacy-peer-deps && npm install -g qrcode-terminal pm2

# Copy the rest of the app
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
