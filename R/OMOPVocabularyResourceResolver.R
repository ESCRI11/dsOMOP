OMOPVocabularyResourceResolver <- R6::R6Class(
  "OMOPVocabularyResourceResolver",
  inherit = ResourceResolver,
  public = list(
    isFor = function(x) {
      if (super$isFor(x)) {
        !is.null(findFileResourceGetter(x)) && tolower(x$format) %in% c("omopvocabulary")
      } else {
        FALSE
      }
    },
    newClient = function(x) {
      if (self$isFor(x)) {
        OMOPVocabularyResourceClient$new(x)
      } else {
        stop("Resource is not an OMOP Vocabulary data file")
      }
    }
  )
)
