# Use the desired version of rocker/r-ver as the base image
FROM rocker/r-ver:latest

# Using the latest causes a CVE-2024-26597. This is related to the rocker/re-ver not managing

# Set the working directory in the container
WORKDIR /usr/src/app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    && apt-get clean

# Copy the local files into the container
COPY ./applications /usr/src/app/applications

# Run the R script to install packages
RUN Rscript /usr/src/app/applications/install_dependencies.R

# Expose port 3838 to the outside world
EXPOSE 3838

# Command to run the application
CMD ["R", "-e", "shiny::runApp('/usr/src/app/applications/app.R', port = 3838, host = '0.0.0.0')"]
