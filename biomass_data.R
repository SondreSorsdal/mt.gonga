#Git
library(usethis)
use_git_config(
  user.name = "SondreSorsdal", 
  user.email = "sondre.sorsdal@gmail.com.com"
)



use_git()



#packages
library(tidyverse)
library(stringr)
library(readxl)

#Importing data
data_L <- read_excel("C:/Users/Sondre/Documents/BIO 302/biomass2015.xls", sheet = 1)
data_M <- read_excel("C:/Users/Sondre/Documents/BIO 302/biomass2015.xls", sheet = 2)
data_A <- read_excel("C:/Users/Sondre/Documents/BIO 302/biomass2015.xls", sheet = 3)
data_H <- read_excel("C:/Users/Sondre/Documents/BIO 302/biomass2015.xls", sheet = 4)



#Creating new dataframes with relevant columns
Site_L_df <- data_L %>% 
  filter(production > 0) %>% 
  group_by(plot) %>% 
  summarise(total = sum(production))


Site_M_df <- data_M %>% 
  filter(production > 0) %>% 
  group_by(plot) %>% 
  summarise(total = sum(production))

Site_A_df <- data_A %>% 
  filter(production > 0) %>% 
  group_by(plot) %>% 
  summarise(total = sum(production))

Site_H_df <- data_H %>% 
  filter(production > 0) %>% 
  group_by(plot) %>% 
  summarise(total = sum(production))

#Another way of doing above code
#Site_L_df <- 
#  data_L %>% 
#  group_by(plot) %>% 
#  summarise(total_production = sum(production, na.rm = T)) %>% 
# ungroup()


#some new comments to test git
#some more comments
#Test
