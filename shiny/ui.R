library(shiny)
shinyUI(
	navbarPage("Vehicle MPG prediction",
		tabPanel("Prediction",
			sidebarPanel(
			sliderInput("cyl","Number of Cylinders",min=4,max=12,value=4,step=2),
			numericInput("wt",'weight(lb/1000)',min=1,max=6,step=.5,value=2.5),
			selectInput("am",'Transmission Type',list("Automatic","Manual"))
			),
			
			mainPanel(
				h3("Results"),
				wellPanel(
					
					h4("Estimated Miles Per Gallon:"),
					h4(textOutput("mpg"))
				)
			)
		),
		tabPanel('About',
			mainPanel(
			h3("About the App:"),
			p("This application is part of the course project for 'Devoloping Data Products' on Coursera. It predicts the MPG value of a car based on the parameters you enterd on the left sidebar panel. You can do all the entry on the left sidebar panel. The result will pop on on the right side."),
			br(),
			h3("About the data:"),
			p("The modeling this application uses is based on the mtcars dataset in R. Detailed information about this dataset are available at:"),
			a("https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html")
			)
			)
	)

)