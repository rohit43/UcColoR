#' @title Palette Fill
#'
#' @author Rohit Vashisht, UCSF
#'
sg_fill_ucCol <- function(palette = "Let there be light", discrete = TRUE, reverse = FALSE, ...) {
  mPal <- ucPal(palette = palette, reverse = reverse)
  if (discrete) {
    discrete_scale("fill", paste0("uc_", palette), palette = mPal, ...)
  } else {
    scale_fill_gradientn(colours = mPal(256), ...)
  }
}
