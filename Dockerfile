# Use the OpenJDK 11 image as the base image
RUN echo "dice 1"
FROM openjdk:11
RUN echo "dice 2"

# Create a new app directory for my application files
RUN mkdir /app
RUN echo "dice 3"

# Copy the app files from host machine to image filesystem
COPY ./. /app
RUN echo "dice 4"

# Set the directory for executing future commands
WORKDIR /app
RUN echo "dice 5"

# Run the Main class
CMD java Main
RUN echo "dice 6"
