# Use a Node version >=20.18.1 to satisfy all packages
FROM node:20.19-buster

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies (ignore peer conflicts)
RUN npm install --legacy-peer-deps && npm install -g qrcode-terminal pm2

# Copy the rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
