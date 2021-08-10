


library(httr)

params <- list( carat = 0.3,
                cut = "Good",
                color = "J",
                clarity = "SI1",
                depth = 60.0,
                table = 50.0,
                x = 4.0,
                y = 4.0,
                z = 3.0)

resp <- POST("https://diamondscs0-7faixalpza-uc.a.run.app//diamondPrice", body = params, encode = "json")
content(resp)[[1]]
