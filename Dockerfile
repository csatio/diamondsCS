FROM rstudio/plumber

COPY endpoints.R /

COPY run.R /

COPY diamonds_final_model.ods /

EXPOSE 8080

CMD ["Rscript" , "run.R"]
