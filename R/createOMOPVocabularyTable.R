createOMOPVocabularyTable <- function(data) {
  stopifnot(is.data.frame(data))
  class(data) <- c("OMOPVocabulary")
  return(data)
}
