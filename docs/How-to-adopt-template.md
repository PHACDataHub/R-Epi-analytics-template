# Legacy Project Migration Guide: Adopting Docker, Trivy, and R Shiny Structure

Welcome to the migration guide for bringing your legacy project into the structured environment of Docker, Trivy, and R Shiny. This guide will walk you through the steps necessary to integrate your existing project into this new environment, ensuring ease of deployment, security scanning, and running your application with R Shiny.

## Overview

This migration aims to modernize your project by introducing Docker for containerization and Trivy for security scanning. By adopting this structure, you'll benefit from improved deployment consistency and enhanced security.

## Prerequisites

Before proceeding with the migration, ensure that you have the following prerequisites:

- Basic knowledge of Docker, Docker Compose, and Trivy.
- Familiarity with R Shiny applications.
- Read the [How-To-Use](How-To-Use.md) documentation.
- Downloaded the required applications from the ReadMe file.

## Migration Steps

### Step 1 : Project Structure Adjustment

Ensure your project structure aligns with the expected structure for Docker, Trivy, and R Shiny:

- **app.R**: This file will contain your R Shiny application code. Place your existing product code within this file.

- **install_dependancies.R**: This file should list all the dependencies required for your application to run. Fill out this file with the necessary R packages and any system-level dependencies.

Ensure that `app.R` and `install_dependancies.R` are properly filled out before proceeding to the next step.

### Step 2 : Docker Compose

Run the following command to build the image and run the app.R file on [localhost:3838](http://localhost:3838):

```bash
docker compose up -d
```

Ensure everything is correct before pushing the project to GitHub.

### Step 3 : Push to GitHub
Once you are satisfied with your local setup, push the project to GitHub. This will trigger the workflow to build your Docker image and run Trivy scans. If any high or critical vulnerabilities are found, the workflow will fail, preventing the changes from being pushed to GitHub until the issues are addressed.

Trivy will automatically run a scan on the image once it is pushed to GitHub.
