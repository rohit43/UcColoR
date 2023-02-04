#' @title UC Palette's
#'
#' @author Rohit Vashisht, UCSF
#'
ucPal <- function(palette = "Let there be light", reverse = FALSE, ...) {
  uc_palettes <- list(
    `Let there be light` = ucColor(
      "UC Blue",
      "Light Blue",
      "Blue",
      "UC Gold",
      "Gold",
      "Light Gold",
      "Light Orange",
      "Orange",
      "Pink",
      "Light Pink",
      "Light Teal",
      "Teal"
    ),
    `Left my Blues in SF` = ucColor(
      "Blue",
      "UC Blue",
      "Light Blue",
      "Extra Light Blue"
    ),
    `Shades of Gray` = ucColor(
      "Dark Gray",
      "Gray",
      "UC Gray",
      "Warm Gray 8",
      "Warm Gray 3",
      "Warm Gray 1"
    ),
    `Sun Rise` = ucColor(
      "Orange",
      "Light Orange",
      "Pink",
      "Light Pink"
    ),
    `Color me Gold` = ucColor(
      "UC Gold",
      "Gold",
      "Light Gold"
    )
  )
  mPal <- uc_palettes[[palette]]
  if (reverse) mPal <- rev(mPal)
  colorRampPalette(mPal, ...)
}
