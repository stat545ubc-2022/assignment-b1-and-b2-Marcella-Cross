#' group.filterNA.summary
#'
#' @param data -> this is the name of the data set
#' @param column -> this is the name of the column/variable of interest
#'
#' @return summary table of counts for each value
#' @export
#'
#' @examples
#'group.filterNA.summary(van_tree_data, street_side_name) #expect summary table of numbers of counts of EVEN vs. ODD
#'group.filterNA.summary(van_tree_data, neighbourhood_name) #expect summary table of numbers of counts of neighbourhoods
#'group.filterNA.summary(van_tree_data, curb) #expect summary table of numbers of counts of neighbourhoods

group.filterNA.summary <- function(data,column) {if(is.numeric(column)) {
  stop('Sorry, but this function works only for non-numeric inputs!\n',
       'You have input an object of class: ', class(!is.numeric(column))[1])}
    data %>%
    group_by_(column)%>%
    drop_na(column) %>%
    summarise(Count = n())}
