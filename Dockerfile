# Use the official Node.js 16 image as a base
FROM node:16

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies and omit dev dependencies
RUN npm install --omit=dev

# Copy the rest of the project files to the container
COPY . .

# Expose port 3000 for the server
EXPOSE 3000

# Start the server in development mode
CMD ["npm", "run", "dev"]
