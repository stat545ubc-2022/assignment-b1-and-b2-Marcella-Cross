
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
#The install process is below - it is a public reposity
devtools::install_github("stat545ubc-2022/assignment-b1-and-b2-Marcella-Cross/group.filterNA.summary")
#> Skipping install of 'group.filterNA.summary' from a github remote, the SHA1 (9c5c91e2) has not changed since last install.
#>   Use `force = TRUE` to force installation
library(group.filterNA.summary)
```

To run the tests and function you need the following libraries loaded:

``` r
#library(devtools)
#library(datateachr)
#library(dplyr)
#library(tidyverse)
#library(testthat)
#library(digest)
#library(magrittr)
```
