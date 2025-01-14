# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directorydock
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Start the application
CMD ["npm", "start"]

# Expose port 3000
EXPOSE 3000