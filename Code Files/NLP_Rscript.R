library(readr)
library(tidyverse)
#Keywords used/ Sisältö:  


speech_female <- read_csv("C:/Users/User/Downloads/results(7).csv")
speech_male <- read_csv("C:/Users/User/Downloads/results(8).csv")



speech_female$gender <- 'Female'
speech_male$gender <- 'Male'


speech_civilwar <- rbind(speech_female, speech_male)


speech_civilwar <- speech_civilwar %>%
  separate(date, into = c("Day(Speech)", "Month(Speech)", "Year(Speech)"), sep = "\\.") %>% 
  separate(speaker, into = c("Name", "Years"), sep = " \\(") %>%
  separate(Years, into = c("Birth", "Death"), sep = "-") %>%
  mutate(
    `Day(Speech)` = as.numeric(`Day(Speech)`),
    `Month(Speech)` =  as.numeric(`Month(Speech)`),
    `Year(Speech)` = as.numeric(`Year(Speech)`),
    Birth = as.numeric(Birth),
    Death = ifelse(Death == ")", NA, as.numeric(gsub("\\)", "", Death))),
    `Age(Speech)` = `Year(Speech)` - Birth,
    `Age(Group_Speech)` = cut(`Age(Speech)`, 
                    breaks = c(25, 35, 45, 55, 65, Inf), 
                    labels = c("25-35", "36-45", "46-55", "56-65", "66+")),
    Period = cut(`Year(Speech)`, 
                    breaks = c(1917, 1919, 1938, 1946, 1990, 2007,Inf), 
                    labels = c("Civil_War(+/-1y)","1920-1938", "WW2", "1947-1990", "1991-2007", "2008-Present")),
    
    
  )



write.csv(speech_civilwar,'C:/Users/User/Downloads/speech_civilwar.csv')


