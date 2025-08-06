
# set the default libpaths

custom_lib_path <- file.path(Sys.getenv("HOME"), "wang04", "R_libs")
if (!dir.exists(custom_lib_path)) {
  dir.create(custom_lib_path, recursive = TRUE)
}
.libPaths(c(custom_lib_path, .libPaths()))


# Dynamically set the working directory based on the system type and hostname
if (.Platform$OS.type == "windows") {
  wd <- "C:/github/ulyses/explore_packaged/bin_annotation_script"
} else if (grepl("\\.cri\\.camres\\.org$", Sys.info()["nodename"])) {
  wd <- "/home/nrlab/wang04/ulyses/explore_packaged/bin_annotation_script"
} else {
  stop("Unsupported system or hostname")
}


