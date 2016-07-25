data(mtcars)
mpgmodel<-lm(mpg~cyl+wt+am, data=mtcars)

library(shiny)
shinyServer(
	function(input,output){
		output$mpg <- renderText ({
			input_df <- data.frame(
			cyl=input$cyl,
			wt=input$wt,
			am=ifelse(input$am == "Automatic",0,1)
			)
		predict(mpgmodel,input_df)
	})
})