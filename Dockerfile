# Node.js image
FROM node:18-alpine

# working directory
WORKDIR /app

# Copy and install dependencies
COPY package*.json ./
RUN npm install

COPY . .

# Expose port
EXPOSE 5000

# Start the app
CMD ["node", "src/server.js"]
