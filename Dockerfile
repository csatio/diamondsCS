FROM rstudio/plumber
RUN apt-get update && apt-get install -y  git-core libcurl4-openssl-dev libgit2-dev libicu-dev libssl-dev libxml2-dev make pandoc pandoc-citeproc && rm -rf /var/lib/apt/lists/*
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl', Ncpus = 4)" >> /usr/local/lib/R/etc/Rprofile.site
RUN R -e 'install.packages("tidyverse")'
RUN R -e 'install.packages("tidymodels")'


COPY . .


EXPOSE 8080

CMD ["Rscript" , "R/run.R"]
