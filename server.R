
# Based on the following sources I have calculated how much is the average
# daily coffee consumption in cups in different countries
# http://en.wikipedia.org/wiki/List_of_countries_by_coffee_consumption_per_capita
# http://www.hsph.harvard.edu/news/multimedia-article/facts/


shinyServer(
  function(input, output) {
    
    
    output$cups <- renderText({
      
      cups = input$mon + input$tue + input$wed + input$thu + input$fri + input$sat + input$sun
      
      })
    
    output$ave <- renderText({
      ave = (input$mon + input$tue + input$wed + input$thu + input$fri + input$sat + input$sun)/7
      ave = round (ave, digits = 1)
    })
     
    output$cAve <- renderText({
      cAve = coffee [coffee$Country == input$country, 4 ]
      
    })
    
    output$moral <- renderText({
      
      ave = (input$mon + input$tue + input$wed + input$thu + input$fri + input$sat + input$sun)/7
      ave = round (ave, digits = 1)
      cAve = coffee [coffee$Country == input$country, 4 ]
      
      if (ave <= cAve) {
        moral = "You're OKAY!"
      }
      
      else {
        moral = "You are drinking too much coffee!"
      }
      
    })
    
    
      }
  )
  