#' Unquoted file referencing in project-oriented workflows
#' @param ... unquoted folder or file names
#' @return a character vector of length one -- a file path in the style of \href{https://here.r-lib.org/}{The here package}.
#' @references \href{https://adv-r.hadley.nz/quasiquotation.html#quasi-motivation}{Motivation}
#' @export
there <- function(...) {
  rlang::exec(
    .fn = here::here,
    !!!lapply(
      X = rlang::ensyms(...),
      FUN = rlang::as_string
    )
  )
}
