.onAttach <- function(libname, pkgname) {
  resourcer::registerResourceResolver(OMOPVocabularyResourceResolver$new())
}

.onDetach <- function(libpath) {
  resourcer::unregisterResourceResolver("OMOPVocabularyResourceResolver")
}
