# Use an official R runtime as the base image
FROM rocker/r-ver:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

# Copy the local files into the container
COPY ./applications /usr/src/app/applications

# Run the R script to install packages
RUN Rscript /usr/src/app/applications/install_dependencies.R

# Expose port 3838 to the outside world
EXPOSE 3838

# Command to run the application
CMD ["R", "-e", "shiny::runApp('/usr/src/app/applications/app.R', port = 3838, host = '0.0.0.0')"]
