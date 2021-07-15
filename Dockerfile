# Specify a Base image
FROM node:alpine

WORKDIR /usr/app


# Install some dependencies
COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm ci

COPY ./ ./

# Start the application
CMD ["npm", "start"]