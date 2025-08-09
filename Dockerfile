FROM node:18-alpine

# Set working dir
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Create a persistent data folder
RUN mkdir -p /data

# Expose API port
EXPOSE 21465

# Start the service
CMD ["npm", "start"]
