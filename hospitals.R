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
region<-subset(df, state=="WY")#WY is the region of interest
region$name[which.min(region$heart_attack)]#heart_attack is the disease of interest
#Q3
outcome <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available")
d<-outcome[c(2,7,11,17,23)]
names(d)<-c("name","state", "heart_attack", "heart_failure", "pneumonia")
region<-subset(d, state=="WY")#WY is the region of interest
#region[complete.cases(region),]
head(region[ order(region[,"state"], region[,"heart_attack"], region[ ,"name"]),], n=2)#n is the number of interest

best <- function(state, outcome) {
                        read.csv("outcome-of-care-measures.csv", 
                        na.strings = "Not Available", stringsAsFactors = F)
