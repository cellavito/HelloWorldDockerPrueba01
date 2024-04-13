# Use the OpenJDK 11 image as the base image
FROM openjdk:23-ea-17-jdk-slim-bullseye

# Create a new app directory for my application files
RUN mkdir /app

# Copy the app files from host machine to image filesystem
COPY ./. /app

# Set the directory for executing future commands
WORKDIR /app/src

# Run the Main class
CMD java Main
