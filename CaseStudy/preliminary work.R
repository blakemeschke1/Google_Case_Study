library(tidyverse)
library(fs)
library(ggplot2)
dailyActivity_merged <- read.csv(file = 'dailyActivity_merged.csv')
dailyCalories_merged<- read.csv(file="dailyCalories_merged.csv")
dailyIntensities_merged<- read.csv(file="dailyIntensities_merged.csv")
dailySteps_merged<- read.csv(file="dailySteps_merged.csv")
heartrate_seconds_merged<- read.csv(file="heartrate_seconds_merged.csv")
hourlyCalories_merged<- read.csv(file="hourlyCalories_merged.csv")
hourlyIntensities_merged<- read.csv(file="hourlyIntensities_merged.csv")
hourlySteps_merged<- read.csv(file="hourlySteps_merged.csv")
minuteCaloriesNarrow_merged<- read.csv(file="minuteCaloriesNarrow_merged.csv")
minuteCaloriesWide_merged<- read.csv(file="minuteCaloriesWide_merged.csv")
minuteIntensitiesNarrow_merged<- read.csv(file="minuteIntensitiesNarrow_merged.csv")
minuteIntensitiesWide_merged<- read.csv(file="minuteIntensitiesWide_merged.csv")
minuteMETsNarrow_merged<- read.csv(file="minuteMETsNarrow_merged.csv")
minuteSleep_merged<- read.csv(file="minuteSleep_merged.csv")
minuteStepsNarrow_merged<- read.csv(file="minuteStepsNarrow_merged.csv")
minuteStepsWide_merged<- read.csv(file="minuteStepsWide_merged.csv")
sleepDay_merged<- read.csv(file="sleepDay_merged.csv")
weightLogInfo_merged<- read.csv(file="weightLogInfo_merged.csv")

sum(is.na(dailyActivity_merged)) 
sum(is.na(dailyCalories_merged))
sum(is.na(dailyIntensities_merged))
sum(is.na(dailySteps_merged))
sum(is.na(heartrate_seconds_merged))
sum(is.na(hourlyCalories_merged))
sum(is.na(hourlyIntensities_merged))
sum(is.na(hourlySteps_merged))
sum(is.na(minuteCaloriesNarrow_merged))
sum(is.na(minuteCaloriesWide_merged))
sum(is.na(minuteIntensitiesNarrow_merged))
sum(is.na(minuteIntensitiesWide_merged))
sum(is.na(minuteMETsNarrow_merged))
sum(is.na(minuteSleep_merged))
sum(is.na(minuteStepsNarrow_merged))
sum(is.na(minuteStepsWide_merged))
sum(is.na(sleepDay_merged))
sum(is.na(weightLogInfo_merged))
weightLogInfo_merged_v2<-subset(weightLogInfo_merged, select=-c(Fat))#### weightLogInfo_merged_v2 this takes out the NAs
sum(is.na(weightLogInfo_merged_v2))



min(dailyActivity_merged$ActivityDate)
max(dailyActivity_merged$ActivityDate)
#############################

max(dailyActivity_merged$TotalSteps)
min(dailyActivity_merged$TotalSteps)
mean(dailyActivity_merged$TotalSteps)
(filter Id= 1503960366(dailyActivity_merged$TotalSteps))


ggplot(dailyActivity_merged, aes(x=TotalSteps,y=Calories))+ geom_point()

x<-dailyActivity_merged$TotalSteps
y<-dailyActivity_merged$Calories
cor(x,y)