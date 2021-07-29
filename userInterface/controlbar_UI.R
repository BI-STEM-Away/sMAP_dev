controlbar <- dashboardControlbar(
  id = NULL,
  disable = FALSE,
  width = 500,
  collapse = TRUE,
  skin = "light",
  controlbarMenu(
    h1("Questions? Feedback?"),
    p("Please leave us a comment in the link below"),
    p("Links:"), 
    a(strong("Typeform"), href = "https://www.typeform.com/", style = "font-size : 25px;")
  )
)