


library(httr)
library(jsonlite)

params <- list( carat = 0.4,
                cut = "Good",
                color = "J",
                clarity = "VS1",
                depth = 60.0,
                table = 50.0,
                x = 5.0,
                y = 4.0,
                z = 3.0)
resp <- POST("https://diamondcs1-7faixalpza-uc.a.run.app/diamond", body = params, encode = "json")
content(resp)[[1]]
content(resp)[[1]]$price_pred


params <- list( msg="Athos funcionou!", titulo="API no R")
resp <- GET("https://diamondcs1-7faixalpza-uc.a.run.app/echo", query = params, encode = "json")
content(resp)[[1]]


params <- list( a=3, b=7)
resp <- POST("https://diamondcs1-7faixalpza-uc.a.run.app/sum", body = params, encode = "json")
content(resp)[[1]]



