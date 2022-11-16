#' group.filterNA.summary
#'
#' @param data -> this is the name of the data set
#' @param column -> this is the name of the column/variable of interest
#' @description This package takes a column and data frame input and removes all NA values from that column. Next, it creates a summary table with the count of each value in the column. This function is used when you are interested in a count summary table of values within one column of your data.
#' @return Summary table of counts for each value
#' @author Marcella Cross - marcella.cross@botany.ubc.ca - ORCID id: 0000-0002-3866-6970
#' @export
#'
#' @examples
#'group.filterNA.summary(treedata, "street_side_name") #expect summary table with EVEN vs. ODD
#'group.filterNA.summary(treedata, "neighbourhood_name") #expect summary of neighbourhoods
#'group.filterNA.summary(treedata, "curb") #expect summary of curb yes vs. no

group.filterNA.summary <- function(data,column) {if(is.numeric("column")) {
  stop('Sorry, but this function works only for non-numeric inputs!\n',
       'You have input an object of class: ', class(!is.numeric("column"))[1])}
    data %>%
    dplyr::group_by(dplyr::all_of(column)) %>%
    tidyr::drop_na(dplyr::all_of(column)) %>%
    dplyr::summarise(Count = dplyr::n())}
