library(ggplot2)
theme_NPJ <- function(linewidth = 0.5,
                      font = "sans",
                      axis_label_font_size = 5,
                      axis_title_font_size = 5.5,
                      plot_margin_top = 0.01,
                      plot_margin_right = 0.01,
                      plot_margin_bottom = 0.01, 
                      plot_margin_left = 0.01,
                      ...
                     ) {
  theme_classic() %+replace%
    theme(
      text = element_text(family = font),
      line = element_line(linewidth = linewidth),
      axis.text = element_text(size = axis_label_font_size),
      axis.title = element_text(size = axis_title_font_size),
      # legend background to transparent
      panel.background = element_rect(fill = "transparent", color = NA), # transparent panel bg
      plot.background = element_rect(fill = "transparent", color = NA), # transparent plot bg
      legend.background = element_rect(fill = "transparent", color = NA), # transparent legend bg
      legend.box.background = element_rect(fill = "transparent", color = NA), # transparent legend panel
      legend.margin = margin(0, 0, 0, 0),
      legend.box.margin = margin(0, 0, 0, 0), # The margin around the legend box (unit)
      legend.box.spacing = unit(0, "pt"), # The spacing between the plotting area and the legend box (unit)
      # plot margin
      plot.margin = margin(plot_margin_top, plot_margin_right, plot_margin_bottom, plot_margin_left, "cm"),
      ...
      
    )
}
