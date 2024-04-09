# Modifying app.R and install_dependencies.R for Docker Deployment

This documentation outlines the steps to modify the `app.R` and `install_dependencies.R` files in an R Shiny application and how to ensure that Docker reflects these changes.



## Modifying app.R

The `app.R` file typically contains the main code for your R Shiny application. You can make changes to this file to update the UI layout, add new visualizations, or modify the server logic.

### Steps to Modify app.R:

1. **Open app.R**: Locate the `app.R` file in your project directory and open it in a text editor or an R development environment.

2. **Make Changes**: Modify the code according to your requirements. You can add new UI elements using Shiny functions like `sliderInput`, `selectInput`, `plotOutput`, etc. You can also update the server logic to handle new input elements or generate different outputs.

3. **Save Changes**: Once you've made the necessary modifications, save the `app.R` file.

## Modifying install_dependencies.R

The `install_dependencies.R` file contains the dependencies required by your R Shiny application. These dependencies may include R packages that are necessary for the application to function correctly.

### Steps to Modify install_dependencies.R:

1. **Open install_dependencies.R**: Locate the `install_dependencies.R` file in your project directory and open it in a text editor or an R development environment.

2. **Update Dependencies**: Add, remove, or update the R package dependencies listed in the file. You can use the `install.packages` function to install new packages or update existing ones.

3. **Save Changes**: Once you've updated the dependencies, save the `install_dependencies.R` file.

## Dockerizing Changes

After making modifications to the `app.R` and `install_dependencies.R` files, you'll need to ensure that Docker reflects these changes when running the containerized application.

### Steps to Update Docker Configuration:

1. **Update Docker Compose**: Navigate to the root directory of your project that contains the `docker-compose.yml` file. Run the following command to bring down existing containers and then bring them up again:

```
docker-compose down && docker-compose up -d
```

This command will stop any running containers and then start them again with the updated configurations.

2. **View Changes**: Access your R Shiny application through a web browser using the specified host port. You should see the modifications reflected in the application.

## TLDR
Modifying the `app.R` and `install_dependencies.R` files allows you to customize the behavior and appearance of your R Shiny application. By following the steps outlined in this documentation, you can make changes to these files and ensure that Docker reflects these modifications when running the containerized application.