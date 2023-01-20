

#' created histogram
#'
#' @param bhai_use_this_data pass data
#' @param use_this_column pass the column
#' @param Bhai_use_this_colour pass the colour
#'
#' @return
#' @export
#'
#' @examples
bhai_create_histogram<- function(bhai_use_this_data,use_this_column,Bhai_use_this_colour="#e9ecef"){
  ggplot2::ggplot(bhai_use_this_data, ggplot2::aes(x={{use_this_column}})) +
    ggplot2::geom_histogram(fill="#69b3a2",color=Bhai_use_this_colour, alpha=0.9)
}



#' creates scatterplot
#'
#' @param bhai_use_this_data pass the data frame
#' @param xData  data on x axis
#' @param yData  data on y axis
#' @param bhai_use_this_category_for_colour pass the colour
#'
#' @return
#' @export
#'
#' @examples
bhai_create_scatterplot<- function(bhai_use_this_data,xData,yData
                                   ,bhai_use_this_category_for_colour){
  ggplot2::ggplot(bhai_use_this_data, ggplot2::aes(x={{xData}}, y={{yData}},
                                                   color={{bhai_use_this_category_for_colour}})) +
    ggplot2::geom_point()
}





#' created boxplot
#'
#' @param bhai_use_this_data  pass the data
#' @param xData  data on x axis
#' @param yData  data on y axis
#' @param bhai_use_this_category_for_colour category for colour
#'
#' @return
#' @export
#'
#' @examples
bhai_create_boxplot<- function(bhai_use_this_data,xData,yData
                                   ,bhai_use_this_category_for_colour){
  ggplot2::ggplot(bhai_use_this_data, ggplot2::aes(x={{xData}}, y={{yData}},
                                                   fill={{bhai_use_this_category_for_colour}})) +
    ggplot2::geom_boxplot()


}
