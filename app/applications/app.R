# Load the install_dependencies.R script
source("install_dependencies.R")

# Define UI for application
ui <- fluidPage(
  titlePanel("Hello, World!"),
  mainPanel(
    h3("Welcome to RShiny app! Please start here"),
    h3("Success")
  )
)

# Define server logic
server <- function(input, output) {
}

# Run the application
shinyApp(ui = ui, server = server)
