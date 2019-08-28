# using base node pre installed image
FROM node:7

# working directory name
WORKDIR /app

# Copy package.json into /app inside container
COPY package.json /app

# run npm
RUN npm install

COPY . /app

# expose container port
EXPOSE 8081 

CMD node index.js

