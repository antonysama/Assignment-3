setwd("c:/Assignment 3")
getwd()
outcome <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available", stringsAsFactors = F)
#Q1
hist(outcome[,11])#Q1
#Q2
outcome <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available")
#hist(outcome[,11])#Q1
df<-outcome[c(2,7,11,17,23)]
names(df)<-c("name","state", "heart_attack", "heart_failure", "pneumonia")
region<-subset(df, state=="WY")
region$name[which.min(region$heart_attack)]
#Q3
d<-outcome[c(2,7,11,17,23)]
names(d)<-c("name","state", "heart_attack", "heart_failure", "pneumonia")
d[complete.cases(d[ ,3:5]),]
d[ order(d[,"state"], d[,"heart_attack"], d[ ,"name"]),]
d<-split(d,d$state)

best <- function(state, outcome) {
                        read.csv("outcome-of-care-measures.csv", 
                        na.strings = "Not Available", stringsAsFactors = F)
