## extracting values from geom_smooth (or calculating them yourself)


#geom_smooth uses R functions to calculate the smooth line. Check out
#?stat_smooth for more details. You can run these command outside ggplot
#to the values of the smoothed line. e.g.:
  
library(ggplot2)
# Make the plot
ggplot(aes(x = speed, y = dist), data = cars) + geom_point() +
  stat_smooth(method = "loess")
# Get the values
smooth_vals = predict(loess(dist~speed,cars), cars$speed)

#Getting the values for other smoothing functions follows this same recipe.
