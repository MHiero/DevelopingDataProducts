library(shiny)
shinyUI(
    pageWithSidebar(
        headerPanel("Body Mass Index Calculator"),
        sidebarPanel(
            numericInput('weight', 'Enter your weight in kilos', 80) ,
            numericInput('height', 'Enter your height in meters', 1.85, min = 0.5, max = 2.8, step = 0.01),
            submitButton('Submit')
        ),
        mainPanel(
            p('The body mass index (BMI), or Quetelet index, is a measure of relative weight based on an individual"s mass and height.'),
            p('A frequent use of the BMI is to assess how much an individual"s body weight departs from what is normal or desirable for a person of his or her height.'), 
            p('The weight excess or deficiency may, in part, be accounted for by body fat (adipose tissue) although other factors such as muscularity also affect BMI significantly.'), 
            p('The WHO regards a BMI of less than 18.5 as underweight and may indicate malnutrition, an eating disorder, or other health problems, while a BMI greater than 25 is considered overweight and above 30 is considered obese.'), 
            p('These ranges of BMI values are valid only as statistical categories:'),
            tags$div(
                tags$ul(
                    tags$li('BMI less then 15    : Very severely underweight'),
                    tags$li('BMI from 15 to 16   : Severely underweight'),
                    tags$li('BMI from 16 to 18.5 : Underweight'),
                    tags$li('BMI from 18.5 to 25 : Healthy weight'),
                    tags$li('BMI from 25 to 30   : Overweight'),
                    tags$li('BMI from 30 to 35   : Obese Class I (Moderately obese)'),
                    tags$li('BMI from 35 to 40   : Obese Class II (Severely obese)'),
                    tags$li('BMI over 40         : Obese Class III (Very severely obese)')
                )
            ),
            h4('Your entered values:'),
            p('weight:'), verbatimTextOutput("inputweightvalue"),
            p('height:'), verbatimTextOutput("inputheightvalue"),
            h4('Your BMI is:'),
            verbatimTextOutput("estimation"),
            h4('You are categorized into:'),strong(verbatimTextOutput("diagnostic"))
        )
    ))
