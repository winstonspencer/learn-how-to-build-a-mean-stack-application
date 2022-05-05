# Using node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json 
# AND package-lock.json are coppied where available (npm@5+)
COPY package*.json ./

RUN npm install

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port 4200 outside the container
EXPOSE 3000

# Command use to start the application
CMD [ "node", "server/server.js" ]
