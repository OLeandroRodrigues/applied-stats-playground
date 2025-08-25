source("eiras.friendlycolor.R")
trials <- 15
success <- 0:trials
probability <- dbinom(success,trials,0.5)
binomial <- data.frame(success,probability)
names(binomial) <- c("success","FR")
plot(binomial$success, 
     binomial$FR,
     main = paste("Binomial: ",
                  trials, " trials", sep=""),
     ylim = c(0,0.5),
     type="h", 
     col=friendlycolor(8), lwd=3)
points(binomial$success, 
       binomial$FR,
       pch=21, 
       col=friendlycolor(8), 
       bg=friendlycolor(12))
