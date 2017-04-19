# Outcome: Run NodeJS in a container
# Build it: docker build --rm -t rollo/mynode:alpine .
# Run in background:
#   docker run -d --name <container name> -P username/image:tag
# Run interactively:
#   docker run --rm -it --name <container name> -P username/image:tag <command>
# Run with local volume mount:
#   docker run -d --name <container name> -P -v $(pwd)/src:/home/dev/src username/image:tag
# Run with a GUI:
#   docker run -d -e DISPLAY=192.168.99.1:0 username/image:tag    # assumes an X server on 192.168.99.1
# Run with all EXPOSEd ports mapped:
#   docker run -d -P username/image:tag <command>
# Run with specific ports mapped:
#   docker run -d -p 1000:1000 -p 1001:1001 username/image:tag <command>


# Base docker image
FROM node:alpine
MAINTAINER rollo (rollo.nike@gmail.com)

# Install any dependencies
#RUN apk update -y && apk add -y \

# Do stuff - see https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/
#RUN npm install jasmine
WORKDIR /home/dev
COPY package.json /home/dev
# EXPOSE <app port>

# Create userspace
# e.g. RUN adduser -u 1000 -G node -s /bin/sh -D node       # for alpine, et al
# e.g. RUN groupadd -r gnode && useradd -r -g unode gnode   # for other platforms
# e.g. USER node

# Serve the app
# e.g. ENTRYPOINT ["npm"]
# e.g. CMD ["start"]
