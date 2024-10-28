# Use Node.js 20 LTS runtime as the base image
FROM node:20

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port (default is 3000)
EXPOSE 3000

# Start the application in development mode
CMD ["npm", "run", "start:dev"]
