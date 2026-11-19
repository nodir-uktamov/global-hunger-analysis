# Install the R packages used by global_hunger_analysis.Rmd.
# Versions used for the last render are listed in session_info.txt.
packages <- c(
  "tidyverse",         # readr, dplyr, tidyr, ggplot2
  "sf",                # map geometry
  "rnaturalearth",     # world map
  "rnaturalearthdata", # world map data (medium scale)
  "naniar",            # missing-data helpers
  "countrycode",
  "rmarkdown",
  "knitr"
)
missing <- setdiff(packages, rownames(installed.packages()))
if (length(missing) > 0) install.packages(missing)
