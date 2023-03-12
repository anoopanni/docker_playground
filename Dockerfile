FROM node:19-alpine

# COPY <src> <dest> -> the / at the end indicates the docker to create the directory if it doesn't exits.
COPY package.json /app/   
COPY src /app/

# Like cd command, it sets the directory for whatever that comes after this.
WORKDIR /app

# will execute any command in a shell inside the container environment.
RUN npm install 


# CMD is the command the container executes by default when you launch the built image.
# A Dockerfile will only use the final CMD defined. 
# The CMD can be overridden when starting a container with docker run $image $other_command.
CMD ["node", "server.js"]





