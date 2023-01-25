

#' creates histogram
#'
#' @param bhai_use_this_data pass data
#' @param Bhai_use_this_colour pass the colour
#' @param Bhai_use_this_binwidth  pass the bin-width here
#' @param bhai_use_this_column  pass column to be used here
#'
#' @return  it returns the graph drawn
#' @export
#'
#' @examples bhai_create_histogram(bhai_use_this_data=cars,
#' bhai_use_this_column=dist,
#' Bhai_use_this_colour='red',
#' Bhai_use_this_binwidth = 3 )
#'
bhai_create_histogram<- function(bhai_use_this_data,
                                 bhai_use_this_column,
                                 Bhai_use_this_colour="#69b3a2",
                                 Bhai_use_this_binwidth=5){
  ggplot2::ggplot(bhai_use_this_data, ggplot2::aes(x={{bhai_use_this_column}})) +
  ggplot2::geom_histogram( binwidth=Bhai_use_this_binwidth,
                             fill=Bhai_use_this_colour,
                             color="green",
                             alpha=0.9)
}



#' creates scatterplot
#'
#' @param bhai_use_this_data pass the data frame
#' @param xData  data on x axis
#' @param yData  data on y axis
#' @param bhai_use_this_category_for_colour pass the colour
#'
#' @return it returns the graph drawn
#' @export
#'
#' @examples bhai_create_scatterplot(bhai_use_this_data=iris,
#' xData=Sepal.Length,
#' yData = Sepal.Width,
#' bhai_use_this_category_for_colour=Species)
#'

#'
bhai_create_scatterplot<- function(bhai_use_this_data,
                                   xData,
                                   yData
                                   ,bhai_use_this_category_for_colour){
  ggplot2::ggplot(bhai_use_this_data, ggplot2::aes(x={{xData}}, y={{yData}},
                                                   color={{bhai_use_this_category_for_colour}})) +
    ggplot2::geom_point()
}





#' creates boxplot
#'
#' @param bhai_use_this_data  pass the data
#' @param xData  data on x axis
#' @param yData  data on y axis
#' @param bhai_use_this_category_for_colour category for colour
#'
#' @return it returns the graph drawn
#' @export
#'
#' @examples bhai_create_boxplot(bhai_use_this_data = iris,
#' xData =  Species,
#' yData = Sepal.Length
#' ,bhai_use_this_category_for_colour=Species)
#'
bhai_create_boxplot<- function(bhai_use_this_data,
                               xData,
                               yData,
                               bhai_use_this_category_for_colour){
  ggplot2::ggplot(bhai_use_this_data, ggplot2::aes(x={{xData}}, y={{yData}},
                                                   fill={{bhai_use_this_category_for_colour}})) +
    ggplot2::geom_boxplot()


}




#' oluşturmak Histogram
#'
#' @param kanka_use_this_data  pass data
#' @param kanka_use_this_column pass column
#' @param kanka_use_this_renk pass renk
#' @param kanka_use_this_binwidth pass binwidth
#'
#' @return returns graph
#' @export
#'
#' @examples kanka_create_histogram (cars,
#' dist,
#''red',
#' 3 )
kanka_create_histogram <- function(kanka_use_this_data,
                                       kanka_use_this_column,
                                       kanka_use_this_renk="#69b3a2",
                                       kanka_use_this_binwidth=5){

  bhai_create_histogram(kanka_use_this_data,
                        {{kanka_use_this_column}},
                        kanka_use_this_renk,
                        kanka_use_this_binwidth
                       )

}


#' oluşturmak Scatterplot
#'
#' @param kanka_use_this_data pass data
#' @param xData               data on x axis
#' @param kanka_use_this_category_for_renk pass colour
#' @param yData               data on y axis
#'
#' @return returns graph
#' @export
#'
#' @examples kanka_create_scatterplot(iris,
#' Sepal.Length,
#' Sepal.Width,
#' Species)
kanka_create_scatterplot<- function(kanka_use_this_data,
                                   xData,
                                   yData
                                   ,kanka_use_this_category_for_renk){

  bhai_create_scatterplot(kanka_use_this_data,
                          {{xData}},
                          {{yData}},
                          {{kanka_use_this_category_for_renk}})

}



#' oluşturmak Boxplot
#'
#' @param kanka_use_this_data pass data
#' @param xData               data on x-axis
#' @param kanka_use_this_category_for_renk pass category
#' @param yData               data on y-axis
#'
#' @return returns graph
#' @export
#'
#' @examples kanka_create_boxplot(iris,
#' xData =  Species,
#' yData = Sepal.Length,
#' Species)
kanka_create_boxplot<- function(kanka_use_this_data,
                               xData,
                               yData,
                               kanka_use_this_category_for_renk) {


bhai_create_boxplot(kanka_use_this_data,
                                 {{xData}},
                                 {{yData}},
                                 {{kanka_use_this_category_for_renk}})


}
