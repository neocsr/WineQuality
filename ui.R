library(shiny)

filenames <- list.files(pattern="\\.csv$")

shinyUI(pageWithSidebar(
  headerPanel(
    "Wine Datasets"
  ),

  sidebarPanel(
    p('Taken from the UCI ',
      a(href = 'https://archive.ics.uci.edu/ml/datasets/Wine+Quality', 'Wine Quality Datasets')
    ),
    selectInput(inputId = "dataset", label = "Choose Dataset", filenames)
  ),

  mainPanel(
    tabsetPanel(
      tabPanel("Plot",
        h3('Histogram'),
        plotOutput("plot"), id = "wine-plot"
      ),
      tabPanel("Data",
        h3('First 10 rows'),
        tableOutput("table"), id = "wine-table"
      ),
      id = "wine-data"
    ),

    h5('Source'),
    p('P. Cortez, A. Cerdeira, F. Almeida, T. Matos and J. Reis. Modeling wine preferences by data mining from physicochemical properties. In Decision Support Systems, Elsevier, 47(4):547-553. ISSN: 0167-9236.'),
    br(),
    p('Available at: [@Elsevier] http://dx.doi.org/10.1016/j.dss.2009.05.016 [Pre-press (pdf)] http://www3.dsi.uminho.pt/pcortez/winequality09.pdf [bib] http://www3.dsi.uminho.pt/pcortez/dss09.bib')
  )
))