
FROM rstudio/plumber

RUN R -e 'install.packages("tidyverse")'
RUN R -e 'install.packages("tidymodels")'

RUN R -e 'install.packages("ggplot2")'

RUN R -e 'install.packages("vip")'
RUN R -e 'install.packages("jsonlite")'

RUN R -e 'install.packages("workflows")'

RUN R -e 'install.packages("magrittr")'

RUN R -e 'install.packages("recipes")'

RUN R -e 'install.packages("glmnet")'


COPY endpoints.R /

COPY run.R /

COPY diamonds_final_model.rds /

EXPOSE 8080

CMD ["Rscript" , "run.R"]

