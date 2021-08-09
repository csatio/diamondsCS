
<!-- README.md is generated from README.Rmd. Please edit that file -->

# diamondsCS

<!-- badges: start -->
<!-- badges: end -->

**Exercício de Plumber, Docker e GCP**

Claudio Satio Amadatsu - ASN.Rocks

Utilizando base Diamonds

``` r
library(ggplot2)
summary(diamonds)
#>      carat               cut        color        clarity          depth      
#>  Min.   :0.2000   Fair     : 1610   D: 6775   SI1    :13065   Min.   :43.00  
#>  1st Qu.:0.4000   Good     : 4906   E: 9797   VS2    :12258   1st Qu.:61.00  
#>  Median :0.7000   Very Good:12082   F: 9542   SI2    : 9194   Median :61.80  
#>  Mean   :0.7979   Premium  :13791   G:11292   VS1    : 8171   Mean   :61.75  
#>  3rd Qu.:1.0400   Ideal    :21551   H: 8304   VVS2   : 5066   3rd Qu.:62.50  
#>  Max.   :5.0100                     I: 5422   VVS1   : 3655   Max.   :79.00  
#>                                     J: 2808   (Other): 2531                  
#>      table           price             x                y         
#>  Min.   :43.00   Min.   :  326   Min.   : 0.000   Min.   : 0.000  
#>  1st Qu.:56.00   1st Qu.:  950   1st Qu.: 4.710   1st Qu.: 4.720  
#>  Median :57.00   Median : 2401   Median : 5.700   Median : 5.710  
#>  Mean   :57.46   Mean   : 3933   Mean   : 5.731   Mean   : 5.735  
#>  3rd Qu.:59.00   3rd Qu.: 5324   3rd Qu.: 6.540   3rd Qu.: 6.540  
#>  Max.   :95.00   Max.   :18823   Max.   :10.740   Max.   :58.900  
#>                                                                   
#>        z         
#>  Min.   : 0.000  
#>  1st Qu.: 2.910  
#>  Median : 3.530  
#>  Mean   : 3.539  
#>  3rd Qu.: 4.040  
#>  Max.   :31.800  
#> 
```

    #> `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub.
