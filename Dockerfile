# Specify the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose a port for the server to listen on (replace 3000 with your desired port)
EXPOSE 3000

# Specify the command to run the server
CMD [ "node", "index.js" ]
