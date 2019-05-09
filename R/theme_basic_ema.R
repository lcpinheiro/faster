#' Change the ggplot theme to a basic ema theme
#'
#' @param font_family A font family ("Verdana" is defined but "PT Sans Narrow" works best).
#' @return A new ggplot theme.
#'
#' @importFrom ggplot2 theme
#'
#' @export
#'
theme_basic_ema <- function(font_family = "mono")

      theme_bw() +
      ggplot2::theme(
            panel.grid.minor.x = element_blank(),
            panel.grid.minor = element_line(linetype = "dotted"),
            panel.grid.minor.y = element_blank(),
            panel.grid.major.x = element_blank(),
            panel.border = element_blank(),
            panel.background = element_rect(color = "black", size = 0.5),
            legend.position = "top",
            legend.title = element_blank(),
            legend.justification = "left",
            strip.background = element_blank(),
            strip.text = element_text(colour = "black",
                                      hjust = 0,
                                      size =  rel(1.1),
                                      face = "bold"),
            text = element_text(family = font_family),
            plot.title = element_text(family = font_family, face = "bold")
      )
