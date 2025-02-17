FROM rocker/verse
MAINTAINER Eric Zhang <eyzhang@unc.edu>
RUN R -e "install.packages(c('ggplot2', 'readr', 'tidyverse', 'gridExtra', 'shiny', 'data.table', 'DT', 'ggfortify', 'stats','pROC', 'reshape2'))"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN adduser rstudio sudo
RUN apt update -y && apt install -y\
        ne\
        sqlite3\
	texlive-base\
	texlive-binaries\
        texlive-latex-base\
	texlive-latex-recommended\
	texlive-pictures\
        texlive-latex-extra\
	python3-pip
