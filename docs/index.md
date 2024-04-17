# R Shiny, Docker, and Trivy

Docker, Trivy, and R Shiny offer a powerful tech stack for developing, containerizing, securing, and deploying web applications. With straightforward installation and deployment processes, even users with no prior experience can leverage these tools for robust application development and deployment.

## Table of contents

- [Application Requirements](#application-requirements)
  - [R](#r) 
  - [Docker](Why-Docker.md)
  - [Trivy](#trivy)
- [How to Run the Application](#how-to-run-the-application)
- [Making changes to the app.R file](#making-changes-to-the-appr-file)
- [Application Overview](#application-overview)
    - [What Is R Shiny](#what-is-r-shiny)
    - [What is Docker?](#what-is-docker)
    -  [What is Trivy?](#what-is-trivy)

## Application Requirements
Before running the R Shiny application and using Docker and Trivy, you'll need to install the necessary software and dependencies. Below are the installation instructions for each application:

### R 
- R: Download and install R from the [R Project website](https://www.r-project.org/).

- RStudio (Optional): Get RStudio Desktop from the [RStudio website](https://posit.co/download/rstudio-desktop/).

- Shiny Package: In R console, run:

```
install.packages("shiny")
```

### Docker
- Docker Desktop: Install Docker Desktop from the [Docker website](https://www.docker.com/get-started). 


### Trivy
- Trivy: Installation instructions are available on the [Trivy GitHub page](https://github.com/aquasecurity)

- On Linux, you can typically install Trivy using package managers like apt or yum. 
In bash, run:
```
sudo apt-get install -y wget apt-transport-https gnupg lsb-release
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get update -y
sudo apt-get install -y trivy
```
Check the Trivy GitHub page for the most up-to-date installation instructions.

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

## Making changes to the app.R file
When making changes to the app.R file, you'll need to run the following command to see the updates live on the application hosted at [localhost:3838](http:localhost:3838)
```
docker compose  down && docker compose up
```
#### By running docker compose down && docker compose up, you ensure that your Docker containers are properly stopped, any changes to your code are applied, and then the containers are restarted with the updated code. This approach helps you see the changes in your application without needing to manually stop and start the containers.

For more detailed instructions, visitthe How-To-Use file located in the 

### Access the Application: 
After the containers start, access the R Shiny application by opening a web browser and going to http://localhost:3838.

# Application Overview

## What Is R Shiny
R Shiny is an open-source web application framework for R, primarily used for statistical computing and data analysis. Developed by RStudio, Shiny lets R users create interactive web applications directly from R code without needing to know HTML, CSS, or JavaScript.

### Key Features of R Shiny:
- Interactive Web Applications: Shiny turns analyses, visualizations, and models into interactive web applications for dynamic exploration.

- Reactive Programming: With reactive programming, developers define relationships between inputs and outputs for automatic updating based on input changes.

- Easy Deployment: Shiny applications deploy easily to various platforms, simplifying sharing and production use.

- Customization: Shiny offers high-level abstractions for web app creation with flexibility for customization using HTML, CSS, and JavaScript.

### How R Shiny Works:
- UI Definition: Developers create the application's UI using predefined functions and components provided by the Shiny package.

- Server Logic: R code defines the server logic, reacting to user inputs and generating outputs.

- Reactivity: Shiny automatically manages reactivity, updating outputs based on input changes without manual coding.

- Deployment: Applications deploy to servers or hosting platforms using tools like RStudio Connect or Shiny Server, accessible via web browsers.

## What is Docker
Docker is a platform for building, shipping, and running applications within containers, ensuring consistency across different environments.

### Key Features of Docker:
- Containerization: Docker packages applications with dependencies into containers, isolating them from the environment.

- Portability: Docker containers run on any machine with Docker installed, regardless of the operating system.

- Resource Efficiency: Containers share the host system's kernel, making them lightweight and resource-efficient.

- Microservices Architecture: Docker supports microservices architecture by enabling decomposed, independently deployable containers.

## What is Trivy
Trivy is a vulnerability scanner for containers and other artifacts, providing comprehensive security coverage.

### Key Features of Trivy:
- Comprehensive Vulnerability Database: Trivy leverages multiple vulnerability databases for thorough security scanning.

- Fast Scanning: Trivy quickly scans container images, providing results in seconds.

- Integration with CI/CD Pipelines: Trivy seamlessly integrates into CI/CD pipelines, automating security scanning during development.

- Simple Usage: Trivy is user-friendly, run as a standalone tool or integrated into container scanning workflows.

- How Trivy Works:
Trivy scans container images for vulnerabilities by analyzing package manifests against known security issues.

- It identifies vulnerable packages and provides detailed information about each vulnerability.

#### Trivy generates reports in various formats, facilitating integration with existing security tools and workflows.


