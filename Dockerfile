# Use an official Hugo runtime as a parent image
FROM klakegg/hugo:0.79.1-ext-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the static site
RUN hugo

# Expose port 1313 to the outside world
EXPOSE 1313

# Command to run the executable
CMD ["hugo", "server", "--bind", "0.0.0.0"]