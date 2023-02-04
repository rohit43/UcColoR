#' @title UC Colors
#'
#' @author Rohit Vashisht, UCSF
#'
#' @description All the colors (primary and secondary) per UC color brand
#' https://brand.universityofcalifornia.edu/guidelines/color.html
#'
ucColor <- function(...) {
  ucCol <- c(
    `UC Blue` = "#1295D8",
    `UC Gold` = "#FFB511",
    `Blue` = "#005581",
    `Light Blue` = "#72CDF4",
    `Gold` = "#FFD200",
    `Light Gold` = "#FFE552",
    `Orange` = "#FF6E1B",
    `Light Orange` = "#FF8F28",
    `Pink` = "#E44C9A",
    `Light Pink` = "#FEB2E0",
    `Teal` = "#00778B",
    `Light Teal` = "#00A3AD",
    `Dark Blue` = "#002033",
    `Extra Light Blue` = "#BDE3F6",
    `Dark Gray` = "#4C4C4C",
    `UC Gray` = "#7C7E7F",
    `Warm Gray 8` = "#8F8884",
    `Warm Gray 3` = "#BEB6AF",
    `Warm Gray 1` = "#DBD5CD"
  )
  mCol <- c(...)
  if (is.null(mCol)) {
    return(ucCol)
  }
  ucCol[mCol]
}
