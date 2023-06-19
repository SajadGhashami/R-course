library(ggplot2)
library(nycflights13)
library(dplyr)
library(knitr)
# Exploring data frames
View(flights)
glimpse(flights)
kable(airlines)
# $ operator
# the $ operator allows us to extract and then explore a single variable within a data frame.
airlines$name
glimpse(airports)
#  Help files You can bring up help files by adding a ? before the name of a function or data frame
?flights
install.packages("tidyverse")
library(tidyverse)

# tidyverse is the most popular ecosystem for data visualization and wrangling in R
# mpg data frame is found in ggplot2 ( ggplot2::mpg)
# mpg contains observations collected by the US Environmental Protection Agency on 38 models of cars.

# look at the data
mpg
# Creating a scatterplot in ggplot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

# map the colors of your points to the class variable to reveal the class of each car
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# map the size of your points to the class variable to reveal the class of each car
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy,  size = class))

# map the transparency of your points to the class variable to reveal the class of each car
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
# map the shape of your points to the class variable to reveal the class of each car
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# If the value is not mapped (like `blue` here)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# One common problem when creating ggplot2 graphics is to put the + in the wrong place: it has to come at the end of the line, not the start. 
# Using Facets
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)

# Bar chart
# The diamonds dataset comes in ggplot2 and contains information about ~54,000 diamonds, including the price, carat, color, clarity, and cut of each diamond. The chart shows that more diamonds are available with high quality cuts than with low quality cuts.
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

# show percentage
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = stat(prop), group = 1))

#left 
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))

#Right 
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")


