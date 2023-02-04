#' @title Palette Fill
#'
#' @author Rohit Vashisht, UCSF

scale_fill_ucCol <- function(palette = "Let there be light", discrete = TRUE, reverse = FALSE, na.value = naCol, ...) {
  naCol <- "white"
  mPal <- ucPal(palette = palette, reverse = reverse)
  if (discrete) {
    discrete_scale("fill", paste0("uc_", palette), palette = mPal, na.value = naCol, ...)
  } else {
    scale_fill_gradientn(colours = mPal(256), na.value = naCol, ...)
  }
}
