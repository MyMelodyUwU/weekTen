library("tidyverse")

turtles <- read.csv("turtles.csv", header=TRUE)

turtleLm <- lm(carapace ~ eggs, data=turtles)

plot(residuals(turtleLm))
abline(carapace ~ eggs)

turtleAov <- aov(turtleLm)