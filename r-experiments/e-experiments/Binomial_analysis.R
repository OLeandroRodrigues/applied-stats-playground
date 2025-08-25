invisible(Sys.setlocale("LC_CTYPE", "pt_BR.UTF-8"))
invisible(Sys.setlocale("LC_ALL", "pt_BR.UTF-8"))

options(warn=-1)
suppressMessages(library(conf, warn.conflicts=FALSE))
suppressMessages(library(confintr, warn.conflicts=FALSE))
suppressMessages(library(DescTools, warn.conflicts=FALSE))
suppressMessages(library(EnvStats, warn.conflicts=FALSE))
suppressMessages(library(epiR, warn.conflicts=TRUE))
suppressMessages(library(fmsb, warn.conflicts=FALSE))
suppressMessages(library(ggplot2, warn.conflicts=FALSE))
suppressMessages(library(gplots, warn.conflicts=FALSE))
suppressMessages(library(knitr, warn.conflicts=FALSE))
suppressMessages(library(labelled, warn.conflicts=FALSE))
suppressMessages(library(MVN, warn.conflicts=FALSE))
suppressMessages(library(openxlsx, warn.conflicts=FALSE))
suppressMessages(library(readxl, warn.conflicts=FALSE))
suppressMessages(library(reshape2, warn.conflicts=FALSE))
suppressMessages(library(Rmisc, warn.conflicts=FALSE))
suppressMessages(library(RVAideMemoire, warn.conflicts=FALSE))

source("eiras.friendlycolor.R")
trials <- 20
success <- 0:trials
probability <- dbinom(success,trials,0.5)
binomial <- data.frame(success,probability)
names(binomial) <- c("success","FR")
plot(binomial$success, 
     binomial$FR,
     main = paste("Binomial: ",
                  trials, " success", sep=""),
     ylim = c(0,0.5),
     type="h", 
     col=friendlycolor(8), lwd=3)
points(binomial$success, 
       binomial$FR,
       pch=21, 
       col=friendlycolor(8), 
       bg=friendlycolor(12))


