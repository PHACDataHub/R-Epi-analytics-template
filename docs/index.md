# R Epi Analytics Template

Docker, Trivy, and R Shiny offer a powerful tech stack for developing, containerizing, securing, and deploying web applications. With straightforward installation and deployment processes, even users with no prior experience can leverage these tools for robust application development and deployment.

## Table of Contents

- [Application Requirements](#application-requirements)
- [How to Run the Application](#how-to-run-the-application)
- [Making changes to the app.R file](#making-changes-to-the-appr-file)
- [Tech Stack Overview](#techstack-overview)

#### Important Links: 
  - [How to use](how_to/How-to-use-pages.md)
  - [Adding additional pages to the website](how_to/How-to-update-pages.md)
  - [Adoptation template](how_to/How-to-adopt-template.md)

## Application Requirements
Before running the R Shiny application and using Docker and Trivy, you'll need to install the necessary software and dependencies. Below are the installation instructions for each application:
- **R Shiny**: 
  - Download R from the [R Project website](https://www.r-project.org/)
  - Get RStudio Desktop from the [RStudio website](https://posit.co/download/rstudio-desktop/)
  
- **Docker**: 
  - Install Docker Desktop from the [Docker website](https://www.docker.com/get-started)
  
- **Trivy**:
  - Installation instructions are available on the [Trivy GitHub page](https://github.com/aquasecurity)


## How to Run the Application
Once you have installed R, Docker, and Trivy, you can run the R Shiny application using Docker:

- Navigate to the Application Directory (src/app): Open a terminal or command prompt and go to src/App.
```
cd app/
```

Run this command in the terminal Build and Run Docker Containers:

```
docker compose up
```
This starts the Docker containers and deploys the R Shiny application.

For a more detailed explination on How to Run the Application, [click here](how_to/How-to-use.md) 

## Making changes to the app.R file
When making changes to the app.R file, you'll need to run the following command to see the updates live on the application hosted at [localhost:3838](http:localhost:3838)
```
docker compose down && docker compose up
```

#### By running docker compose down && docker compose up, you ensure that your Docker containers are properly stopped, any changes to your code are applied, and then the containers are restarted with the updated code. This approach helps you see the changes in your application without needing to manually stop and start the containers.

For a more detailed explination on How to Run the Application, [click here](how_to/How-to-use.md) 
### Access the Application: 
After the containers start, access the R Shiny application by opening a web browser and going to http://localhost:3838.

# Techstack Overview

### Docker
Docker is a containerization platform that simplifies the deployment and management of applications by packaging them into lightweight, portable containers. Installation is straightforward on Windows, Linux, and macOS, enabling developers to quickly adopt Docker across various operating systems.

For more on Docker, [click here](techstack/Docker.md)

### Trivy
Trivy is a container vulnerability scanner that identifies security risks in container images and filesystems, helping organizations proactively secure their containerized applications. Installation is straightforward on Windows, Linux, and macOS, ensuring ease of adoption across various operating systems.
For more on Trivy, [click here](techstack/Trivy.md)

### R
R is a programming language and software environment for statistical computing and graphics. R Shiny is an open-source web application framework for R, allowing users to create interactive web applications directly from R code. Installation is straightforward on Windows, Linux, and macOS, enabling users to leverage the power of R and R Shiny for data analysis and application development.
For more on R, [click here](techstack/R.md)

### Mkdocs
MkDocs is a static site generator that simplifies the creation of documentation websites from markdown files. Its easy-to-use interface and powerful features make it an excellent choice for developers and technical writers.
For more on Mkdocs, [click here](techstack/Mkdocs.md)