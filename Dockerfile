# Use an official Node.js runtime as the base image
FROM node:14-alpine
# Set the working directory in the container
WORKDIR /app
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the remaining application files to the working directory
COPY . .
# Build the application
RUN npm run build
# Expose port 3000 to the outside world
EXPOSE 3000
# Command to run the Node.js application with nodemon for development
CMD ["npm", "run", "start"]
