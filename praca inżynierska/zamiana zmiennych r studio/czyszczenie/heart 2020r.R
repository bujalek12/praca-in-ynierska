df = read.csv('C:/Users/DELL/Desktop/praca inż/rstudio/czyszczenie/heart_2020_cleaned.csv')

library(tidyverse)
df%>%
  glimpse()
library(dplyr)


table(complete.cases(df))
library(mice)
md.pattern(df)

df$HeartDisease = factor(df$HeartDisease,
                                    levels = c('No', 'Yes'),
                                    labels = c(0, 1))

df$Smoking = factor(df$Smoking,
                         levels = c('No', 'Yes'),
                         labels = c(0, 1))

df$AlcoholDrinking = factor(df$AlcoholDrinking,
                         levels = c('No', 'Yes'),
                         labels = c(0, 1))
df$Stroke = factor(df$Stroke,
                         levels = c('No', 'Yes'),
                         labels = c(0, 1))

df$DiffWalking = factor(df$DiffWalking,
                         levels = c('No', 'Yes'),
                         labels = c(0, 1))
df$Sex = factor(df$Sex,
                levels = c('Female', 'Male'),
                labels = c(0, 1))
df$AgeCategory = factor(df$AgeCategory,
                        levels = c('18-24', '25-29', '30-34', '35-39', '40-44', '45-49', '50-54', '55-59', '60-64', '65-69', '70-74', '75-79', '80 or older'),
                        labels = c(1,2,3,4,5,6,7,8,9,10,11,12,13))

df$Diabetic = factor(df$Diabetic,
                         levels = c('No', 'Yes','No, borderline diabetes','Yes (during pregnancy)'),
                         labels = c(0, 2,1,0))

df$PhysicalActivity = factor(df$PhysicalActivity,
                         levels = c('No', 'Yes'),
                         labels = c(0, 1))
df$GenHealth = factor(df$GenHealth,
                          levels = c('Very good', 'Poor', 'Fair', 'Good', 'Excellent'),
                          labels = c(2, 5,4,3,1))
df$Asthma = factor(df$Asthma,
                         levels = c('No', 'Yes'),
                         labels = c(0, 1))

df$KidneyDisease = factor(df$KidneyDisease,
                         levels = c('No', 'Yes'),
                         labels = c(0, 1))
df$SkinCancer = factor(df$SkinCancer,
                         levels = c('No', 'Yes'),
                         labels = c(0, 1))

df$Race = factor(df$Race,
                                  levels = c('Black', 'Hispanic', 'Other','White','American Indian/Alaskan Native','Asian'),
                                  labels = c(0,1,3,4,5,6))



write.csv(df,file = "heart2020.csv",row.names = F,sep = ",")
