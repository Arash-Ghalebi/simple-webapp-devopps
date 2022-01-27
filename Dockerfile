# Specify a base image
FROM node:alpine

# Set up the working directory
WORKDIR /usr/app

# Install some dependencies
COPY package.json/ ./
RUN npm install

# Copy in the necessary files
COPY ./ ./

# Default command
CMD ["npm", "start"]