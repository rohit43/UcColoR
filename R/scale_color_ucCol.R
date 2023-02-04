#' @title Palette Color
#'
#' @author Rohit Vashisht, UCSF
#'
scale_color_ucCol <- function(palette = "Let there be light", discrete = TRUE, reverse = FALSE, ...) {
  mPal <- ucPal(palette = palette, reverse = reverse)
  if (discrete) {
    discrete_scale("colour", paste0("uc_", palette), palette = mPal, ...)
  } else {
    scale_color_gradientn(colours = mPal(256), ...)
  }
}
