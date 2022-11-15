
<!-- README.md is generated from README.Rmd. Please edit that file -->

# assignment-b1-and-b2-Marcella-Cross

The goal of assignment-b1 is to create a useful function and create
examples and tests for that function.

I chose to create a function called “group.filterNA.summary()” that will
allow the user to group by a column in their dataset, filter out its NA
values, and then create a summary table output of the counts of each
value occurance.

The input is in the form (data,“column”). This refers to the name of
your data set followed by the name of the variable for which you need
the summary table. The name of the column should be put into quotations.

This folder also includes the license information.

Assignment B2 creates a package called “group.filterNA.summary()” which
takes a column and data frame input and removes all NA values from that
column. Next, it creates a summary table with the count of each value in
the column.

To Install this package:

``` r
library(group.filterNA.summary)
```

To run the tests and function you need the following libraries loaded:

``` r
library(devtools)
#> Loading required package: usethis
library(datateachr)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
library(tidyverse)
#> ── Attaching packages
#> ───────────────────────────────────────
#> tidyverse 1.3.2 ──
#> ✔ ggplot2 3.3.6     ✔ purrr   0.3.4
#> ✔ tibble  3.1.8     ✔ stringr 1.4.1
#> ✔ tidyr   1.2.1     ✔ forcats 0.5.2
#> ✔ readr   2.1.3     
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
library(testthat)
#> 
#> Attaching package: 'testthat'
#> 
#> The following object is masked from 'package:purrr':
#> 
#>     is_null
#> 
#> The following objects are masked from 'package:readr':
#> 
#>     edition_get, local_edition
#> 
#> The following object is masked from 'package:tidyr':
#> 
#>     matches
#> 
#> The following object is masked from 'package:dplyr':
#> 
#>     matches
#> 
#> The following object is masked from 'package:devtools':
#> 
#>     test_file
library(digest)
library(magrittr)
#> 
#> Attaching package: 'magrittr'
#> 
#> The following objects are masked from 'package:testthat':
#> 
#>     equals, is_less_than, not
#> 
#> The following object is masked from 'package:purrr':
#> 
#>     set_names
#> 
#> The following object is masked from 'package:tidyr':
#> 
#>     extract
```
