#' group.filterNA.summary
#'
#' @param data -> this is the name of the data set
#' @param column -> this is the name of the column/variable of interest
#'
#' @return summary table of counts for each value
#' @export
#'
#' @examples
#'group.filterNA.summary(treedata, "street_side_name") #expect summary table of numbers of counts of EVEN vs. ODD
#'group.filterNA.summary(treedata, "neighbourhood_name") #expect summary table of numbers of counts of neighbourhoods
#'group.filterNA.summary(treedata, "curb") #expect summary table of numbers of counts of neighbourhoods

group.filterNA.summary <- function(data,column) {if(is.numeric(column)) {
  stop('Sorry, but this function works only for non-numeric inputs!\n',
       'You have input an object of class: ', class(!is.numeric(column))[1])}
    data %>%
    dplyr::group_by_("column")%>%
    tidyr::drop_na("column") %>%
    dplyr::summarise(Count = n())}
