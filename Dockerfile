# Node version required to run the project
FROM node:13

# Folder where the project will be built
WORKDIR /app

# Copying files that starts with 'package' in the new folder
COPY package*.json ./

# Command to run with npm once that we have the package.json
RUN npm install

# Copying the files from /src to /app
COPY . .

# Command to build the /dist folder (babel)
RUN npm run build

# Command to build the project
CMD ["npm","start"]