#' Is 'PROJ library >= 6' available
#'
#' Test for availability of 'PROJ' system library version 6 or higher.
#'
#' On unix-alikes, this function is run in `.onLoad()` to check that version 6 functionality is
#' available. On Windows, the load process sets the data file location with the version 6 API, and that
#' is used as a test instead.
#'
#' If 'PROJ' library version 6 is not available, the package still compiles and installs
#' but is not functional.
#' @return logical, `TRUE` if the system library 'PROJ >= 6'
#' @export
#'
#' @examples
#' ok_proj6()
ok_proj6 <- function() {
  test<- .C("PROJ_proj_trans_generic",
            src_ = as.character("epsg:4326"),
            tgt_ = as.character("+proj=laea"),
            n = as.integer(1L),
            x_ = as.double(0), y_ = as.double(0), z_ = as.double(0), t_ = as.double(0),
            success = as.integer(0),
            NAOK=TRUE, PACKAGE = "PROJ")
  if (!test[["success"]] == 1L) {
    out <- FALSE
  } else {
    out <- TRUE
  }
  out
}