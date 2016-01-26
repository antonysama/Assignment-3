setwd("c:/Assignment 3")
getwd()
outcome <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available", stringsAsFactors = F)
#hist(outcome[,11])#Q1
d<-outcome[c(2,7,11,17,23)]
names(d)<-c("name","state", "heart_attack", "heart_failure", "pneumonia")
d[ order(d[,"state"], d[,"heart_attack"], d[ ,"name"]),]
best <- function(state, outcome) {
                             read.csv("outcome-of-care-measures.csv", 
                                   na.strings = "Not Available", stringsAsFactors = F)