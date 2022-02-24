

# Package names
packages <- c(
  "dplyr",
  "rjson",
  "jsonlite",
  "RJSONIO",
  "stringr",
  "htmlwidgets",
  "rebus",
  "uuid",
  "readxl",
  "tidyverse")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))
