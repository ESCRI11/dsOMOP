OMOPVocabularyResourceClient <- R6::R6Class(
  "OMOPVocabularyResourceClient",
  inherit = FileResourceClient,
  public = list(
    initialize = function(resource) {
      super$initialize(resource)
    },
    asDataFrame = function(...) {
      path <- super$downloadFile()
      private$loadReadr()
      df <- readr::read_csv(path)
      omop_df <- createOMOPVocabularyTable(df)
      return(omop_df)
    }
  ),
  private = list(
    loadReadr = function() {
      if (!require("readr")) {
        install.packages("readr", repos = "https://cloud.r-project.org", dependencies = TRUE)
      }
    }
  )
)
