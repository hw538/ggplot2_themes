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
	saveRDS(obj, paste0(filename_base, ".rds"))
	message("Saved these files: ", paste(c(filenames, paste0(filename_base, ".rds")), collapse = "\n"))
	
}
