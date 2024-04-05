FROM node:21

WORKDIR /usr/src/app

# copy both package.json and package-lock.json
COPY package*.json ./

# install dependencies (ci makes sure we get the exact version)
RUN npm ci

# copy everything after we install dependencies
COPY . .

EXPOSE 3000

# command to start container. This command relates to what's in the package.json scripts
CMD ["npm", "start"]