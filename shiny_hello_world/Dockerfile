# Use a lightweight R base image
FROM rocker/shiny:4.1.1

# Install necessary R packages
RUN R -e "install.packages(c('shiny', 'dplyr', 'ggplot2', 'gapminder'), repos='https://cloud.r-project.org/')"

# Copy the app files into the Docker image
COPY app.R /srv/shiny-server/

# Expose port 3838 for the Shiny app
EXPOSE 3838

# Command to run the Shiny app when the container starts
CMD ["R", "-e", "shiny::runApp('/srv/shiny-server/app.R', host='0.0.0.0', port=3838)"]
