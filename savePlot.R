savePlot <- function(
	filename_base,
	obj,
	w = 7,
	h = 5,
	u = "cm",
	image_format = c(".pdf", ".png")
) {
	filenames <- paste0(filename_base, image_format)
	lapply(
		filenames,
		ggplot2::ggsave,
		plot = obj,
		width = w,
		height = h,
		units = u
	)
	message("Saved these files: ", paste(filenames, collapse = "\n"))
}
