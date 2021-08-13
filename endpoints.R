#* @apiTitle Exercício API

#* @apiDescription Api em R

#* Retorna a previsão do preço do diamante
#* @param carat número real 0.2 a 5.01 (média 0.7979)
#* @param cut Fair, Good, Very Good, Premium, Ideal
#* @param color D, E, F, G, H I, J
#* @param clarity I1, SI2, SI1, VS2, VS1, VVS2, VVS1, IF
#* @param depth 43 a 79 (média 61.75)
#* @param table 43 a 95 (média 57.46)
#* @param x 0 a 10.74 (média 5.731)
#* @param y 0 a 58.9 (média 5.735)
#* @param z 0 a 31.8 (média 3.539)
#* @post /diamondprice
function(carat,cut,color,clarity,depth,table,x,y,z){
  #library(tidyverse)
  #library(tidymodels)

  diamonds2 <- mutate(diamonds,price_log=log(price))
  tail(diamonds2,n=1)

  #diamonds2 <- add_row(diamonds2,"carat" = as.double(carat),
  #                                 "cut" = cut,
  #                                 "color" = color,
  #                                 "clarity" =clarity,
  #                                 "depth" = as.double(depth),
  #                                 "table" = as.double(table),
  #                                 "x" = as.double(x),
  #                                 "y" = as.double(y),
  #                                 "z" = as.double(z),
  #                                 "price" = integer(1),
  #                                 "price_log" = 0.0)



  #diamonds_final_model<-readRDS('diamonds_final_model.rds')




  #diamonds_com_previsao <- mutate(diamonds2,price_pred = exp(predict(diamonds_final_model, new_data = diamonds2)$.pred))       #### exp para reverter o log



  #return(tail(diamonds_com_previsao,n=1))

  #return(tail(diamonds2,n=1))

}

#* Escreve uma mensagem
#* @param msg A mensagem para escrever
#* @param titulo o titulo
#* @get /echo
function(msg = "", titulo = "") {
  paste0("A mensagem é Teste Claudio!!!: '", msg, "'")
}


#* Retorna a soma de dois números
#* @param a O primeiro número
#* @param b O segundo número
#* @post /sum
function(a, b){
  browser()  # stopwatch
  as.numeric(a) + as.numeric(b)
}

#* Plota um histograma
#* @png
#* @get /hist
function(){
  hist(rnorm(1000))
}

#* Hello world em HTML
#* @serializer html
#* @get /html
function(){
  "<html><h1>hello world</h1></html>"
}


#* @post /user
function(req, id, name) {
  list(
    id = id,
    name = name,
    body = req$body,
    raw = req$bodyRaw
  )
}
