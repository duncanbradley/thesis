# Add the rocker/verse Docker image for R 4.2.1
# this includes quarto and the latest tidyverse version for R 4.2.1 
FROM rocker/verse:4.2.1

# Add files to container
ADD dot-plots-axes.qmd /home/rstudio/
ADD _quarto.yml /home/rstudio/
ADD dot-plots-axes.bib /home/rstudio/

# Add folders and their contents to container
ADD data/ /home/rstudio/data/
ADD images/ /home/rstudio/images/
ADD dot-plots-axes_cache/pdf/ /home/rstudio/dot-plots-axes_cache/pdf

# install and require {renv}, which will install other required packages
RUN R -e "install.packages('renv')"
RUN R -e "require(renv)"

# Make the renv.lock file available to Docker
COPY renv.lock renv.lock

# Restore (install) required packages from renv.lock (which captures specific package versions)
# Specified packages do not include tidyverse packages because these are included in rocker/verse
# options(warn = 2) turns warnings into errors
RUN Rscript -e 'options(warn = 2); renv::restore(packages = c("papaja", "ordinal", "patchwork", "magick", "markdown", "shiny", "knitr", "tinytex", "scales", "buildmer", "lme4", "broom", "insight", "kableExtra", "effectsize", "qwraps2", "emmeans", "MuMIn", "report"))'
