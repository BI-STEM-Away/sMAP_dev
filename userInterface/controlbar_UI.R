controlbar <- dashboardControlbar(
  skin = "light",
  controlbarMenu(
    h1("Welcome to any valuable feedback"), 
    p("Link to:"), 
    a(strong("Typeform"), href = "https://www.typeform.com/", style = "font-size : 25px;")
  )
)