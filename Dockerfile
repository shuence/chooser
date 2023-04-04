# Use an official Node.js runtime as a parent image
FROM node:14


# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN npm install

# Build the app
RUN npm run build

# Install serve globally
RUN npm install -g serve

# Expose the port on which the app will be listening
EXPOSE 8080

# Run the command to start the app with serve
CMD [ "serve", "-s", "dist", "-p", "8080" ]

