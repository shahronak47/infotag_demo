#To be included in tests
text <- "#' Test function
#' @information This is new information added.
#' @return Function to test
#'
#' @export

test <- function() {

}"
library(roxygen2)

tmp <- parse_text(text)[[1]]
roxygen2::block_get_tag_value(tmp, 'information')
roxygen2::block_get_tag_value(tmp, 'return')
