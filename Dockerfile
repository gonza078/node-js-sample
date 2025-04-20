# Use official Node image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port (adjust as needed)
EXPOSE 8080

# Start the app
CMD [ "npm", "start" ]
