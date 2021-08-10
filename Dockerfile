FROM rocker/tidyverse

COPY . .

EXPOSE 8000/tcp
CMD ["R/run.R"]
