# Specify a Base image
FROM node:alpine

WORKDIR /usr/app


# Install some dependencies
COPY ./ ./
RUN npm install

# Start the application
CMD ["npm", "start"]