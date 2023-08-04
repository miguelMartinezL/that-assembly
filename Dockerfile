# Use the base image
FROM johnnyb61820/linux-assembly:latest

# Set the working directory inside the container
WORKDIR /my-code

# Copy the contents from the host's current directory to the container's working directory
COPY . .

# This line is not necessary if the base image sets the default CMD or ENTRYPOINT
# But in case it doesn't, you can add the command you want to run in the container.
CMD ["/bin/bash"]
