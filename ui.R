
shinyUI (pageWithSidebar
 
         ( 
           headerPanel("Coffee Cups"), 
           sidebarPanel(
             selectInput('country','Where do you live?', choices = a),
             p ("How many cups of coffee did you drink last week?"),
             sliderInput('mon', 'Coffee Cups on Monday',value = 0, min = 0, max = 12, step = 1),
             sliderInput('tue', 'Coffee Cups on Tuesday',value = 0, min = 0, max = 12, step = 1),
             sliderInput('wed', 'Coffee Cups on Wednesday',value = 0, min = 0, max = 12, step = 1),
             sliderInput('thu', 'Coffee Cups on Thursday',value = 0, min = 0, max = 12, step = 1),
             sliderInput('fri', 'Coffee Cups on Friday',value = 0, min = 0, max = 12, step = 1),
             sliderInput('sat', 'Coffee Cups on Saturday',value = 0, min = 0, max = 12, step = 1),
             sliderInput('sun', 'Coffee Cups on Sunday',value = 0, min = 0, max = 12, step = 1)
           ),
           mainPanel( 
             h3('Your results'),
             h4('This week, you drank'), 
             h3(textOutput("cups")), p ("cups of coffee"),
             
             h4('Which resulted in an average of'), 
             h3(textOutput("ave")), p ("cups per day"),
             
             h4('In your country, the average is '), 
             h3(textOutput("cAve")), p ("cups per day"),
             
             h3(textOutput("moral"))
          ) 
))