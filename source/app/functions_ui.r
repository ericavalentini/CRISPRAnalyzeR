# sourced from 'ui.r'
# save as 'functions_ui.r'
# functions for shiny ui










######################
### Chooser Input ####
######################
# function for creating choser input type
# got it from stack... didnt really look at it
# it works...
chooserInput <- function(inputId, leftLabel, rightLabel, leftChoices, rightChoices,
  size = 5, multiple = FALSE) {
  
  leftChoices <- lapply(leftChoices, tags$option)
  rightChoices <- lapply(rightChoices, tags$option)
  
  if (multiple)
    multiple <- "multiple"
  else
    multiple <- NULL
  
  tagList(
    singleton(tags$head(
      tags$script(src="chooser-binding.js"),
      tags$style(type="text/css",
        HTML(".chooser-container { display: inline-block; }")
      )
    )),
    div(id=inputId, class="chooser",
      div(class="chooser-container chooser-left-container",
        tags$select(class="left", size=size, multiple=multiple, leftChoices)
      ),
      div(class="chooser-container chooser-center-container",
        icon("arrow-circle-o-right", "right-arrow fa-3x"),
        tags$br(),
        icon("arrow-circle-o-left", "left-arrow fa-3x")
      ),
      div(class="chooser-container chooser-right-container",
        tags$select(class="right", size=size, multiple=multiple, rightChoices)
      )
    )
  )
}




#########################################
#### Input Handler for Chooser Input ####
#########################################
registerInputHandler("shinyjsexamples.chooser", function(data, ...) {
  if (is.null(data))
    NULL
  else
    list(left=as.character(data$left), right=as.character(data$right))
}, force = TRUE)