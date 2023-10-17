# Add the rocker/verse Docker image for R 4.2.1
# this includes quarto and the latest tidyverse version for R 4.2.1 
FROM rocker/verse:4.2.1

# Add files to container
ADD ChoroplethMagnitude.qmd /home/rstudio/workspace/
ADD _quarto.yml /home/rstudio/workspace/
ADD ChoroplethMagnitude.bib /home/rstudio/workspace/
ADD ChoroplethMagnitude.Rproj /home/rstudio/workspace/

# Add folders and their contents to container
ADD _extensions/ /home/rstudio/workspace/_extensions/
ADD data/ /home/rstudio/workspace/data/
ADD examples/ /home/rstudio/workspace/examples/
ADD ChoroplethMagnitude_cache/docx/ /home/rstudio/workspace/ChoroplethMagnitude_cache/docx

# install and require {renv}, which will install other required packages
RUN R -e "install.packages('renv')"
RUN R -e "require(renv)"

# Make the renv.lock file available to Docker
COPY renv.lock renv.lock

# Restore (install) required packages from renv.lock (which captures specific package versions)
# Specified packages do not include tidyverse packages because these are included in rocker/verse
# options(warn = 2) turns warnings into errors
RUN Rscript -e 'options(warn = 2); renv::restore(packages = c("ggridges", "buildmer", "broom.mixed", "lme4", "insight", "papaja", "magick", "patchwork", "ggpubr", "kableExtra", "emmeans", "knitr", "effectsize", "qwraps2", "report", "MuMIn", "shiny", "markdown"))'
