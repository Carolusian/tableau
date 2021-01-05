library(tidyverse)
library(packcircles) # generate x,y for data set

pack_countries <- function (df) {
  packing <- circleProgressiveLayout(df$population)
  result <- bind_cols(df, packing) %>%
    select(country, population, x, y)
  return(result)
} 

getOutputSchema <- function() {
  return (data.frame (
    country = prep_string(),
    population = prep_int(),
    x = prep_decimal(),
    y = prep_decimal()));
}
