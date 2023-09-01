test <- function(tabla_classe_OMOPVocabulary) {
  if(inherits(tabla_classe_OMOPVocabulary, "OMOPVocabulary")) {
    class(tabla_classe_OMOPVocabulary) <- "data.frame"
  }
}
