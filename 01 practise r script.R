obj <- 10/3

#install.packages("tidyverse")


# Practice session 01 ----

## Values ----

1, "Lucerne", TRUE 

## Objects ----
 
x <- c(10/3, 2, 1.42)

## Functions ----
mean (x, na.rm = TRUE)

library("tidyverse")
view(mpg)

## Example 1 ----

mpg_rec <- select(mpg, displ, hwy)

mpg %>% select(displ, hwy)

mpg %>% filter(year == 1999)

## Where and how to save files ----

getwd()

here : : here ()

#install.packages("here")



library("here")

#Get wd:
here::here()

load(file = here::here("data", "dat_orig.Rdata"))

load(file = here::here("data", "dat_orig.Rdata"))
