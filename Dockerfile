FROM r-base:4.0.0

# Instalando dependências
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libxml2-dev \
    libz-dev \
        git-core \
        libssl-dev \
        libcurl4-gnutls-dev \
    && rm -rf /var/lib/apt/lists/*

RUN R -e 'install.packages("tidyverse")'
RUN R -e 'install.packages("tidymodels")'

COPY endpoints.R /

COPY run.R /

COPY diamonds_final_model.rds /

EXPOSE 8080

CMD ["Rscript" , "run.R"]
