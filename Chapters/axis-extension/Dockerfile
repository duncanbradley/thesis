# Add the rocker/verse Docker image for R 4.2.1
# this includes quarto and the latest tidyverse version for R 4.2.1 
FROM rocker/verse:4.2.1
ENV QUARTO_VERSION="1.3.433"
RUN ./install_quarto.sh prerelease

# Add files to container
ADD axis-extension.qmd /home/rstudio/
ADD _quarto.yml /home/rstudio/
ADD axis-extension.bib /home/rstudio/

# Add folders and their contents to container
ADD data/ /home/rstudio/data/
ADD images/ /home/rstudio/images/
ADD axis-extension_cache/html/ /home/rstudio/axis-extension_cache/html

# install and require {renv}, which will install other required packages
RUN R -e "install.packages('renv')"
RUN R -e "require(renv)"

# Make the renv.lock file available to Docker
COPY renv.lock renv.lock

# Restore (install) required packages from renv.lock (which captures specific package versions)
# Specified packages do not include tidyverse packages because these are included in rocker/verse
# options(warn = 2) turns warnings into errors
RUN Rscript -e 'options(warn = 2); renv::restore(packages = c("lme4", "lmerTest", "buildmer", "qwraps2", "emmeans", "effectsize", "papaja", "patchwork", "insight", "knitr", "magick", "ggridges", "report", "MuMIn", "markdown", "shiny", "quarto"))'