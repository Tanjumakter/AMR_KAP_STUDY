# load packages

library(tidyverse)
library(gt)
library(gtsummary)
library(easystats)

install.packages("easystats")


data <- readRDS("D:/CHIRAL BD/homework/AMR_KAP_STUDY/Data/AMR_KAP_Data2_Processed.rds")

# correlation between knowledge score

data |> 
  select(12:23) |> 
  correlation() |> 
  summary(redundant = T) |>
  plot(ggsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/figures/Figure1_Knowledge_score.jpeg"))


  
# correlation between Attitude score

data |> 
  select(26:35) |> 
  correlation() |> 
  summary(redundant = T) |>
  plot(ggsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/figures/Figure2_Attitude_score.jpeg"))


# correlation between practice score

data |> 
  select(38:43) |> 
  correlation() |> 
  summary(redundant = T) |>
  plot(ggsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/figures/Figure3_Practice_score.jpeg"))
  
  



