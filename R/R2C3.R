#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
R2C3 <- function(message, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'R2C3',
    x,
    width = width,
    height = height,
    package = 'R2C3'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
R2C3Output <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'R2C3', width, height, package = 'R2C3')
}

#' Widget render function for use in Shiny
#'
#' @export
renderR2C3 <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, R2C3Output, env, quoted = TRUE)
}
