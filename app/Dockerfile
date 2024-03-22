# Use an official R runtime as the base image
FROM rocker/r-ver:latest

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the local files into the container
COPY ../../applications /usr/src/app/applications

# Set the working directory to the applications folder
WORKDIR /usr/src/app/applications

# Run the R script to install packages
RUN Rscript install_dependencies.R

# Expose port 3838 to the outside world
EXPOSE 3838

# Command to run the application
CMD ["R", "-e", "shiny::runApp('app.R', port = 3838, host = '0.0.0.0')"]
